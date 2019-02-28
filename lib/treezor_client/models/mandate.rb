=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'date'

module TreezorClient
  class Mandate
    attr_accessor :mandate_id

    attr_accessor :title

    attr_accessor :legal_informations

    attr_accessor :unique_mandate_reference

    attr_accessor :mandate_status

    attr_accessor :user_id

    attr_accessor :debtor_name

    attr_accessor :debtor_address

    attr_accessor :debtor_city

    attr_accessor :debtor_zip_code

    attr_accessor :debtor_country

    attr_accessor :debtor_iban

    attr_accessor :debtor_bic

    attr_accessor :sequence_type

    attr_accessor :creditor_name

    attr_accessor :sepa_creditor_identifier

    attr_accessor :creditor_address

    attr_accessor :creditor_city

    attr_accessor :creditor_zip_code

    attr_accessor :creditor_country

    # Date YYYY-MM-DD
    attr_accessor :signature_date

    attr_accessor :debtor_signature_ip

    attr_accessor :signed

    attr_accessor :debtor_identification_code

    attr_accessor :debtor_reference_party_name

    attr_accessor :debtor_reference_identification_code

    attr_accessor :creditor_reference_party_name

    attr_accessor :creditor_reference_identification_code

    attr_accessor :contract_identification_number

    attr_accessor :contract_description

    attr_accessor :is_paper

    attr_accessor :sdd_type

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :revocation_signature_date

    attr_accessor :created_ip

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :created_date

    # Date YYYY-MM-DD HH:MM:SS
    attr_accessor :modified_date

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
        :'mandate_id' => :'mandateId',
        :'title' => :'title',
        :'legal_informations' => :'legalInformations',
        :'unique_mandate_reference' => :'uniqueMandateReference',
        :'mandate_status' => :'mandateStatus',
        :'user_id' => :'userId',
        :'debtor_name' => :'debtorName',
        :'debtor_address' => :'debtorAddress',
        :'debtor_city' => :'debtorCity',
        :'debtor_zip_code' => :'debtorZipCode',
        :'debtor_country' => :'debtorCountry',
        :'debtor_iban' => :'debtorIban',
        :'debtor_bic' => :'debtorBic',
        :'sequence_type' => :'sequenceType',
        :'creditor_name' => :'creditorName',
        :'sepa_creditor_identifier' => :'sepaCreditorIdentifier',
        :'creditor_address' => :'creditorAddress',
        :'creditor_city' => :'creditorCity',
        :'creditor_zip_code' => :'creditorZipCode',
        :'creditor_country' => :'creditorCountry',
        :'signature_date' => :'signatureDate',
        :'debtor_signature_ip' => :'debtorSignatureIp',
        :'signed' => :'signed',
        :'debtor_identification_code' => :'debtorIdentificationCode',
        :'debtor_reference_party_name' => :'debtorReferencePartyName',
        :'debtor_reference_identification_code' => :'debtorReferenceIdentificationCode',
        :'creditor_reference_party_name' => :'creditorReferencePartyName',
        :'creditor_reference_identification_code' => :'creditorReferenceIdentificationCode',
        :'contract_identification_number' => :'contractIdentificationNumber',
        :'contract_description' => :'contractDescription',
        :'is_paper' => :'isPaper',
        :'sdd_type' => :'sddType',
        :'revocation_signature_date' => :'revocationSignatureDate',
        :'created_ip' => :'createdIp',
        :'created_date' => :'createdDate',
        :'modified_date' => :'modifiedDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'mandate_id' => :'Integer',
        :'title' => :'String',
        :'legal_informations' => :'String',
        :'unique_mandate_reference' => :'String',
        :'mandate_status' => :'String',
        :'user_id' => :'Integer',
        :'debtor_name' => :'String',
        :'debtor_address' => :'String',
        :'debtor_city' => :'String',
        :'debtor_zip_code' => :'String',
        :'debtor_country' => :'String',
        :'debtor_iban' => :'String',
        :'debtor_bic' => :'String',
        :'sequence_type' => :'String',
        :'creditor_name' => :'String',
        :'sepa_creditor_identifier' => :'String',
        :'creditor_address' => :'String',
        :'creditor_city' => :'String',
        :'creditor_zip_code' => :'String',
        :'creditor_country' => :'String',
        :'signature_date' => :'String',
        :'debtor_signature_ip' => :'String',
        :'signed' => :'Integer',
        :'debtor_identification_code' => :'String',
        :'debtor_reference_party_name' => :'String',
        :'debtor_reference_identification_code' => :'String',
        :'creditor_reference_party_name' => :'String',
        :'creditor_reference_identification_code' => :'String',
        :'contract_identification_number' => :'String',
        :'contract_description' => :'String',
        :'is_paper' => :'BOOLEAN',
        :'sdd_type' => :'String',
        :'revocation_signature_date' => :'String',
        :'created_ip' => :'String',
        :'created_date' => :'String',
        :'modified_date' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'mandateId')
        self.mandate_id = attributes[:'mandateId']
      end

      if attributes.has_key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.has_key?(:'legalInformations')
        self.legal_informations = attributes[:'legalInformations']
      end

      if attributes.has_key?(:'uniqueMandateReference')
        self.unique_mandate_reference = attributes[:'uniqueMandateReference']
      end

      if attributes.has_key?(:'mandateStatus')
        self.mandate_status = attributes[:'mandateStatus']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'debtorName')
        self.debtor_name = attributes[:'debtorName']
      end

      if attributes.has_key?(:'debtorAddress')
        self.debtor_address = attributes[:'debtorAddress']
      end

      if attributes.has_key?(:'debtorCity')
        self.debtor_city = attributes[:'debtorCity']
      end

      if attributes.has_key?(:'debtorZipCode')
        self.debtor_zip_code = attributes[:'debtorZipCode']
      end

      if attributes.has_key?(:'debtorCountry')
        self.debtor_country = attributes[:'debtorCountry']
      end

      if attributes.has_key?(:'debtorIban')
        self.debtor_iban = attributes[:'debtorIban']
      end

      if attributes.has_key?(:'debtorBic')
        self.debtor_bic = attributes[:'debtorBic']
      end

      if attributes.has_key?(:'sequenceType')
        self.sequence_type = attributes[:'sequenceType']
      end

      if attributes.has_key?(:'creditorName')
        self.creditor_name = attributes[:'creditorName']
      end

      if attributes.has_key?(:'sepaCreditorIdentifier')
        self.sepa_creditor_identifier = attributes[:'sepaCreditorIdentifier']
      end

      if attributes.has_key?(:'creditorAddress')
        self.creditor_address = attributes[:'creditorAddress']
      end

      if attributes.has_key?(:'creditorCity')
        self.creditor_city = attributes[:'creditorCity']
      end

      if attributes.has_key?(:'creditorZipCode')
        self.creditor_zip_code = attributes[:'creditorZipCode']
      end

      if attributes.has_key?(:'creditorCountry')
        self.creditor_country = attributes[:'creditorCountry']
      end

      if attributes.has_key?(:'signatureDate')
        self.signature_date = attributes[:'signatureDate']
      end

      if attributes.has_key?(:'debtorSignatureIp')
        self.debtor_signature_ip = attributes[:'debtorSignatureIp']
      end

      if attributes.has_key?(:'signed')
        self.signed = attributes[:'signed']
      end

      if attributes.has_key?(:'debtorIdentificationCode')
        self.debtor_identification_code = attributes[:'debtorIdentificationCode']
      end

      if attributes.has_key?(:'debtorReferencePartyName')
        self.debtor_reference_party_name = attributes[:'debtorReferencePartyName']
      end

      if attributes.has_key?(:'debtorReferenceIdentificationCode')
        self.debtor_reference_identification_code = attributes[:'debtorReferenceIdentificationCode']
      end

      if attributes.has_key?(:'creditorReferencePartyName')
        self.creditor_reference_party_name = attributes[:'creditorReferencePartyName']
      end

      if attributes.has_key?(:'creditorReferenceIdentificationCode')
        self.creditor_reference_identification_code = attributes[:'creditorReferenceIdentificationCode']
      end

      if attributes.has_key?(:'contractIdentificationNumber')
        self.contract_identification_number = attributes[:'contractIdentificationNumber']
      end

      if attributes.has_key?(:'contractDescription')
        self.contract_description = attributes[:'contractDescription']
      end

      if attributes.has_key?(:'isPaper')
        self.is_paper = attributes[:'isPaper']
      end

      if attributes.has_key?(:'sddType')
        self.sdd_type = attributes[:'sddType']
      end

      if attributes.has_key?(:'revocationSignatureDate')
        self.revocation_signature_date = attributes[:'revocationSignatureDate']
      end

      if attributes.has_key?(:'createdIp')
        self.created_ip = attributes[:'createdIp']
      end

      if attributes.has_key?(:'createdDate')
        self.created_date = attributes[:'createdDate']
      end

      if attributes.has_key?(:'modifiedDate')
        self.modified_date = attributes[:'modifiedDate']
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
      mandate_status_validator = EnumAttributeValidator.new('String', ['PENDING', 'CANCELED', 'VALIDATED'])
      return false unless mandate_status_validator.valid?(@mandate_status)
      sequence_type_validator = EnumAttributeValidator.new('String', ['one-off', 'recurrent'])
      return false unless sequence_type_validator.valid?(@sequence_type)
      sdd_type_validator = EnumAttributeValidator.new('String', ['core', 'b2b'])
      return false unless sdd_type_validator.valid?(@sdd_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_status Object to be assigned
    def mandate_status=(mandate_status)
      validator = EnumAttributeValidator.new('String', ['PENDING', 'CANCELED', 'VALIDATED'])
      unless validator.valid?(mandate_status)
        fail ArgumentError, 'invalid value for "mandate_status", must be one of #{validator.allowable_values}.'
      end
      @mandate_status = mandate_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sequence_type Object to be assigned
    def sequence_type=(sequence_type)
      validator = EnumAttributeValidator.new('String', ['one-off', 'recurrent'])
      unless validator.valid?(sequence_type)
        fail ArgumentError, 'invalid value for "sequence_type", must be one of #{validator.allowable_values}.'
      end
      @sequence_type = sequence_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sdd_type Object to be assigned
    def sdd_type=(sdd_type)
      validator = EnumAttributeValidator.new('String', ['core', 'b2b'])
      unless validator.valid?(sdd_type)
        fail ArgumentError, 'invalid value for "sdd_type", must be one of #{validator.allowable_values}.'
      end
      @sdd_type = sdd_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          mandate_id == o.mandate_id &&
          title == o.title &&
          legal_informations == o.legal_informations &&
          unique_mandate_reference == o.unique_mandate_reference &&
          mandate_status == o.mandate_status &&
          user_id == o.user_id &&
          debtor_name == o.debtor_name &&
          debtor_address == o.debtor_address &&
          debtor_city == o.debtor_city &&
          debtor_zip_code == o.debtor_zip_code &&
          debtor_country == o.debtor_country &&
          debtor_iban == o.debtor_iban &&
          debtor_bic == o.debtor_bic &&
          sequence_type == o.sequence_type &&
          creditor_name == o.creditor_name &&
          sepa_creditor_identifier == o.sepa_creditor_identifier &&
          creditor_address == o.creditor_address &&
          creditor_city == o.creditor_city &&
          creditor_zip_code == o.creditor_zip_code &&
          creditor_country == o.creditor_country &&
          signature_date == o.signature_date &&
          debtor_signature_ip == o.debtor_signature_ip &&
          signed == o.signed &&
          debtor_identification_code == o.debtor_identification_code &&
          debtor_reference_party_name == o.debtor_reference_party_name &&
          debtor_reference_identification_code == o.debtor_reference_identification_code &&
          creditor_reference_party_name == o.creditor_reference_party_name &&
          creditor_reference_identification_code == o.creditor_reference_identification_code &&
          contract_identification_number == o.contract_identification_number &&
          contract_description == o.contract_description &&
          is_paper == o.is_paper &&
          sdd_type == o.sdd_type &&
          revocation_signature_date == o.revocation_signature_date &&
          created_ip == o.created_ip &&
          created_date == o.created_date &&
          modified_date == o.modified_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [mandate_id, title, legal_informations, unique_mandate_reference, mandate_status, user_id, debtor_name, debtor_address, debtor_city, debtor_zip_code, debtor_country, debtor_iban, debtor_bic, sequence_type, creditor_name, sepa_creditor_identifier, creditor_address, creditor_city, creditor_zip_code, creditor_country, signature_date, debtor_signature_ip, signed, debtor_identification_code, debtor_reference_party_name, debtor_reference_identification_code, creditor_reference_party_name, creditor_reference_identification_code, contract_identification_number, contract_description, is_paper, sdd_type, revocation_signature_date, created_ip, created_date, modified_date].hash
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
        temp_model = TreezorClient.const_get(type).new
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
