# frozen_string_literal: true

module Dodopayments
  module Models
    class CustomField < Dodopayments::Internal::Type::BaseModel
      # @!attribute field_type
      #   Type of field determining validation rules
      #
      #   @return [Symbol, Dodopayments::Models::CustomField::FieldType]
      required :field_type, enum: -> { Dodopayments::CustomField::FieldType }

      # @!attribute key
      #   Unique identifier for this field (used as key in responses)
      #
      #   @return [String]
      required :key, String

      # @!attribute label
      #   Display label shown to customer
      #
      #   @return [String]
      required :label, String

      # @!attribute options
      #   Options for dropdown type (required for dropdown, ignored for others)
      #
      #   @return [Array<String>, nil]
      optional :options, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute placeholder
      #   Placeholder text for the input
      #
      #   @return [String, nil]
      optional :placeholder, String, nil?: true

      # @!attribute required
      #   Whether this field is required
      #
      #   @return [Boolean, nil]
      optional :required, Dodopayments::Internal::Type::Boolean

      # @!method initialize(field_type:, key:, label:, options: nil, placeholder: nil, required: nil)
      #   Definition of a custom field for checkout
      #
      #   @param field_type [Symbol, Dodopayments::Models::CustomField::FieldType] Type of field determining validation rules
      #
      #   @param key [String] Unique identifier for this field (used as key in responses)
      #
      #   @param label [String] Display label shown to customer
      #
      #   @param options [Array<String>, nil] Options for dropdown type (required for dropdown, ignored for others)
      #
      #   @param placeholder [String, nil] Placeholder text for the input
      #
      #   @param required [Boolean] Whether this field is required

      # Type of field determining validation rules
      #
      # @see Dodopayments::Models::CustomField#field_type
      module FieldType
        extend Dodopayments::Internal::Type::Enum

        TEXT = :text
        NUMBER = :number
        EMAIL = :email
        URL = :url
        DATE = :date
        DROPDOWN = :dropdown
        BOOLEAN = :boolean

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
