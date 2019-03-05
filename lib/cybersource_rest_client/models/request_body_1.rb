=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class RequestBody1
    # Valid CyberSource organizationId
    attr_accessor :organization_id

    # Valid Report Definition Name
    attr_accessor :report_definition_name

    attr_accessor :report_fields

    attr_accessor :report_mime_type

    # The frequency for which subscription is created.
    attr_accessor :report_frequency

    attr_accessor :report_name

    attr_accessor :timezone

    # The hour at which the report generation should start. It should be in hhmm format.
    attr_accessor :start_time

    # This is the start day if the frequency is WEEKLY or MONTHLY. The value varies from 1-7 for WEEKLY and 1-31 for MONTHLY. For WEEKLY 1 means Sunday and 7 means Saturday. By default the value is 1.
    attr_accessor :start_day

    # List of filters to apply
    attr_accessor :report_filters

    attr_accessor :report_preferences

    # Valid GroupName
    attr_accessor :group_name

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'organization_id' => :'organizationId',
        :'report_definition_name' => :'reportDefinitionName',
        :'report_fields' => :'reportFields',
        :'report_mime_type' => :'reportMimeType',
        :'report_frequency' => :'reportFrequency',
        :'report_name' => :'reportName',
        :'timezone' => :'timezone',
        :'start_time' => :'startTime',
        :'start_day' => :'startDay',
        :'report_filters' => :'reportFilters',
        :'report_preferences' => :'reportPreferences',
        :'group_name' => :'groupName'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'organization_id' => :'String',
        :'report_definition_name' => :'String',
        :'report_fields' => :'Array<String>',
        :'report_mime_type' => :'String',
        :'report_frequency' => :'String',
        :'report_name' => :'String',
        :'timezone' => :'String',
        :'start_time' => :'String',
        :'start_day' => :'Integer',
        :'report_filters' => :'Hash<String, Array<String>>',
        :'report_preferences' => :'ReportingV3ReportsIdGet200ResponseReportPreferences',
        :'group_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'organizationId')
        self.organization_id = attributes[:'organizationId']
      end

      if attributes.has_key?(:'reportDefinitionName')
        self.report_definition_name = attributes[:'reportDefinitionName']
      end

      if attributes.has_key?(:'reportFields')
        if (value = attributes[:'reportFields']).is_a?(Array)
          self.report_fields = value
        end
      end

      if attributes.has_key?(:'reportMimeType')
        self.report_mime_type = attributes[:'reportMimeType']
      end

      if attributes.has_key?(:'reportFrequency')
        self.report_frequency = attributes[:'reportFrequency']
      end

      if attributes.has_key?(:'reportName')
        self.report_name = attributes[:'reportName']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'startTime')
        self.start_time = attributes[:'startTime']
      end

      if attributes.has_key?(:'startDay')
        self.start_day = attributes[:'startDay']
      end

      if attributes.has_key?(:'reportFilters')
        if (value = attributes[:'reportFilters']).is_a?(Hash)
          self.report_filters = value
        end
      end

      if attributes.has_key?(:'reportPreferences')
        self.report_preferences = attributes[:'reportPreferences']
      end

      if attributes.has_key?(:'groupName')
        self.group_name = attributes[:'groupName']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      #if !@organization_id.nil? && @organization_id !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #invalid_properties.push('invalid value for "organization_id", must conform to the pattern /[a-zA-Z0-9-_]+/.')
      #end

      if @report_definition_name.nil?
        invalid_properties.push('invalid value for "report_definition_name", report_definition_name cannot be nil.')
      end

      if @report_definition_name.to_s.length > 80
        invalid_properties.push('invalid value for "report_definition_name", the character length must be smaller than or equal to 80.')
      end

      if @report_definition_name.to_s.length < 1
        invalid_properties.push('invalid value for "report_definition_name", the character length must be great than or equal to 1.')
      end

      #if @report_definition_name !~ Regexp.new(/[a-zA-Z0-9-]+/)
        #invalid_properties.push('invalid value for "report_definition_name", must conform to the pattern /[a-zA-Z0-9-]+/.')
      #end

      if @report_fields.nil?
        invalid_properties.push('invalid value for "report_fields", report_fields cannot be nil.')
      end

      if @report_mime_type.nil?
        invalid_properties.push('invalid value for "report_mime_type", report_mime_type cannot be nil.')
      end

      if @report_frequency.nil?
        invalid_properties.push('invalid value for "report_frequency", report_frequency cannot be nil.')
      end

      if @report_name.nil?
        invalid_properties.push('invalid value for "report_name", report_name cannot be nil.')
      end

      if @report_name.to_s.length > 128
        invalid_properties.push('invalid value for "report_name", the character length must be smaller than or equal to 128.')
      end

      if @report_name.to_s.length < 1
        invalid_properties.push('invalid value for "report_name", the character length must be great than or equal to 1.')
      end

      #if @report_name !~ Regexp.new(/[a-zA-Z0-9-_ ]+/)
        #invalid_properties.push('invalid value for "report_name", must conform to the pattern /[a-zA-Z0-9-_ ]+/.')
      #end

      if @timezone.nil?
        invalid_properties.push('invalid value for "timezone", timezone cannot be nil.')
      end

      if @start_time.nil?
        invalid_properties.push('invalid value for "start_time", start_time cannot be nil.')
      end

      if !@start_day.nil? && @start_day > 31
        invalid_properties.push('invalid value for "start_day", must be smaller than or equal to 31.')
      end

      if !@start_day.nil? && @start_day < 1
        invalid_properties.push('invalid value for "start_day", must be greater than or equal to 1.')
      end

      #if !@group_name.nil? && @group_name !~ Regexp.new(/[a-zA-Z0-9-_ ]+/)
        #invalid_properties.push('invalid value for "group_name", must conform to the pattern /[a-zA-Z0-9-_ ]+/.')
      #end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      #return false if !@organization_id.nil? && @organization_id !~ Regexp.new(/[a-zA-Z0-9-_]+/)
      return false if @report_definition_name.nil?
      return false if @report_definition_name.to_s.length > 80
      return false if @report_definition_name.to_s.length < 1
      #return false if @report_definition_name !~ Regexp.new(/[a-zA-Z0-9-]+/)
      return false if @report_fields.nil?
      return false if @report_mime_type.nil?
      report_mime_type_validator = EnumAttributeValidator.new('String', ['application/xml', 'text/csv'])
      return false unless report_mime_type_validator.valid?(@report_mime_type)
      return false if @report_frequency.nil?
      report_frequency_validator = EnumAttributeValidator.new('String', ['DAILY', 'WEEKLY', 'MONTHLY'])
      return false unless report_frequency_validator.valid?(@report_frequency)
      return false if @report_name.nil?
      return false if @report_name.to_s.length > 128
      return false if @report_name.to_s.length < 1
      #return false if @report_name !~ Regexp.new(/[a-zA-Z0-9-_ ]+/)
      return false if @timezone.nil?
      return false if @start_time.nil?
      return false if !@start_day.nil? && @start_day > 31
      return false if !@start_day.nil? && @start_day < 1
      #return false if !@group_name.nil? && @group_name !~ Regexp.new(/[a-zA-Z0-9-_ ]+/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] organization_id Value to be assigned
    def organization_id=(organization_id)
      #if !organization_id.nil? && organization_id !~ Regexp.new(/[a-zA-Z0-9-_]+/)
        #fail ArgumentError, 'invalid value for "organization_id", must conform to the pattern /[a-zA-Z0-9-_]+/.'
      #end

      @organization_id = organization_id
    end

    # Custom attribute writer method with validation
    # @param [Object] report_definition_name Value to be assigned
    def report_definition_name=(report_definition_name)
      if report_definition_name.nil?
        fail ArgumentError, 'report_definition_name cannot be nil'
      end

      if report_definition_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "report_definition_name", the character length must be smaller than or equal to 80.'
      end

      if report_definition_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "report_definition_name", the character length must be great than or equal to 1.'
      end

      #if report_definition_name !~ Regexp.new(/[a-zA-Z0-9-]+/)
        #fail ArgumentError, 'invalid value for "report_definition_name", must conform to the pattern /[a-zA-Z0-9-]+/.'
      #end

      @report_definition_name = report_definition_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_mime_type Object to be assigned
    def report_mime_type=(report_mime_type)
      validator = EnumAttributeValidator.new('String', ['application/xml', 'text/csv'])
      unless validator.valid?(report_mime_type)
        fail ArgumentError, 'invalid value for "report_mime_type", must be one of #{validator.allowable_values}.'
      end
      @report_mime_type = report_mime_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_frequency Object to be assigned
    def report_frequency=(report_frequency)
      validator = EnumAttributeValidator.new('String', ['DAILY', 'WEEKLY', 'MONTHLY'])
      unless validator.valid?(report_frequency)
        fail ArgumentError, 'invalid value for "report_frequency", must be one of #{validator.allowable_values}.'
      end
      @report_frequency = report_frequency
    end

    # Custom attribute writer method with validation
    # @param [Object] report_name Value to be assigned
    def report_name=(report_name)
      if report_name.nil?
        fail ArgumentError, 'report_name cannot be nil'
      end

      if report_name.to_s.length > 128
        fail ArgumentError, 'invalid value for "report_name", the character length must be smaller than or equal to 128.'
      end

      if report_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "report_name", the character length must be great than or equal to 1.'
      end

      #if report_name !~ Regexp.new(/[a-zA-Z0-9-_ ]+/)
        #fail ArgumentError, 'invalid value for "report_name", must conform to the pattern /[a-zA-Z0-9-_ ]+/.'
      #end

      @report_name = report_name
    end

    # Custom attribute writer method with validation
    # @param [Object] start_day Value to be assigned
    def start_day=(start_day)
      if !start_day.nil? && start_day > 31
        fail ArgumentError, 'invalid value for "start_day", must be smaller than or equal to 31.'
      end

      if !start_day.nil? && start_day < 1
        fail ArgumentError, 'invalid value for "start_day", must be greater than or equal to 1.'
      end

      @start_day = start_day
    end

    # Custom attribute writer method with validation
    # @param [Object] group_name Value to be assigned
    def group_name=(group_name)
      #if !group_name.nil? && group_name !~ Regexp.new(/[a-zA-Z0-9-_ ]+/)
        #fail ArgumentError, 'invalid value for "group_name", must conform to the pattern /[a-zA-Z0-9-_ ]+/.'
      #end

      @group_name = group_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          organization_id == o.organization_id &&
          report_definition_name == o.report_definition_name &&
          report_fields == o.report_fields &&
          report_mime_type == o.report_mime_type &&
          report_frequency == o.report_frequency &&
          report_name == o.report_name &&
          timezone == o.timezone &&
          start_time == o.start_time &&
          start_day == o.start_day &&
          report_filters == o.report_filters &&
          report_preferences == o.report_preferences &&
          group_name == o.group_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [organization_id, report_definition_name, report_fields, report_mime_type, report_frequency, report_name, timezone, start_time, start_day, report_filters, report_preferences, group_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
