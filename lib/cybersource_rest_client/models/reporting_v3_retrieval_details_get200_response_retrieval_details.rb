=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class ReportingV3RetrievalDetailsGet200ResponseRetrievalDetails
    # Processor Merchant Id
    attr_accessor :processor_merchant_id

    # Merchant Name
    attr_accessor :merchant_name

    # Transaction Reference Number
    attr_accessor :transaction_reference_number

    # Merchant Reference Number
    attr_accessor :merchant_reference_number

    # Nature of Dispute
    attr_accessor :nature_of_dispute

    # Retrieval Alert Type
    attr_accessor :alert_type

    # Retrieval Amount
    attr_accessor :amount

    # Retrieval Sign
    attr_accessor :sign

    # Retrieval Action
    attr_accessor :action

    # Card Type
    attr_accessor :card_type

    # Original Settlement Date
    attr_accessor :original_settlement_time

    # Tracking Number
    attr_accessor :tracking_number

    # Valid ISO 4217 ALPHA-3 currency code
    attr_accessor :currency_code

    # Request Id
    attr_accessor :request_id

    # Response Due Date
    attr_accessor :response_due_time

    # Retrieval Date
    attr_accessor :time

    # Retrieval Action Description
    attr_accessor :action_description

    # Customer Id
    attr_accessor :customer_id

    # Retrieval Reason Code
    attr_accessor :reason_code

    # Representment CP Date
    attr_accessor :representment_cp_time

    # ICS Request Applications
    attr_accessor :applications

    # Event Request Date
    attr_accessor :event_requested_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'processor_merchant_id' => :'processorMerchantId',
        :'merchant_name' => :'merchantName',
        :'transaction_reference_number' => :'transactionReferenceNumber',
        :'merchant_reference_number' => :'merchantReferenceNumber',
        :'nature_of_dispute' => :'natureOfDispute',
        :'alert_type' => :'alertType',
        :'amount' => :'amount',
        :'sign' => :'sign',
        :'action' => :'action',
        :'card_type' => :'cardType',
        :'original_settlement_time' => :'originalSettlementTime',
        :'tracking_number' => :'trackingNumber',
        :'currency_code' => :'currencyCode',
        :'request_id' => :'requestId',
        :'response_due_time' => :'responseDueTime',
        :'time' => :'time',
        :'action_description' => :'actionDescription',
        :'customer_id' => :'customerId',
        :'reason_code' => :'reasonCode',
        :'representment_cp_time' => :'representmentCPTime',
        :'applications' => :'applications',
        :'event_requested_time' => :'eventRequestedTime'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'processor_merchant_id' => :'String',
        :'merchant_name' => :'String',
        :'transaction_reference_number' => :'String',
        :'merchant_reference_number' => :'String',
        :'nature_of_dispute' => :'String',
        :'alert_type' => :'String',
        :'amount' => :'String',
        :'sign' => :'String',
        :'action' => :'String',
        :'card_type' => :'String',
        :'original_settlement_time' => :'DateTime',
        :'tracking_number' => :'String',
        :'currency_code' => :'String',
        :'request_id' => :'String',
        :'response_due_time' => :'DateTime',
        :'time' => :'DateTime',
        :'action_description' => :'String',
        :'customer_id' => :'String',
        :'reason_code' => :'String',
        :'representment_cp_time' => :'DateTime',
        :'applications' => :'String',
        :'event_requested_time' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'processorMerchantId')
        self.processor_merchant_id = attributes[:'processorMerchantId']
      end

      if attributes.has_key?(:'merchantName')
        self.merchant_name = attributes[:'merchantName']
      end

      if attributes.has_key?(:'transactionReferenceNumber')
        self.transaction_reference_number = attributes[:'transactionReferenceNumber']
      end

      if attributes.has_key?(:'merchantReferenceNumber')
        self.merchant_reference_number = attributes[:'merchantReferenceNumber']
      end

      if attributes.has_key?(:'natureOfDispute')
        self.nature_of_dispute = attributes[:'natureOfDispute']
      end

      if attributes.has_key?(:'alertType')
        self.alert_type = attributes[:'alertType']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'sign')
        self.sign = attributes[:'sign']
      end

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'cardType')
        self.card_type = attributes[:'cardType']
      end

      if attributes.has_key?(:'originalSettlementTime')
        self.original_settlement_time = attributes[:'originalSettlementTime']
      end

      if attributes.has_key?(:'trackingNumber')
        self.tracking_number = attributes[:'trackingNumber']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'requestId')
        self.request_id = attributes[:'requestId']
      end

      if attributes.has_key?(:'responseDueTime')
        self.response_due_time = attributes[:'responseDueTime']
      end

      if attributes.has_key?(:'time')
        self.time = attributes[:'time']
      end

      if attributes.has_key?(:'actionDescription')
        self.action_description = attributes[:'actionDescription']
      end

      if attributes.has_key?(:'customerId')
        self.customer_id = attributes[:'customerId']
      end

      if attributes.has_key?(:'reasonCode')
        self.reason_code = attributes[:'reasonCode']
      end

      if attributes.has_key?(:'representmentCPTime')
        self.representment_cp_time = attributes[:'representmentCPTime']
      end

      if attributes.has_key?(:'applications')
        self.applications = attributes[:'applications']
      end

      if attributes.has_key?(:'eventRequestedTime')
        self.event_requested_time = attributes[:'eventRequestedTime']
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          processor_merchant_id == o.processor_merchant_id &&
          merchant_name == o.merchant_name &&
          transaction_reference_number == o.transaction_reference_number &&
          merchant_reference_number == o.merchant_reference_number &&
          nature_of_dispute == o.nature_of_dispute &&
          alert_type == o.alert_type &&
          amount == o.amount &&
          sign == o.sign &&
          action == o.action &&
          card_type == o.card_type &&
          original_settlement_time == o.original_settlement_time &&
          tracking_number == o.tracking_number &&
          currency_code == o.currency_code &&
          request_id == o.request_id &&
          response_due_time == o.response_due_time &&
          time == o.time &&
          action_description == o.action_description &&
          customer_id == o.customer_id &&
          reason_code == o.reason_code &&
          representment_cp_time == o.representment_cp_time &&
          applications == o.applications &&
          event_requested_time == o.event_requested_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [processor_merchant_id, merchant_name, transaction_reference_number, merchant_reference_number, nature_of_dispute, alert_type, amount, sign, action, card_type, original_settlement_time, tracking_number, currency_code, request_id, response_due_time, time, action_description, customer_id, reason_code, representment_cp_time, applications, event_requested_time].hash
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
