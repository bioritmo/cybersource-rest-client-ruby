=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsidcapturesOrderInformationAmountDetails
    # Grand total for the order. This value cannot be negative. You can include a decimal point (.), but no other special characters. CyberSource truncates the amount to the correct number of decimal places.  **Note** For CTV, FDCCompass, Paymentech processors, the maximum length for this field is 12.  **Important** Some processors have specific requirements and limitations, such as maximum amounts and maximum field lengths. For details, see: - \"Authorization Information for Specific Processors\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/). - \"Capture Information for Specific Processors\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/). - \"Credit Information for Specific Processors\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/).  If your processor supports zero amount authorizations, you can set this field to 0 for the authorization to check if the card is lost or stolen. For details, see \"Zero Amount Authorizations,\" \"Credit Information for Specific Processors\" in [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### Card Present Required to include either this field or `orderInformation.lineItems[].unitPrice` for the order.  #### Invoicing Required for creating a new invoice.  #### PIN Debit Amount you requested for the PIN debit purchase. This value is returned for partial authorizations. The issuing bank can approve a partial amount if the balance on the debit card is less than the requested transaction amount.  Required field for PIN Debit purchase and PIN Debit credit requests. Optional field for PIN Debit reversal requests.  #### GPX This field is optional for reversing an authorization or credit; however, for all other processors, these fields are required.  #### DCC with a Third-Party Provider Set this field to the converted amount that was returned by the DCC provider. You must include either this field or the 1st line item in the order and the specific line-order amount in your request. For details, see `grand_total_amount` field description in [Dynamic Currency Conversion For First Data Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/DCC_FirstData_SCMP/DCC_FirstData_SCMP_API.pdf).  #### FDMS South If you accept IDR or CLP currencies, see the entry for FDMS South in \"Authorization Information for Specific Processors\" of the [Credit Card Services Using the SCMP API.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### DCC for First Data Not used. 
    attr_accessor :total_amount

    # Currency used for the order. Use the three-character [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf)  #### Used by **Authorization** Required field.  **Authorization Reversal** For an authorization reversal (`reversalInformation`) or a capture (`processingOptions.capture` is set to `true`), you must use the same currency that you used in your payment authorization request.  #### PIN Debit Currency for the amount you requested for the PIN debit purchase. This value is returned for partial authorizations. The issuing bank can approve a partial amount if the balance on the debit card is less than the requested transaction amount. For the possible values, see the [ISO Standard Currency Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/currencies.pdf). Returned by PIN debit purchase.  For PIN debit reversal requests, you must use the same currency that was used for the PIN debit purchase or PIN debit credit that you are reversing. For the possible values, see the [ISO Standard Currency Codes](https://developer.cybersource.com/library/documentation/sbc/quickref/currencies.pdf).  Required field for PIN Debit purchase and PIN Debit credit requests. Optional field for PIN Debit reversal requests.  #### GPX This field is optional for reversing an authorization or credit.  #### DCC for First Data Your local currency. For details, see the `currency` field description in [Dynamic Currency Conversion For First Data Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/DCC_FirstData_SCMP/DCC_FirstData_SCMP_API.pdf).  #### Tax Calculation Required for international tax and value added tax only. Optional for U.S. and Canadian taxes. Your local currency. 
    attr_accessor :currency

    # Total discount amount applied to the order. 
    attr_accessor :discount_amount

    # Total charges for any import or export duties included in the order. 
    attr_accessor :duty_amount

    # Gratuity or tip amount for restaurants. Allowed only when industryDatatype=restaurant. When your customer uses a debit card or prepaid card, and you receive a partial authorization, the payment networks recommend that you do not submit a capture amount that is higher than the authorized amount. When the capture amount exceeds the partial amount that was approved, the issuer has chargeback rights for the excess amount.  Used by **Capture** Optional field.  #### CyberSource through VisaNet Restaurant data is supported only on CyberSource through VisaNet when card is present. 
    attr_accessor :gratuity_amount

    # Total tax amount for all the items in the order. 
    attr_accessor :tax_amount

    # Flag that indicates whether a national tax is included in the order total.  Possible values:   - **0**: national tax not included  - **1**: national tax included 
    attr_accessor :national_tax_included

    # Flag that indicates how the merchant manages discounts.  Possible values:   - **0**: no invoice level discount included  - **1**: tax calculated on the postdiscount invoice total  - **2**: tax calculated on the prediscount invoice total 
    attr_accessor :tax_applied_after_discount

    # Flag that indicates how you calculate tax.  Possible values:   - **0**: net prices with tax calculated at line item level  - **1**: net prices with tax calculated at invoice level  - **2**: gross prices with tax provided at line item level  - **3**: gross prices with tax provided at invoice level  - **4**: no tax applies on the invoice for the transaction 
    attr_accessor :tax_applied_level

    # For tax amounts that can be categorized as one tax type.  This field contains the tax type code that corresponds to the entry in the _lineItems.taxAmount_ field.  Possible values:   - **056**: sales tax (U.S only)  - **TX~**: all taxes (Canada only)   Note ~ = space. 
    attr_accessor :tax_type_code

    # Total freight or shipping and handling charges for the order. When you include this field in your request, you must also include the **totalAmount** field.  For processor-specific information, see the freight_amount field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :freight_amount

    # Set this field to the converted amount that was returned by the DCC provider. For processor-specific information, see the `foreign_amount` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :foreign_amount

    # Set this field to the converted amount that was returned by the DCC provider. 
    attr_accessor :foreign_currency

    # Exchange rate returned by the DCC service. Includes a decimal point and a maximum of 4 decimal places.  For details, see `exchange_rate` request-level field description in the [Dynamic Currency Conversion For First Data Using the SCMP API](http://apps.cybersource.com/library/documentation/dev_guides/DCC_FirstData_SCMP/DCC_FirstData_SCMP_API.pdf) 
    attr_accessor :exchange_rate

    # Time stamp for the exchange rate. This value is returned by the DCC service.  Format: `YYYYMMDD~HH:MM`  where ~ denotes a space. 
    attr_accessor :exchange_rate_time_stamp

    attr_accessor :amex_additional_amounts

    attr_accessor :tax_details

    # Service fee. Required for service fee transactions. 
    attr_accessor :service_fee_amount

    # Your local pricing currency code.  For the possible values, see the [ISO Standard Currency Codes.](http://apps.cybersource.com/library/documentation/sbc/quickref/currencies.pdf) 
    attr_accessor :original_currency

    # Cashback amount in the acquirer’s currency. If a cashback amount is included in the request, it must be included in the `orderInformation.amountDetails.totalAmount` value.  This field is supported only on CyberSource through VisaNet.  #### Used by **Authorization** Optional. **Authorization Reversal** Optional.  #### PIN debit Optional field for PIN debit purchase, PIN debit credit or PIN debit reversal. 
    attr_accessor :cashback_amount

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_amount' => :'totalAmount',
        :'currency' => :'currency',
        :'discount_amount' => :'discountAmount',
        :'duty_amount' => :'dutyAmount',
        :'gratuity_amount' => :'gratuityAmount',
        :'tax_amount' => :'taxAmount',
        :'national_tax_included' => :'nationalTaxIncluded',
        :'tax_applied_after_discount' => :'taxAppliedAfterDiscount',
        :'tax_applied_level' => :'taxAppliedLevel',
        :'tax_type_code' => :'taxTypeCode',
        :'freight_amount' => :'freightAmount',
        :'foreign_amount' => :'foreignAmount',
        :'foreign_currency' => :'foreignCurrency',
        :'exchange_rate' => :'exchangeRate',
        :'exchange_rate_time_stamp' => :'exchangeRateTimeStamp',
        :'amex_additional_amounts' => :'amexAdditionalAmounts',
        :'tax_details' => :'taxDetails',
        :'service_fee_amount' => :'serviceFeeAmount',
        :'original_currency' => :'originalCurrency',
        :'cashback_amount' => :'cashbackAmount'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'total_amount' => :'String',
        :'currency' => :'String',
        :'discount_amount' => :'String',
        :'duty_amount' => :'String',
        :'gratuity_amount' => :'String',
        :'tax_amount' => :'String',
        :'national_tax_included' => :'String',
        :'tax_applied_after_discount' => :'String',
        :'tax_applied_level' => :'String',
        :'tax_type_code' => :'String',
        :'freight_amount' => :'String',
        :'foreign_amount' => :'String',
        :'foreign_currency' => :'String',
        :'exchange_rate' => :'String',
        :'exchange_rate_time_stamp' => :'String',
        :'amex_additional_amounts' => :'Array<Ptsv2paymentsOrderInformationAmountDetailsAmexAdditionalAmounts>',
        :'tax_details' => :'Array<Ptsv2paymentsOrderInformationAmountDetailsTaxDetails>',
        :'service_fee_amount' => :'String',
        :'original_currency' => :'String',
        :'cashback_amount' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'totalAmount')
        self.total_amount = attributes[:'totalAmount']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
      end

      if attributes.has_key?(:'dutyAmount')
        self.duty_amount = attributes[:'dutyAmount']
      end

      if attributes.has_key?(:'gratuityAmount')
        self.gratuity_amount = attributes[:'gratuityAmount']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'nationalTaxIncluded')
        self.national_tax_included = attributes[:'nationalTaxIncluded']
      end

      if attributes.has_key?(:'taxAppliedAfterDiscount')
        self.tax_applied_after_discount = attributes[:'taxAppliedAfterDiscount']
      end

      if attributes.has_key?(:'taxAppliedLevel')
        self.tax_applied_level = attributes[:'taxAppliedLevel']
      end

      if attributes.has_key?(:'taxTypeCode')
        self.tax_type_code = attributes[:'taxTypeCode']
      end

      if attributes.has_key?(:'freightAmount')
        self.freight_amount = attributes[:'freightAmount']
      end

      if attributes.has_key?(:'foreignAmount')
        self.foreign_amount = attributes[:'foreignAmount']
      end

      if attributes.has_key?(:'foreignCurrency')
        self.foreign_currency = attributes[:'foreignCurrency']
      end

      if attributes.has_key?(:'exchangeRate')
        self.exchange_rate = attributes[:'exchangeRate']
      end

      if attributes.has_key?(:'exchangeRateTimeStamp')
        self.exchange_rate_time_stamp = attributes[:'exchangeRateTimeStamp']
      end

      if attributes.has_key?(:'amexAdditionalAmounts')
        if (value = attributes[:'amexAdditionalAmounts']).is_a?(Array)
          self.amex_additional_amounts = value
        end
      end

      if attributes.has_key?(:'taxDetails')
        if (value = attributes[:'taxDetails']).is_a?(Array)
          self.tax_details = value
        end
      end

      if attributes.has_key?(:'serviceFeeAmount')
        self.service_fee_amount = attributes[:'serviceFeeAmount']
      end

      if attributes.has_key?(:'originalCurrency')
        self.original_currency = attributes[:'originalCurrency']
      end

      if attributes.has_key?(:'cashbackAmount')
        self.cashback_amount = attributes[:'cashbackAmount']
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
    # @param [Object] total_amount Value to be assigned
    def total_amount=(total_amount)
      @total_amount = total_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      @currency = currency
    end

    # Custom attribute writer method with validation
    # @param [Object] discount_amount Value to be assigned
    def discount_amount=(discount_amount)
      @discount_amount = discount_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] duty_amount Value to be assigned
    def duty_amount=(duty_amount)
      @duty_amount = duty_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] gratuity_amount Value to be assigned
    def gratuity_amount=(gratuity_amount)
      @gratuity_amount = gratuity_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_amount Value to be assigned
    def tax_amount=(tax_amount)
      @tax_amount = tax_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] national_tax_included Value to be assigned
    def national_tax_included=(national_tax_included)
      @national_tax_included = national_tax_included
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_applied_after_discount Value to be assigned
    def tax_applied_after_discount=(tax_applied_after_discount)
      @tax_applied_after_discount = tax_applied_after_discount
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_applied_level Value to be assigned
    def tax_applied_level=(tax_applied_level)
      @tax_applied_level = tax_applied_level
    end

    # Custom attribute writer method with validation
    # @param [Object] tax_type_code Value to be assigned
    def tax_type_code=(tax_type_code)
      @tax_type_code = tax_type_code
    end

    # Custom attribute writer method with validation
    # @param [Object] freight_amount Value to be assigned
    def freight_amount=(freight_amount)
      @freight_amount = freight_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] foreign_amount Value to be assigned
    def foreign_amount=(foreign_amount)
      @foreign_amount = foreign_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] foreign_currency Value to be assigned
    def foreign_currency=(foreign_currency)
      @foreign_currency = foreign_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_rate Value to be assigned
    def exchange_rate=(exchange_rate)
      @exchange_rate = exchange_rate
    end

    # Custom attribute writer method with validation
    # @param [Object] exchange_rate_time_stamp Value to be assigned
    def exchange_rate_time_stamp=(exchange_rate_time_stamp)
      @exchange_rate_time_stamp = exchange_rate_time_stamp
    end

    # Custom attribute writer method with validation
    # @param [Object] service_fee_amount Value to be assigned
    def service_fee_amount=(service_fee_amount)
      @service_fee_amount = service_fee_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] original_currency Value to be assigned
    def original_currency=(original_currency)
      @original_currency = original_currency
    end

    # Custom attribute writer method with validation
    # @param [Object] cashback_amount Value to be assigned
    def cashback_amount=(cashback_amount)
      @cashback_amount = cashback_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_amount == o.total_amount &&
          currency == o.currency &&
          discount_amount == o.discount_amount &&
          duty_amount == o.duty_amount &&
          gratuity_amount == o.gratuity_amount &&
          tax_amount == o.tax_amount &&
          national_tax_included == o.national_tax_included &&
          tax_applied_after_discount == o.tax_applied_after_discount &&
          tax_applied_level == o.tax_applied_level &&
          tax_type_code == o.tax_type_code &&
          freight_amount == o.freight_amount &&
          foreign_amount == o.foreign_amount &&
          foreign_currency == o.foreign_currency &&
          exchange_rate == o.exchange_rate &&
          exchange_rate_time_stamp == o.exchange_rate_time_stamp &&
          amex_additional_amounts == o.amex_additional_amounts &&
          tax_details == o.tax_details &&
          service_fee_amount == o.service_fee_amount &&
          original_currency == o.original_currency &&
          cashback_amount == o.cashback_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [total_amount, currency, discount_amount, duty_amount, gratuity_amount, tax_amount, national_tax_included, tax_applied_after_discount, tax_applied_level, tax_type_code, freight_amount, foreign_amount, foreign_currency, exchange_rate, exchange_rate_time_stamp, amex_additional_amounts, tax_details, service_fee_amount, original_currency, cashback_amount].hash
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
