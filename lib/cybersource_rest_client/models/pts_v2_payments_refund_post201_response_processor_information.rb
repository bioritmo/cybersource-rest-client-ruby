=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsRefundPost201ResponseProcessorInformation
    # Processor transaction ID.  This value identifies the transaction on a host system. This value is supported only for Moneris. It contains this information:   - Terminal used to process the transaction  - Shift during which the transaction took place  - Batch number  - Transaction number within the batch  You must store this value. If you give the customer a receipt, display this value on the receipt.  Example For the value 66012345001069003:   - Terminal ID = 66012345  - Shift number = 001  - Batch number = 069  - Transaction number = 003 
    attr_accessor :transaction_id

    # Name of the Japanese acquirer that processed the transaction. Returned only for CCS (CAFIS) and JCN Gateway. Please contact the CyberSource Japan Support Group for more information. 
    attr_accessor :forwarded_acquirer_code

    # Identifier that was assigned to you by your acquirer.  This value must be printed on the receipt.  This field is supported only on **American Express Direct**, **FDC Nashville Global**, and **SIX**. 
    attr_accessor :merchant_number

    # For most processors, this is the error message sent directly from the bank. Returned only when the processor returns this value.  Important Do not use this field to evaluate the result of the authorization. 
    attr_accessor :response_code

    attr_accessor :ach_verification

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'transaction_id' => :'transactionId',
        :'forwarded_acquirer_code' => :'forwardedAcquirerCode',
        :'merchant_number' => :'merchantNumber',
        :'response_code' => :'responseCode',
        :'ach_verification' => :'achVerification'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'transaction_id' => :'String',
        :'forwarded_acquirer_code' => :'String',
        :'merchant_number' => :'String',
        :'response_code' => :'String',
        :'ach_verification' => :'PtsV2PaymentsPost201ResponseProcessorInformationAchVerification'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'forwardedAcquirerCode')
        self.forwarded_acquirer_code = attributes[:'forwardedAcquirerCode']
      end

      if attributes.has_key?(:'merchantNumber')
        self.merchant_number = attributes[:'merchantNumber']
      end

      if attributes.has_key?(:'responseCode')
        self.response_code = attributes[:'responseCode']
      end

      if attributes.has_key?(:'achVerification')
        self.ach_verification = attributes[:'achVerification']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@transaction_id.nil? && @transaction_id.to_s.length > 18
        invalid_properties.push('invalid value for "transaction_id", the character length must be smaller than or equal to 18.')
      end

      if !@forwarded_acquirer_code.nil? && @forwarded_acquirer_code.to_s.length > 32
        invalid_properties.push('invalid value for "forwarded_acquirer_code", the character length must be smaller than or equal to 32.')
      end

      if !@merchant_number.nil? && @merchant_number.to_s.length > 15
        invalid_properties.push('invalid value for "merchant_number", the character length must be smaller than or equal to 15.')
      end

      if !@response_code.nil? && @response_code.to_s.length > 10
        invalid_properties.push('invalid value for "response_code", the character length must be smaller than or equal to 10.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@transaction_id.nil? && @transaction_id.to_s.length > 18
      return false if !@forwarded_acquirer_code.nil? && @forwarded_acquirer_code.to_s.length > 32
      return false if !@merchant_number.nil? && @merchant_number.to_s.length > 15
      return false if !@response_code.nil? && @response_code.to_s.length > 10
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if !transaction_id.nil? && transaction_id.to_s.length > 18
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be smaller than or equal to 18.'
      end

      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] forwarded_acquirer_code Value to be assigned
    def forwarded_acquirer_code=(forwarded_acquirer_code)
      if !forwarded_acquirer_code.nil? && forwarded_acquirer_code.to_s.length > 32
        fail ArgumentError, 'invalid value for "forwarded_acquirer_code", the character length must be smaller than or equal to 32.'
      end

      @forwarded_acquirer_code = forwarded_acquirer_code
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_number Value to be assigned
    def merchant_number=(merchant_number)
      if !merchant_number.nil? && merchant_number.to_s.length > 15
        fail ArgumentError, 'invalid value for "merchant_number", the character length must be smaller than or equal to 15.'
      end

      @merchant_number = merchant_number
    end

    # Custom attribute writer method with validation
    # @param [Object] response_code Value to be assigned
    def response_code=(response_code)
      if !response_code.nil? && response_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "response_code", the character length must be smaller than or equal to 10.'
      end

      @response_code = response_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          transaction_id == o.transaction_id &&
          forwarded_acquirer_code == o.forwarded_acquirer_code &&
          merchant_number == o.merchant_number &&
          response_code == o.response_code &&
          ach_verification == o.ach_verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [transaction_id, forwarded_acquirer_code, merchant_number, response_code, ach_verification].hash
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
