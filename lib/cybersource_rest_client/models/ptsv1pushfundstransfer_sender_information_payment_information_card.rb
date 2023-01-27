=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv1pushfundstransferSenderInformationPaymentInformationCard
    # Three-digit value that indicates the card type.  IMPORTANT It is strongly recommended that you include the card type field in request messages even if it is optional for your processor and card type. Omitting the card type can cause the transaction to be processed with the wrong card type.  Possible values:  - `001`: Visa. For card-present transactions on all processors except SIX, the Visa Electron card type is processed the same way that the Visa debit card is processed. Use card type value 001 for Visa Electron. - `002`: Mastercard, Eurocard[^1], which is a European regional brand of Mastercard. 
    attr_accessor :type

    # 3-digit value that indicates the card Cvv2Value. Values can be 0-9.  This field is supported in Mastercard Send. 
    attr_accessor :security_code

    # Flag that specifies the type of account associated with the card. The cardholder provides this information during the payment process.  Valid values for Visa Platform Connect: - `CHECKING`: Checking account - `CREDIT`: Credit card account - `SAVING`: Saving account - `LINE_OF_CREDIT`: Line of credit or credit portion of combo card - `PREPAID`: Prepaid card account or prepaid portion of combo card - `UNIVERSAL`: Universal account  Valid values for Mastercard Send: - `00`: Other, - `01`: RTN + Bank Account, - `02`: IBAN, - `03`: Card Account, - `04`: Email, - `05`: Phone Number, - `06`: Bank account number (BAN) + Bank Identification Сode (BIC), - `07`: Wallet ID, - `08`: Social Network ID. Numeric, 2 characters.  This field is supported in Mastercard Send. 
    attr_accessor :source_account_type

    # The customer’s payment card number, also known as the Primary Account Number (PAN).  This field is supported in Mastercard Send. 
    attr_accessor :number

    # Two-digit month in which the payment card expires.  Format: MM.  Valid values: 01 through 12. Leading 0 is required.  This field is supported for Mastercard Send. 
    attr_accessor :expiration_month

    # Four-digit year in which the payment card expires.  This field is supported for Mastercard Send. 
    attr_accessor :expiration_year

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'security_code' => :'securityCode',
        :'source_account_type' => :'sourceAccountType',
        :'number' => :'number',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'type' => :'String',
        :'security_code' => :'String',
        :'source_account_type' => :'String',
        :'number' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String'
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

      if attributes.has_key?(:'securityCode')
        self.security_code = attributes[:'securityCode']
      end

      if attributes.has_key?(:'sourceAccountType')
        self.source_account_type = attributes[:'sourceAccountType']
      end

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] type Value to be assigned
    def type=(type)
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code Value to be assigned
    def security_code=(security_code)
      @security_code = security_code
    end

    # Custom attribute writer method with validation
    # @param [Object] source_account_type Value to be assigned
    def source_account_type=(source_account_type)
      @source_account_type = source_account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      @expiration_year = expiration_year
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          security_code == o.security_code &&
          source_account_type == o.source_account_type &&
          number == o.number &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [type, security_code, source_account_type, number, expiration_month, expiration_year].hash
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
