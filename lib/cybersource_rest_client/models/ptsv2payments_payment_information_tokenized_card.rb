=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsPaymentInformationTokenizedCard
    # Customer’s payment network token value. 
    attr_accessor :number

    # One of two possible meanings: - The two-digit month in which a token expires. - The two-digit month in which a card expires. Format: `MM` Possible values: `01` through `12`  **NOTE** The meaning of this field is dependent on the payment processor that is returning the value in an authorization reply. Please see the processor-specific details below.  #### Barclays and Streamline For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (`01` through `12`) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  #### Encoded Account Numbers For encoded account numbers (`card_type=039`), if there is no expiration date on the card, use `12`.\\ **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  #### Samsung Pay and Apple Pay Month in which the token expires. CyberSource includes this field in the reply message when it decrypts the payment blob for the tokenized transaction.  For processor-specific information, see the `customer_cc_expmo` field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :expiration_month

    # One of two possible meanings: - The four-digit year in which a token expires. - The four-digit year in which a card expires. Format: `YYYY` Possible values: `1900` through `3000` Data type: Non-negative integer  **NOTE** The meaning of this field is dependent on the payment processor that is returning the value in an authorization reply. Please see the processor-specific details below.  #### Barclays and Streamline For Maestro (UK Domestic) and Maestro (International) cards on Barclays and Streamline, this must be a valid value (1900 through 3000) but is not required to be a valid expiration date. In other words, an expiration date that is in the past does not cause CyberSource to reject your request. However, an invalid expiration date might cause the issuer to reject your request.  #### Encoded Account Numbers For encoded account numbers (`card_ type=039`), if there is no expiration date on the card, use `2021`.  #### FDC Nashville Global and FDMS South You can send in 2 digits or 4 digits. When you send in 2 digits, they must be the last 2 digits of the year.  #### Samsung Pay and Apple Pay Year in which the token expires. CyberSource includes this field in the reply message when it decrypts the payment blob for the tokenized transaction.  **Important** It is your responsibility to determine whether a field is required for the transaction you are requesting.  For processor-specific information, see the `customer_cc_expyr` or `token_expiration_year` field in [Credit Card Services Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :expiration_year

    # Three-digit value that indicates the card type.  Type of card to authorize. - 001 Visa - 002 Mastercard - 003 Amex - 004 Discover - 005: Diners Club - 007: JCB - 024: Maestro (UK Domestic) - 036: Cartes Bancaires - 039 Encoded account number - 042: Maestro (International)  For the complete list of possible values, see `card_type` field description in the [Credit Card Services Using the SCMP API Guide.](http://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html) 
    attr_accessor :type

    # This field is used internally.
    attr_accessor :cryptogram

    # Value that identifies your business and indicates that the cardholder’s account number is tokenized. This value is assigned by the token service provider and is unique within the token service provider’s database.  **Note** This field is supported only for **CyberSource through VisaNet** and **FDC Nashville Global**. 
    attr_accessor :requestor_id

    # Type of transaction that provided the token data. This value does not specify the token service provider; it specifies the entity that provided you with information about the token.  Set the value for this field to 1. An application on the customer’s mobile device provided the token data. 
    attr_accessor :transaction_type

    # Confidence level of the tokenization. This value is assigned by the token service provider.  **Note** This field is supported only for **CyberSource through VisaNet** and **FDC Nashville Global**. 
    attr_accessor :assurance_level

    # Type of technology used in the device to store token data. Possible values:  - `001`: Secure Element (SE). Smart card or memory with restricted access and encryption to prevent data tampering. For storing payment    credentials, a SE is tested against a set of requirements defined by the payment networks.     **Note** This field is supported only for _FDC Compass_.  - 002: Host Card Emulation (HCE). Emulation of a smart card by using software to create a virtual and exact representation of the card. Sensitive data is stored in a database that is hosted in the cloud. For storing payment credentials, a database must meet very stringent security requirements that exceed PCI DSS.  **Note** This field is supported only for _FDC Compass_. 
    attr_accessor :storage_method

    # Card Verification Number (CVN).  #### Ingenico ePayments Do not include this field when **commerceIndicator=recurring**. **Note** Ingenico ePayments was previously called _Global Collect_.  For details, see `customer_cc_cv_number` field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :security_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'number' => :'number',
        :'expiration_month' => :'expirationMonth',
        :'expiration_year' => :'expirationYear',
        :'type' => :'type',
        :'cryptogram' => :'cryptogram',
        :'requestor_id' => :'requestorId',
        :'transaction_type' => :'transactionType',
        :'assurance_level' => :'assuranceLevel',
        :'storage_method' => :'storageMethod',
        :'security_code' => :'securityCode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'number' => :'String',
        :'expiration_month' => :'String',
        :'expiration_year' => :'String',
        :'type' => :'String',
        :'cryptogram' => :'String',
        :'requestor_id' => :'String',
        :'transaction_type' => :'String',
        :'assurance_level' => :'String',
        :'storage_method' => :'String',
        :'security_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'expirationMonth')
        self.expiration_month = attributes[:'expirationMonth']
      end

      if attributes.has_key?(:'expirationYear')
        self.expiration_year = attributes[:'expirationYear']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'cryptogram')
        self.cryptogram = attributes[:'cryptogram']
      end

      if attributes.has_key?(:'requestorId')
        self.requestor_id = attributes[:'requestorId']
      end

      if attributes.has_key?(:'transactionType')
        self.transaction_type = attributes[:'transactionType']
      end

      if attributes.has_key?(:'assuranceLevel')
        self.assurance_level = attributes[:'assuranceLevel']
      end

      if attributes.has_key?(:'storageMethod')
        self.storage_method = attributes[:'storageMethod']
      end

      if attributes.has_key?(:'securityCode')
        self.security_code = attributes[:'securityCode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@number.nil? && @number.to_s.length > 20
        invalid_properties.push('invalid value for "number", the character length must be smaller than or equal to 20.')
      end

      if !@expiration_month.nil? && @expiration_month.to_s.length > 2
        invalid_properties.push('invalid value for "expiration_month", the character length must be smaller than or equal to 2.')
      end

      if !@expiration_year.nil? && @expiration_year.to_s.length > 4
        invalid_properties.push('invalid value for "expiration_year", the character length must be smaller than or equal to 4.')
      end

      if !@cryptogram.nil? && @cryptogram.to_s.length > 40
        invalid_properties.push('invalid value for "cryptogram", the character length must be smaller than or equal to 40.')
      end

      if !@requestor_id.nil? && @requestor_id.to_s.length > 11
        invalid_properties.push('invalid value for "requestor_id", the character length must be smaller than or equal to 11.')
      end

      if !@transaction_type.nil? && @transaction_type.to_s.length > 1
        invalid_properties.push('invalid value for "transaction_type", the character length must be smaller than or equal to 1.')
      end

      if !@assurance_level.nil? && @assurance_level.to_s.length > 2
        invalid_properties.push('invalid value for "assurance_level", the character length must be smaller than or equal to 2.')
      end

      if !@storage_method.nil? && @storage_method.to_s.length > 3
        invalid_properties.push('invalid value for "storage_method", the character length must be smaller than or equal to 3.')
      end

      if !@security_code.nil? && @security_code.to_s.length > 4
        invalid_properties.push('invalid value for "security_code", the character length must be smaller than or equal to 4.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@number.nil? && @number.to_s.length > 20
      return false if !@expiration_month.nil? && @expiration_month.to_s.length > 2
      return false if !@expiration_year.nil? && @expiration_year.to_s.length > 4
      return false if !@cryptogram.nil? && @cryptogram.to_s.length > 40
      return false if !@requestor_id.nil? && @requestor_id.to_s.length > 11
      return false if !@transaction_type.nil? && @transaction_type.to_s.length > 1
      return false if !@assurance_level.nil? && @assurance_level.to_s.length > 2
      return false if !@storage_method.nil? && @storage_method.to_s.length > 3
      return false if !@security_code.nil? && @security_code.to_s.length > 4
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if !number.nil? && number.to_s.length > 20
        fail ArgumentError, 'invalid value for "number", the character length must be smaller than or equal to 20.'
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_month Value to be assigned
    def expiration_month=(expiration_month)
      if !expiration_month.nil? && expiration_month.to_s.length > 2
        fail ArgumentError, 'invalid value for "expiration_month", the character length must be smaller than or equal to 2.'
      end

      @expiration_month = expiration_month
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration_year Value to be assigned
    def expiration_year=(expiration_year)
      if !expiration_year.nil? && expiration_year.to_s.length > 4
        fail ArgumentError, 'invalid value for "expiration_year", the character length must be smaller than or equal to 4.'
      end

      @expiration_year = expiration_year
    end

    # Custom attribute writer method with validation
    # @param [Object] cryptogram Value to be assigned
    def cryptogram=(cryptogram)
      if !cryptogram.nil? && cryptogram.to_s.length > 40
        fail ArgumentError, 'invalid value for "cryptogram", the character length must be smaller than or equal to 40.'
      end

      @cryptogram = cryptogram
    end

    # Custom attribute writer method with validation
    # @param [Object] requestor_id Value to be assigned
    def requestor_id=(requestor_id)
      if !requestor_id.nil? && requestor_id.to_s.length > 11
        fail ArgumentError, 'invalid value for "requestor_id", the character length must be smaller than or equal to 11.'
      end

      @requestor_id = requestor_id
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_type Value to be assigned
    def transaction_type=(transaction_type)
      if !transaction_type.nil? && transaction_type.to_s.length > 1
        fail ArgumentError, 'invalid value for "transaction_type", the character length must be smaller than or equal to 1.'
      end

      @transaction_type = transaction_type
    end

    # Custom attribute writer method with validation
    # @param [Object] assurance_level Value to be assigned
    def assurance_level=(assurance_level)
      if !assurance_level.nil? && assurance_level.to_s.length > 2
        fail ArgumentError, 'invalid value for "assurance_level", the character length must be smaller than or equal to 2.'
      end

      @assurance_level = assurance_level
    end

    # Custom attribute writer method with validation
    # @param [Object] storage_method Value to be assigned
    def storage_method=(storage_method)
      if !storage_method.nil? && storage_method.to_s.length > 3
        fail ArgumentError, 'invalid value for "storage_method", the character length must be smaller than or equal to 3.'
      end

      @storage_method = storage_method
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code Value to be assigned
    def security_code=(security_code)
      if !security_code.nil? && security_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "security_code", the character length must be smaller than or equal to 4.'
      end

      @security_code = security_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number == o.number &&
          expiration_month == o.expiration_month &&
          expiration_year == o.expiration_year &&
          type == o.type &&
          cryptogram == o.cryptogram &&
          requestor_id == o.requestor_id &&
          transaction_type == o.transaction_type &&
          assurance_level == o.assurance_level &&
          storage_method == o.storage_method &&
          security_code == o.security_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [number, expiration_month, expiration_year, type, cryptogram, requestor_id, transaction_type, assurance_level, storage_method, security_code].hash
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
