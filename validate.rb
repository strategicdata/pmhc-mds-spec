#!/usr/bin/env ruby_executable_hooks

require 'csvlint/cli'
require 'pp'

class PMHC < Csvlint::Cli

  attr_accessor :results

  include Csvlint::ErrorCollector

  def validate
    v = verify()

    if v == true
      puts "Data is valid"
    else
      puts @results
    end
  end


  private
    def verify(source = nil)
      valid = true
      @results = ""
      schema_file = "pmhc-metadata.json"
      @schema = get_schema(schema_file)
      valid &= fetch_schema_tables(@schema, {})

      # valid = validate_csv(source, @schema, nil, nil)
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

      #puts json

      @results += json

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

      #puts csv

      if csv =~ /episodes/ then validate_episodes( validator, data )
      elsif csv =~ /service-contacts/ then validate_service_contacts( validator, data )
      elsif csv =~ /sdq/ then validate_sdq( validator, data )
      end
    end

    def validate_episodes(validator, data)
      #puts "schema.tables"
      #validator.schema.tables.keys.each do |source|
      #  if source =~ /consent/
      #    pp validator.schema.tables[source]
      #  end
      #end

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
      end
    end

    def validate_sdq(validator, data)
      puts "validate_sdq"
#      pp data
    end
end

if ARGV == ["help"]
  PMHC.start(["help"])
else
  PMHC.start(ARGV.unshift("validate"))
end
