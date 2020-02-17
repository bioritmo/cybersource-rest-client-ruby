=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class CapturePaymentRequest
    attr_accessor :client_reference_information

    attr_accessor :processing_information

    attr_accessor :payment_information

    attr_accessor :order_information

    attr_accessor :buyer_information

    attr_accessor :device_information

    attr_accessor :merchant_information

    attr_accessor :aggregator_information

    attr_accessor :point_of_sale_information

    # The object containing the custom data that the merchant defines. 
    attr_accessor :merchant_defined_information

    attr_accessor :installment_information

    attr_accessor :travel_information

    attr_accessor :promotion_information

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_reference_information' => :'clientReferenceInformation',
        :'processing_information' => :'processingInformation',
        :'payment_information' => :'paymentInformation',
        :'order_information' => :'orderInformation',
        :'buyer_information' => :'buyerInformation',
        :'device_information' => :'deviceInformation',
        :'merchant_information' => :'merchantInformation',
        :'aggregator_information' => :'aggregatorInformation',
        :'point_of_sale_information' => :'pointOfSaleInformation',
        :'merchant_defined_information' => :'merchantDefinedInformation',
        :'installment_information' => :'installmentInformation',
        :'travel_information' => :'travelInformation',
        :'promotion_information' => :'promotionInformation'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'client_reference_information' => :'Ptsv2paymentsClientReferenceInformation',
        :'processing_information' => :'Ptsv2paymentsidcapturesProcessingInformation',
        :'payment_information' => :'Ptsv2paymentsidcapturesPaymentInformation',
        :'order_information' => :'Ptsv2paymentsidcapturesOrderInformation',
        :'buyer_information' => :'Ptsv2paymentsidcapturesBuyerInformation',
        :'device_information' => :'Ptsv2paymentsDeviceInformation',
        :'merchant_information' => :'Ptsv2paymentsidcapturesMerchantInformation',
        :'aggregator_information' => :'Ptsv2paymentsidcapturesAggregatorInformation',
        :'point_of_sale_information' => :'Ptsv2paymentsidcapturesPointOfSaleInformation',
        :'merchant_defined_information' => :'Array<Ptsv2paymentsMerchantDefinedInformation>',
        :'installment_information' => :'Ptsv2paymentsidcapturesInstallmentInformation',
        :'travel_information' => :'Ptsv2paymentsidcapturesTravelInformation',
        :'promotion_information' => :'Ptsv2paymentsPromotionInformation'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'clientReferenceInformation')
        self.client_reference_information = attributes[:'clientReferenceInformation']
      end

      if attributes.has_key?(:'processingInformation')
        self.processing_information = attributes[:'processingInformation']
      end

      if attributes.has_key?(:'paymentInformation')
        self.payment_information = attributes[:'paymentInformation']
      end

      if attributes.has_key?(:'orderInformation')
        self.order_information = attributes[:'orderInformation']
      end

      if attributes.has_key?(:'buyerInformation')
        self.buyer_information = attributes[:'buyerInformation']
      end

      if attributes.has_key?(:'deviceInformation')
        self.device_information = attributes[:'deviceInformation']
      end

      if attributes.has_key?(:'merchantInformation')
        self.merchant_information = attributes[:'merchantInformation']
      end

      if attributes.has_key?(:'aggregatorInformation')
        self.aggregator_information = attributes[:'aggregatorInformation']
      end

      if attributes.has_key?(:'pointOfSaleInformation')
        self.point_of_sale_information = attributes[:'pointOfSaleInformation']
      end

      if attributes.has_key?(:'merchantDefinedInformation')
        if (value = attributes[:'merchantDefinedInformation']).is_a?(Array)
          self.merchant_defined_information = value
        end
      end

      if attributes.has_key?(:'installmentInformation')
        self.installment_information = attributes[:'installmentInformation']
      end

      if attributes.has_key?(:'travelInformation')
        self.travel_information = attributes[:'travelInformation']
      end

      if attributes.has_key?(:'promotionInformation')
        self.promotion_information = attributes[:'promotionInformation']
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
          client_reference_information == o.client_reference_information &&
          processing_information == o.processing_information &&
          payment_information == o.payment_information &&
          order_information == o.order_information &&
          buyer_information == o.buyer_information &&
          device_information == o.device_information &&
          merchant_information == o.merchant_information &&
          aggregator_information == o.aggregator_information &&
          point_of_sale_information == o.point_of_sale_information &&
          merchant_defined_information == o.merchant_defined_information &&
          installment_information == o.installment_information &&
          travel_information == o.travel_information &&
          promotion_information == o.promotion_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [client_reference_information, processing_information, payment_information, order_information, buyer_information, device_information, merchant_information, aggregator_information, point_of_sale_information, merchant_defined_information, installment_information, travel_information, promotion_information].hash
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
