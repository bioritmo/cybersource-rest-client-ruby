=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2IncrementalAuthorizationPatch201ResponseProcessorInformation
    # Authorization code. Returned only when the processor returns this value. 
    attr_accessor :approval_code

    # Network transaction identifier (TID). You can use this value to identify a specific transaction when you are discussing the transaction with your processor. Not all processors provide this value.  #### Cielo For Cielo, this value is the non-sequential unit (NSU) and is supported for all transactions. The value is generated by Cielo or the issuing bank.  #### Comercio Latino For Comercio Latino, this value is the proof of sale or non-sequential unit (NSU) number generated by the acquirers Cielo and Rede, or the issuing bank.  #### CyberSource through VisaNet and GPN For details about this value for CyberSource through VisaNet and GPN, see \"Network Transaction Identifiers\" in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :transaction_id

    # For most processors, this is the error message sent directly from the bank. Returned only when the processor returns this value.  **Important** Do not use this field to evaluate the result of the authorization.  #### AIBMS If this value is `08`, you can accept the transaction if the customer provides you with identification.  #### Atos This value is the response code sent from Atos and it might also include the response code from the bank. Format: `aa,bb` with the two values separated by a comma and where: - `aa` is the two-digit error message from Atos. - `bb` is the optional two-digit error message from the bank.  #### Comercio Latino This value is the status code and the error or response code received from the processor separated by a colon. Format: [status code]:E[error code] or [status code]:R[response code] Example `2:R06`  #### JCN Gateway Processor-defined detail error code. The associated response category code is in the `responseCategoryCode` field. 
    attr_accessor :response_code

    # This field is returned only for **American Express Direct** and **CyberSource through VisaNet**.  #### American Express Direct  System trace audit number (STAN). This value identifies the transaction and is useful when investigating a chargeback dispute.  #### CyberSource through VisaNet  System trace number that must be printed on the customer’s receipt.  For details, see `receipt_number` field description in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :system_trace_audit_number

    # This field might contain information about a decline. This field is supported only for **CyberSource through VisaNet**. 
    attr_accessor :response_details

    attr_accessor :merchant_advice

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'approval_code' => :'approvalCode',
        :'transaction_id' => :'transactionId',
        :'response_code' => :'responseCode',
        :'system_trace_audit_number' => :'systemTraceAuditNumber',
        :'response_details' => :'responseDetails',
        :'merchant_advice' => :'merchantAdvice'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'approval_code' => :'String',
        :'transaction_id' => :'String',
        :'response_code' => :'String',
        :'system_trace_audit_number' => :'String',
        :'response_details' => :'String',
        :'merchant_advice' => :'PtsV2PaymentsPost201ResponseProcessorInformationMerchantAdvice'
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

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'responseCode')
        self.response_code = attributes[:'responseCode']
      end

      if attributes.has_key?(:'systemTraceAuditNumber')
        self.system_trace_audit_number = attributes[:'systemTraceAuditNumber']
      end

      if attributes.has_key?(:'responseDetails')
        self.response_details = attributes[:'responseDetails']
      end

      if attributes.has_key?(:'merchantAdvice')
        self.merchant_advice = attributes[:'merchantAdvice']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@transaction_id.nil? && @transaction_id.to_s.length > 50
        invalid_properties.push('invalid value for "transaction_id", the character length must be smaller than or equal to 50.')
      end

      if !@response_code.nil? && @response_code.to_s.length > 10
        invalid_properties.push('invalid value for "response_code", the character length must be smaller than or equal to 10.')
      end

      if !@system_trace_audit_number.nil? && @system_trace_audit_number.to_s.length > 6
        invalid_properties.push('invalid value for "system_trace_audit_number", the character length must be smaller than or equal to 6.')
      end

      if !@response_details.nil? && @response_details.to_s.length > 255
        invalid_properties.push('invalid value for "response_details", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@transaction_id.nil? && @transaction_id.to_s.length > 50
      return false if !@response_code.nil? && @response_code.to_s.length > 10
      return false if !@system_trace_audit_number.nil? && @system_trace_audit_number.to_s.length > 6
      return false if !@response_details.nil? && @response_details.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_id Value to be assigned
    def transaction_id=(transaction_id)
      if !transaction_id.nil? && transaction_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "transaction_id", the character length must be smaller than or equal to 50.'
      end

      @transaction_id = transaction_id
    end

    # Custom attribute writer method with validation
    # @param [Object] response_code Value to be assigned
    def response_code=(response_code)
      if !response_code.nil? && response_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "response_code", the character length must be smaller than or equal to 10.'
      end

      @response_code = response_code
    end

    # Custom attribute writer method with validation
    # @param [Object] system_trace_audit_number Value to be assigned
    def system_trace_audit_number=(system_trace_audit_number)
      if !system_trace_audit_number.nil? && system_trace_audit_number.to_s.length > 6
        fail ArgumentError, 'invalid value for "system_trace_audit_number", the character length must be smaller than or equal to 6.'
      end

      @system_trace_audit_number = system_trace_audit_number
    end

    # Custom attribute writer method with validation
    # @param [Object] response_details Value to be assigned
    def response_details=(response_details)
      if !response_details.nil? && response_details.to_s.length > 255
        fail ArgumentError, 'invalid value for "response_details", the character length must be smaller than or equal to 255.'
      end

      @response_details = response_details
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          approval_code == o.approval_code &&
          transaction_id == o.transaction_id &&
          response_code == o.response_code &&
          system_trace_audit_number == o.system_trace_audit_number &&
          response_details == o.response_details &&
          merchant_advice == o.merchant_advice
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [approval_code, transaction_id, response_code, system_trace_audit_number, response_details, merchant_advice].hash
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
