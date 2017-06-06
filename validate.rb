#!/usr/bin/env ruby_executable_hooks

require 'csvlint/cli'
require 'pp'
require 'json'
require 'date'

class PMHC < Csvlint::Cli

  attr_accessor :results, :validators

  include Csvlint::ErrorCollector

  def validate(schema_dir=nil)
    v = verify(schema_dir)

    results = "{\"results\": [" + @results.join(",") + "]}"

    puts results
  end

  private
    def verify(schema_dir = nil)
      valid = true
      @results = []
      @validators = Hash.new

      schema_file = (schema_dir.nil? || schema_dir.empty? ? "" : schema_dir + "/") + "pmhc-metadata.json"
      @schema = get_schema(schema_file)
      valid &= fetch_schema_tables(@schema, {})

      return valid
    end

    def fetch_schema_tables(schema, options)
      valid = true
      unless schema.instance_of? Csvlint::Csvw::TableGroup
        return_error "No CSV data to validate."
      end
      schema.tables.keys.each do |source|
        begin
          source = source.sub("file:","")
          source = File.new( source )
        rescue Errno::ENOENT
          return_error "#{source} not found"
        end unless source =~ /^http(s)?/
        valid &= validate_csv(source, schema, options[:dump], nil)
      end

      return valid
    end

    def validate_csv(source, schema, dump, json)
      if source.class == String
        csv = source
      elsif source.class == File
        csv = source.path
      else
        csv = "CSV"
      end

#      validator = Csvlint::Validator.new( source, {}, schema, { lambda: ->(validator) { validate_pmhc( validator, csv ) } } )

      validator = Csvlint::Validator.new( source, {}, schema, {} )

      # Only do extra pmhc checks on data files, not specification files.
      if csv =~ /data/
        if validator.valid?
          validate_pmhc( validator, csv )
        end
      end

      json = {
        validation: {
          file: csv,
          state: validator.valid? ? "valid" : "invalid",
          errors: validator.errors.map { |v| hashify(v) },
          warnings: validator.warnings.map { |v| hashify(v) },
          info: validator.info_messages.map { |v| hashify(v) },
        }
      }.to_json

      @results.push(json)

      return validator.valid?
    end

    def hashify(error)
      h = {
        type: error.type,
        category: error.category,
        row: error.row,
        col: error.column
      }

      if error.column && @schema && @schema.class == Csvlint::Schema && @schema.fields[error.column - 1] != nil
        field = @schema.fields[error.column - 1]
        h[:header] = field.name
        h[:constraints] = Hash[field.constraints.map {|k,v| [k.underscore, v] }]
      end

      if /^(unmatched_foreign_key_reference|duplicate_key|multiple_matched_rows)$/ =~ error.type
        h[:content] = error.content
      end

      if /^(unmatched_foreign_key_reference|multiple_matched_rows)$/ =~ error.type
        h[:constraints] = Hash[error.constraints.map {|k,v| [k.underscore, v] }]
      end

      h
    end

    def validate_pmhc(validator, csv)
      data = validator.data

      if    csv =~ /organisations/
        validate_organisations( validator, data )
        @validators['organisations'] = validator
      elsif csv =~ /clients/
        validate_clients( validator, data )
        @validators['clients'] = validator
      elsif csv =~ /episodes/
        validate_episodes( validator, data )
        @validators['episodes'] = validator
      elsif csv =~ /service-contacts/
        validate_service_contacts( validator, data )
        @validators['service_contacts'] = validator
      elsif csv =~ /practitioners/
        validate_practitioners( validator, data )
        @validators['practitioners'] = validator
      elsif csv =~ /k10p/
        validate_k10p( validator, data )
        @validators['k10p'] = validator
      elsif csv =~ /k5/
        validate_k5( validator, data )
        @validators['k5'] = validator
      elsif csv =~ /sdq/
        validate_sdq( validator, data )
        @validators['sdq'] = validator
      end
    end

    def validate_organisations(validator, data)
      # pass, nothing to check here yet.
    end

    def validate_clients(validator, data)
      header = data.shift
      dob_index = header.index("date_of_birth")
      prof_english_index = header.index("prof_english")
      main_lang_index = header.index("main_lang_at_home")

      current_line = 1
      data.each do |row|
        # Date of birth cannot be in the future
        dob = row[dob_index]
        if is_date_in_future( dob )
          validator.build_errors(:future_date_not_allowed, :client, current_line+1,
             dob_index+1, dob)
        end

        # Proficiency in Spoken English
        # Response 0 is only allowed when the person's age is under 5 or
        # for people who speak only English
        prof_english = row[prof_english_index]
        dob_date = Date.new(dob[:year], dob[:month], dob[:day])
        age = age_in_completed_years( dob_date )
        main_lang_at_home = row[main_lang_index]
        english = "1201"
        if age != nil
          if prof_english == "0"
            unless age < 5 or main_lang_at_home == english
              validator.build_errors(:invalid_proficiency_in_spoken_english, :client,
                current_line+1, prof_english_index+1, prof_english)
            end
          else
            if age < 5 or main_lang_at_home == english
              validator.build_errors(:invalid_proficiency_in_spoken_english, :client,
                current_line+1, prof_english_index+1, prof_english)
            end
          end
        end

        current_line += 1
      end

      data.unshift(header)
    end

    def validate_episodes(validator, data)
      header = data.shift
      referrer_organisation_type_index = header.index("referrer_organisation_type")
      referrer_profession_index = header.index("referrer_profession")
      episode_end_date_index = header.index("episode_end_date")
      referral_date_index = header.index("referral_date")
      episode_completion_status_index = header.index("episode_completion_status")
      income_source_index = header.index("income_source")
      client_key_index = header.index("client_key")

      current_line = 1
      data.each do |row|
        # Referrer Organisation Type == 'N/A - Self referral' should only be selected
        # where referrer profession is also 'Self referral'
        if ( row[referrer_organisation_type_index] == "98" and row[referrer_profession_index] != "98" ) or
          ( row[referrer_organisation_type_index] != "98" and row[referrer_profession_index] == "98" )
          validator.build_errors(:invalid_self_referral, :episode, current_line+1,
            referrer_organisation_type_index+1, row[referrer_organisation_type_index])
        end

        # Episode end date cannot be in the future
        eed = row[episode_end_date_index]
        unless is_date_missing(eed)
          if is_date_in_future( eed )
            validator.build_errors(:future_date_not_allowed, :episode, current_line+1,
              episode_end_date_index+1, eed)
          end

          # Where an episode has ended a completion status should be recorded
          if row[episode_completion_status_index] == nil
            validator.build_errors(:invalid_episode_completion_status, :episode,
              current_line+1, episode_completion_status_index+1,
              row[episode_completion_status_index])
          end
        end

        # If a completion status is recorded episode end date should be recorded
        unless row[episode_completion_status_index] == nil
          if is_date_missing(eed)
            validator.build_errors(:invalid_episode_completion_statusy, :episode,
              current_line+1, episode_completion_status_index+1, row[episode_completion_status_index])
          end
        end

        # Referral date cannot be in the future
        rd = row[referral_date_index]
        if is_date_in_future( rd )
          validator.build_errors(:future_date_not_allowed, :episode, current_line+1,
            referral_date_index+1, rd)
        end

        # Episode end date should be after referral date
        if eed != nil and rd != nil
          ee_date = Date.new( eed[:year], eed[:month], eed[:day] )
          r_date = Date.new( rd[:year], rd[:month], rd[:day] )
          if ( r_date <=> ee_date ) > 0
            validator.build_errors(:invalid_episode_end_date, :episode, current_line+1,
              episode_end_date_index+1, eed)
          end
        end

        client_validator = nil
        unless @validators['clients']  == nil
          client_validator = @validators['clients']
          client_data = client_validator.data
          client_header = client_data.shift
          client_client_key_index = client_header.index("client_key")
          date_of_birth_index = client_header.index("date_of_birth")

          client_current_line = 1
          client_data.each do |client_row|
            if client_row[client_client_key_index] == row[client_key_index]
              # Source of Cash Income is not applicable where a person is aged less
              # than 16 years
              dob = client_row[date_of_birth_index]
              unless dob == nil
                dob_date = Date.new(dob[:year], dob[:month], dob[:day])
                age = age_in_completed_years( dob_date )
                unless age == nil
                  if row[income_source_index] == "0"
                    if age >= 16
                      validator.build_errors(:invalid_source_of_cash_income, :episode,
                        current_line+1, income_source_index+1, row[income_source_index])
                    end
                  else
                    if age < 16
                      validator.build_errors(:invalid_source_of_cash_income, :episode,
                        current_line+1, income_source_index+1, row[income_source_index])
                    end
                  end
                end
              end
            end

            client_current_line += 1
          end

          client_data.unshift(client_header)
        end

        current_line += 1
      end

      data.unshift(header)
    end

    def validate_service_contacts(validator, data)
      header = data.shift
      participation_indicator_index = header.index( "service_contact_participation_indicator" )
      participants_index = header.index( "service_contact_participants" )
      service_contact_date_index = header.index( "service_contact_date")
      modality_index = header.index( "service_contact_modality")
      venue_index = header.index( "service_contact_venue")
      postcode_index = header.index( "service_contact_postcode")
      service_contact_final_index = header.index( "service_contact_final")
      episode_key_index = header.index( "episode_key")
      contact_type_index = header.index("service_contact_type")
      duration_index = header.index("service_contact_duration")
      no_show_index = header.index("service_contact_no_show")

      current_line = 1
      data.each do |row|
        # If Service Contact Participants == Individual Client, Client Participation
        # Indicator must = 1
        if row[participants_index] == "1"
          unless row[participation_indicator_index] == "1"
            validator.build_errors(:invalid_participation_indicator, :service_contact,
              current_line+1, participation_indicator_index+1, row[participation_indicator_index])
          end
        end

        # Service contact date cannot be in the future
        scd = row[service_contact_date_index]
        if is_date_in_future( scd )
          validator.build_errors(:future_date_not_allowed, :service_contact, current_line+1,
            service_contact_date_index+1, scd)
        end

        # Service contact modality / venue / postcode
        if row[modality_index] == "1"
          # If 'Face to Face' is selected:
          #   - A value other than 'Not applicable' must be selected for
          #     service contact venue.
          #   - A valid Australian postcode must be entered for service contact
          #     postcode
          if row[venue_index] == "98"
            validator.build_errors(:invalid_service_contact_venue, :service_contact,
              current_line+1, venue_index+1, row[venue_index])
          end
        else
          # If 'Face to Face' is not selected:
          #   - Service contact postcode should be 9999
          unless row[postcode_index] == "9999"
            validator.build_errors(:extraneous_service_contact_postcode, :service_contact,
              current_line+1, postcode_index+1, row[postcode_index])
          end
        end

        # Service contact modality + no_show
        if row[modality_index] == "0"
          # If 'No service contact occurred' is selected,
          # the session must be a no show
          unless row[no_show_index] == "1"
            validator.build_errors(:invalid_service_contact_modality_no_show, :service_contact, current_line+1,
              modality_index+1, row[modality_index])
          end
        end

        # Service contact duration + no_show
        if row[duration_index] == "0"
          # If 'No service contact occurred' is selected, the session must be a no show
          unless row[no_show_index] == "1"
            validator.build_errors(:invalid_service_contact_duration_no_show, :service_contact, current_line+1,
              duration_index+1, row[duration_index])
          end
        end

        # Service contact type + no_show
        if row[contact_type_index] == "0"
          # If 'No service contact occurred' is selected, the session must be a no show
          unless row[no_show_index] == "1"
            validator.build_errors(:invalid_service_contact_type_no_show, :service_contact, current_line+1,
              contact_type_index+1, row[contact_type_index])
          end
        end

        episode_validator = nil
        unless @validators['episodes']  == nil
          episode_validator = @validators['episodes']
          episode_data = episode_validator.data
          episode_header = episode_data.shift
          episode_episode_key_index = episode_header.index("episode_key")
          episode_end_date_index = episode_header.index("episode_end_date")
          episode_completion_status_index = episode_header.index("episode_completion_status")

          episode_current_line = 1
          episode_data.each do |episode_row|
            if episode_row[episode_episode_key_index] == row[episode_key_index]
              # Where service contact final is recorded as 1 (No further services planned):
              #  - the date of the final service contact should be recorded as
              #    the episode end date
              #  - the episode completion status should be recorded using one of the
              #    treatment concluded responses
              if row[service_contact_final_index] == "1"
                unless episode_row[episode_end_date_index] == scd
                  validator.build_errors(:invalid_service_contact_final, :service_contact,
                    current_line+1, service_contact_final_index+1, row[service_contact_final_index])
                end
              end

              eed = episode_row[episode_end_date_index]
              unless eed == nil
                unless scd == nil
                  episode_end_date = Date.new( eed[:year], eed[:month], eed[:day] )
                  sc_date = Date.new( scd[:year], scd[:month], scd[:day] )

                  if ( sc_date <=> episode_end_date ) > 0
                    validator.build_errors(:episode_already_concluded, :service_contact,
                      current_line+1, service_contact_date_index+1, row[service_contact_date_index])
                  end
                end
              end
            end

            episode_current_line += 1
          end

          episode_data.unshift(episode_header)
        end

        current_line += 1
      end

      data.unshift(header)
    end

    def validate_practitioners(validator, data)
      header = data.shift
      yob_index = header.index("practitioner_year_of_birth")

      org_hash = Hash.new()
      org_data = @validators["organisations"].data
      org_header = org_data.shift
      org_data.each do |org| 
        org_hash[org[org_header.index('organisation_path')]] = org[org_header.index('organisation_type')]
      end

      data.each_with_index do |row,line|
        # Year of birth cannot be in the future
        yob = row[yob_index]
        if is_year_in_future( yob )
          validator.build_errors(:future_year_not_allowed, :practitioner, line+2,
            yob_index+1, yob)
        end

        org_type = org_hash[row[header.index('organisation_path')]]
        if row[header.index('atsi_cultural_training')] == '3'
          unless (org_type == '8' or ['1','2','3'].include? row[header.index('practitioner_atsi_status')])
            validator.build_errors(:invalid_cultural_training, :practitioner, line+2, header.index('atsi_cultural_training'), data[header.index('atsi_cultural_training')])
          end
        end
      end


      data.unshift(header)
    end

    def validate_k10p(validator, data)
      measure = "k10p"
      scales = [ "k10p_score" ]
      items = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

      validate_kessler( validator, data, measure, scales, items )
    end

    def validate_k5( validator, data )
      measure = "k5"
      scales = [ "k5_score" ]
      items = [ 1, 2, 3, 4, 5 ]

      validate_kessler( validator, data, measure, scales, items )
    end

    def validate_kessler(validator, data, measure, scales, items )
      header = data.shift

      measure_date_index = header.index("measure_date")
      episode_key_index = header.index("episode_key")

      current_line = 1
      data.each do |row|
        # Must use either item scores or total scores, not both
        using_item_scores = 0
        for i in items
          item_index = header.index("#{measure}_item#{i}")
          unless row[item_index] == "9"
            using_item_scores = 1
          end
        end

        using_total_scores = 0
        scales.each do |scale|
          item_index = header.index(scale)
          unless row[item_index] == nil
            using_total_scores = 1
            break
          end
        end

        if using_item_scores == 1 and using_total_scores == 1
          validator.build_errors(:item_scores_and_total_scores_used, "#{measure}",
            current_line+1, item_index+1, row[item_index])
        end

        # Measure date cannot be in the future
        md = row[measure_date_index]
        measure_date = nil
        unless md == nil
          measure_date = Date.new( md[:year], md[:month], md[:day] )
          if is_date_in_future( md )
            validator.build_errors(:future_date_not_allowed, "#{measure}", current_line+1,
              measure_date_index+1, md)
          end
        end

        episode_validator = nil
        unless @validators['episodes']  == nil
          episode_validator = @validators['episodes']
          episode_data = episode_validator.data
          episode_header = episode_data.shift
          episode_episode_key_index = episode_header.index("episode_key")
          referral_date_index = episode_header.index("referral_date")

          # Measure date must be after referral date
          episode_current_line = 1
          episode_data.each do |episode_row|
            if episode_row[episode_episode_key_index] == row[episode_key_index]
              rd = episode_row[referral_date_index]
              unless ( rd == nil and measure_date == nil )
                referral_date = Date.new( rd[:year], rd[:month], rd[:day] )
                if ( measure_date <=> referral_date ) < 0
                  validator.build_errors(:invalid_measure_date, "#{measure}", current_line+1,
                    measure_date_index+1, md)
                end
              end
              break
            end
          end

          episode_data.unshift(episode_header)
        end

        current_line += 1
      end

      data.unshift(header)
    end

    def validate_sdq(validator, data)
      versions = {
        "PC101" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,36,37,38],
        "PC201" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,34,35],
        "PY101" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,36,37,38],
        "PY201" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,34,35],
        "YR101" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,39,40,41,42],
        "YR201" => [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,28,29,30,31,32,33,39,40,41,42]
      }
      sdq_scales = [ "sdq_emotional_symptoms", "sdq_conduct_problem", "sdq_hyperactivity",
                     "sdq_peer_problem", "sdq_prosocial", "sdq_total", "sdq_impact"]

      header = data.shift
      version_index = header.index("sdq_version")
      measure_date_index = header.index("measure_date")
      episode_key_index = header.index("episode_key")

      current_line = 1
      data.each do |row|
        valid_items = versions[row[version_index]]

        # Must use either item scores or total scores, not both
        using_total_scores = sdq_scales.any? { |scale| row[header.index(scale)] != nil }

        # Error should be thrown through foreign key checking if the version is
        # not valid. We don't want to double up on error messages.
        unless valid_items == nil
          # Check the items provided are valid for the sdq version
          using_item_scores = false
          for i in 1..42
            item_index = header.index("sdq_item#{i}")
            if valid_items.include?(i)
              unless row[item_index] == "9"
                using_item_scores = true
              end
            else
              unless row[item_index] == "8" or (row[item_index] == "9" and using_total_scores)
                validator.build_errors(:invalid_sdq_item_included, :sdq,
                  current_line+1, item_index+1, row[item_index])
              end
            end
          end
        end

        if using_item_scores and using_total_scores
          validator.build_errors(:item_scores_and_total_scores_used, :sdq,
            current_line+1, item_index, row[item_index])
        end

        # Measure date cannot be in the future
        md = row[measure_date_index]
        measure_date = nil
        unless md == nil
          measure_date = Date.new( md[:year], md[:month], md[:day] )
          if is_date_in_future( md )
            validator.build_errors(:future_date_not_allowed, :sdq, current_line+1,
              measure_date_index+1, md)
          end
        end

        episode_validator = nil
        unless @validators['episodes']  == nil
          episode_validator = @validators['episodes']
          episode_data = episode_validator.data
          episode_header = episode_data.shift
          episode_episode_key_index = episode_header.index("episode_key")
          referral_date_index = episode_header.index("referral_date")

          episode_current_line = 1
          episode_data.each do |episode_row|
            if episode_row[episode_episode_key_index] == row[episode_key_index]
              rd = episode_row[referral_date_index]
              unless ( rd == nil and measure_date == nil )
                referral_date = Date.new( rd[:year], rd[:month], rd[:day] )
                if ( measure_date <=> referral_date ) < 0
                  validator.build_errors(:invalid_measure_date, :sdq, current_line+1,
                    measure_date_index+1, md)
                end
              end
              break
            end
          end

          episode_data.unshift(episode_header)
        end

        current_line += 1
      end

      data.unshift(header)
    end

    def age_in_completed_years( dob )
      # Difference in years, less one if you have not had a birthday this year.
      missing = Date.new(9999,9,9)
      today = Date.today

      if ( dob <=> missing ) == 0
        return nil
      else
        age = today.year - dob.year
        age = age - 1 if (
           dob.month >  today.month or
          (dob.month >= dob.month and dob.day > today.day )
        )

        return age
      end
    end

    def is_date_missing( date )
        return (date == nil or date[:year] == 9999)
    end

    def is_date_in_future( date )
        return false if is_date_missing(date)
        date_obj = Date.new( date[:year], date[:month], date[:day] )
        return Date.today < date_obj
    end

    def is_year_in_future( year )
        today = Date.today

        unless year == nil
          if ( year[:year] > today.year ) and year[:year] != 9999
            return true
          end
        end

        return false
    end
end

if ARGV == ["help"]
  PMHC.start(["help"])
else
  PMHC.start(ARGV.unshift("validate"))
end
