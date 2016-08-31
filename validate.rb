#!/usr/bin/env ruby_executable_hooks

require 'csvlint/cli'
require 'pp'
require 'json'

class PMHC < Csvlint::Cli

  attr_accessor :results

  include Csvlint::ErrorCollector

  def validate
    v = verify()

    if v == true
      puts "Data is valid"
    else
      results = "{\"results\": [" + @results.join(",") + "]}"
      json_results = JSON.parse(results)

      json_results["results"].each do |result|
        # Only report errors for data files, not specification files
        if result["validation"]["file"] =~ /data/
          if result["validation"]["state"] == "invalid"
            puts result["validation"]["file"] + " is invalid."
            pp result["validation"]["errors"]
          end

          if result["validation"]["warnings"].length > 0
            puts result["validation"]["file"] + " has warnings."
            pp result["validation"]["warnings"]
          end
        end
      end

      # Annoyingly csvlint includes errors for foreign key references on the
      # final file to be processed
      last_result = json_results["results"].last
      if last_result["validation"]["state"] == "invalid"
        last_result["validation"]["errors"].each do |error|
          if error["type"] == "unmatched_foreign_key_reference"
            pp error
          end
        end
      end
    end
  end

  private
    def verify(source = nil)
      valid = true
      @results = []
      schema_file = "pmhc-metadata.json"
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

      if /#{error.type}/ =~ "unmatched_foreign_key_reference"
        h[:content] = error.content,
        h[:constraints] = Hash[error.constraints.map {|k,v| [k.underscore, v] }]
      end

      h
    end

    def validate_pmhc(validator, csv)
      data = validator.data

      if csv =~ /episodes/ then validate_episodes( validator, data )
      elsif csv =~ /service-contacts/ then validate_service_contacts( validator, data )
      elsif csv =~ /sdq/ then validate_sdq( validator, data )
      end
    end

    def validate_episodes(validator, data)
      # Client must consent
      header = data.shift
      client_consent_index = header.index("client_consent")

      current_line = 1
      data.each do |row|
        # Would be nice if this wasn't hard coded. If we could get the value from client-consent.csv
        # Leave this exercise to someone with more Ruby knowldege than me. - JW
        unless row[client_consent_index] == "1"
         validator.build_errors(:invalid_consent, :episode, current_line, client_consent_index, row[client_consent_index])
        end
        current_line += 1
      end

    end

    def validate_service_contacts(validator, data)
      # If Service Contact Participants == Individual Client, Client Participation
      # Indicator must = 1
      header = data.shift
      participation_indicator_index = header.index( "service_contact_participation_indicator" )
      participants_index = header.index( "service_contact_participants" )

      current_line = 1
      data.each do |row|
        if row[participants_index] == "1"
          unless row[participation_indicator_index] == "1"
           validator.build_errors(:invalid_participation_indicator, :service_contact, current_line, participation_indicator_index, row[participation_indicator_index])
          end
        end
        current_line += 1
      end
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

      header = data.shift
      version_index = header.index("sdq_version")
      sdq_item1_index = header.index("sdq_item1")

      current_line = 1
      data.each do |row|
        valid_items = versions[row[version_index]]

        for i in 1..42
          unless valid_items.include?(i)
            item_index = header.index("sdq_item#{i}")
            unless row[item_index] == "9"
              validator.build_errors(:invalid_sdq_item_included, :sdq, current_line, item_index, row[item_index])
            end
          end
        end
        current_line += 1
      end

      # If using item scores, totals must be missing, if using totals, item scores must be missing
    end
end

if ARGV == ["help"]
  PMHC.start(["help"])
else
  PMHC.start(ARGV.unshift("validate"))
end
