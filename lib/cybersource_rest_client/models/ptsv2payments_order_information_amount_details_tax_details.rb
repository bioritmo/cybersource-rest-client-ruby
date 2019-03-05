=begin
#CyberSource Flex API

#Simple PAN tokenization service

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsOrderInformationAmountDetailsTaxDetails
    # This is used to determine what type of tax related data should be inclued under _taxDetails_ object.  Possible values:  - alternate  - local  - national  - vat 
    attr_accessor :type

    # Please see below table for related decription based on above _type_ field.  | type      | type description | |-----------|--------------------| | alternate | Total amount of alternate tax for the order. | | local     | Sales tax for the order. | | national  | National tax for the order. | | vat       | Total amount of VAT or other tax included in the order. | | other     | Other tax. | 
    attr_accessor :amount

    # Rate of VAT or other tax for the order.  Example 0.040 (=4%)  Valid range: 0.01 to 0.99 (1% to 99%, with only whole percentage values accepted; values with additional decimal places will be truncated) 
    attr_accessor :rate

    # Type of tax being applied to the item. Possible values:  Below values are used by **RBS WorldPay Atlanta**, **FDC Nashville Global**, **Litle**   - 0000: unknown tax type  - 0001: federal/national sales tax  - 0002: state sales tax  - 0003: city sales tax  - 0004: local sales tax  - 0005: municipal sales tax  - 0006: other tax  - 0010: value-added tax (VAT)  - 0011: goods and services tax (GST)  - 0012: provincial sales tax  - 0013: harmonized sales tax  - 0014: Quebec sales tax (QST)  - 0020: room tax  - 0021: occupancy tax  - 0022: energy tax  - 0023: city tax  - 0024: county or parish sales tax  - 0025: county tax  - 0026: environment tax  - 0027: state and local sales tax (combined)  - Blank: Tax not supported on line item. 
    attr_accessor :code

    # Your tax ID number to use for the alternate tax amount. Required if you set alternate tax amount to any value, including zero. You may send this field without sending alternate tax amount. 
    attr_accessor :tax_id

    # The tax is applied. Valid value is `true` or `false`.
    attr_accessor :applied

    # Code for exemption from sales and use tax. This field is a pass-through, which means that CyberSource does not verify the value or modify it in any way before sending it to the processor.  For possible values, see Exemption Status Values. See Numbered Elements.  Important For information about using this field, see Item-Level Tax Fields. 
    attr_accessor :exemption_code

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
        :'type' => :'type',
        :'amount' => :'amount',
        :'rate' => :'rate',
        :'code' => :'code',
        :'tax_id' => :'taxId',
        :'applied' => :'applied',
        :'exemption_code' => :'exemptionCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'amount' => :'String',
        :'rate' => :'String',
        :'code' => :'String',
        :'tax_id' => :'String',
        :'applied' => :'BOOLEAN',
        :'exemption_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'rate')
        self.rate = attributes[:'rate']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'taxId')
        self.tax_id = attributes[:'taxId']
      end

      if attributes.has_key?(:'applied')
        self.applied = attributes[:'applied']
      end

      if attributes.has_key?(:'exemptionCode')
        self.exemption_code = attributes[:'exemptionCode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@amount.nil? && @amount.to_s.length > 13
        invalid_properties.push('invalid value for "amount", the character length must be smaller than or equal to 13.')
      end

      if !@rate.nil? && @rate.to_s.length > 6
        invalid_properties.push('invalid value for "rate", the character length must be smaller than or equal to 6.')
      end

      if !@code.nil? && @code.to_s.length > 4
        invalid_properties.push('invalid value for "code", the character length must be smaller than or equal to 4.')
      end

      if !@tax_id.nil? && @tax_id.to_s.length > 15
        invalid_properties.push('invalid value for "tax_id", the character length must be smaller than or equal to 15.')
      end

      if !@exemption_code.nil? && @exemption_code.to_s.length > 1
        invalid_properties.push('invalid value for "exemption_code", the character length must be smaller than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ['alternate', 'local', 'national', 'vat'])
      return false unless type_validator.valid?(@type)
      return false if !@amount.nil? && @amount.to_s.length > 13
      return false if !@rate.nil? && @rate.to_s.length > 6
      return false if !@code.nil? && @code.to_s.length > 4
      return false if !@tax_id.nil? && @tax_id.to_s.length > 15
      return false if !@exemption_code.nil? && @exemption_code.to_s.length > 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['alternate', 'local', 'national', 'vat'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if !amount.nil? && amount.to_s.length > 13
        fail ArgumentError, 'invalid value for "amount", the character length must be smaller than or equal to 13.'
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] rate Value to be assigned
    def rate=(rate)
      if !rate.nil? && rate.to_s.length > 6
        fail ArgumentError, 'invalid value for "rate", the character length must be smaller than or equal to 6.'
      end

      @rate = rate
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if !code.nil? && code.to_s.length > 4
        fail ArgumentError, 'invalid value for "code", the character length must be smaller than or equal to 4.'
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_id Value to be assigned
    def tax_id=(tax_id)
      if !tax_id.nil? && tax_id.to_s.length > 15
        fail ArgumentError, 'invalid value for "tax_id", the character length must be smaller than or equal to 15.'
      end

      @tax_id = tax_id
    end

    # Custom attribute writer method with validation
    # @param [Object] exemption_code Value to be assigned
    def exemption_code=(exemption_code)
      if !exemption_code.nil? && exemption_code.to_s.length > 1
        fail ArgumentError, 'invalid value for "exemption_code", the character length must be smaller than or equal to 1.'
      end

      @exemption_code = exemption_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          amount == o.amount &&
          rate == o.rate &&
          code == o.code &&
          tax_id == o.tax_id &&
          applied == o.applied &&
          exemption_code == o.exemption_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, amount, rate, code, tax_id, applied, exemption_code].hash
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
