=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsReversalsPost201ResponseAuthorizationInformation
    # The authorization code returned by the processor.
    attr_accessor :approval_code

    # Reply flag for the original transaction.
    attr_accessor :reason_code

    # Flag indicating whether a full authorization reversal was successfully submitted.  Possible values: - Y: The authorization reversal was successfully submitted. - N: The authorization reversal was not successfully submitted. You must send a credit request for a refund.  This field is supported only for **FDC Nashville Global**. 
    attr_accessor :reversal_submitted

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'approval_code' => :'approvalCode',
        :'reason_code' => :'reasonCode',
        :'reversal_submitted' => :'reversalSubmitted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'approval_code' => :'String',
        :'reason_code' => :'String',
        :'reversal_submitted' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'approvalCode')
        self.approval_code = attributes[:'approvalCode']
      end

      if attributes.has_key?(:'reasonCode')
        self.reason_code = attributes[:'reasonCode']
      end

      if attributes.has_key?(:'reversalSubmitted')
        self.reversal_submitted = attributes[:'reversalSubmitted']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@approval_code.nil? && @approval_code.to_s.length > 6
        invalid_properties.push('invalid value for "approval_code", the character length must be smaller than or equal to 6.')
      end

      if !@reason_code.nil? && @reason_code.to_s.length > 50
        invalid_properties.push('invalid value for "reason_code", the character length must be smaller than or equal to 50.')
      end

      if !@reversal_submitted.nil? && @reversal_submitted.to_s.length > 1
        invalid_properties.push('invalid value for "reversal_submitted", the character length must be smaller than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@approval_code.nil? && @approval_code.to_s.length > 6
      return false if !@reason_code.nil? && @reason_code.to_s.length > 50
      return false if !@reversal_submitted.nil? && @reversal_submitted.to_s.length > 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] approval_code Value to be assigned
    def approval_code=(approval_code)
      if !approval_code.nil? && approval_code.to_s.length > 6
        fail ArgumentError, 'invalid value for "approval_code", the character length must be smaller than or equal to 6.'
      end

      @approval_code = approval_code
    end

    # Custom attribute writer method with validation
    # @param [Object] reason_code Value to be assigned
    def reason_code=(reason_code)
      if !reason_code.nil? && reason_code.to_s.length > 50
        fail ArgumentError, 'invalid value for "reason_code", the character length must be smaller than or equal to 50.'
      end

      @reason_code = reason_code
    end

    # Custom attribute writer method with validation
    # @param [Object] reversal_submitted Value to be assigned
    def reversal_submitted=(reversal_submitted)
      if !reversal_submitted.nil? && reversal_submitted.to_s.length > 1
        fail ArgumentError, 'invalid value for "reversal_submitted", the character length must be smaller than or equal to 1.'
      end

      @reversal_submitted = reversal_submitted
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          approval_code == o.approval_code &&
          reason_code == o.reason_code &&
          reversal_submitted == o.reversal_submitted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [approval_code, reason_code, reversal_submitted].hash
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
