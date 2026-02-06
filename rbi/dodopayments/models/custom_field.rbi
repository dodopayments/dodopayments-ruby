# typed: strong

module Dodopayments
  module Models
    class CustomField < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::CustomField, Dodopayments::Internal::AnyHash)
        end

      # Type of field determining validation rules
      sig { returns(Dodopayments::CustomField::FieldType::OrSymbol) }
      attr_accessor :field_type

      # Unique identifier for this field (used as key in responses)
      sig { returns(String) }
      attr_accessor :key

      # Display label shown to customer
      sig { returns(String) }
      attr_accessor :label

      # Options for dropdown type (required for dropdown, ignored for others)
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :options

      # Placeholder text for the input
      sig { returns(T.nilable(String)) }
      attr_accessor :placeholder

      # Whether this field is required
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :required

      sig { params(required: T::Boolean).void }
      attr_writer :required

      # Definition of a custom field for checkout
      sig do
        params(
          field_type: Dodopayments::CustomField::FieldType::OrSymbol,
          key: String,
          label: String,
          options: T.nilable(T::Array[String]),
          placeholder: T.nilable(String),
          required: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # Type of field determining validation rules
        field_type:,
        # Unique identifier for this field (used as key in responses)
        key:,
        # Display label shown to customer
        label:,
        # Options for dropdown type (required for dropdown, ignored for others)
        options: nil,
        # Placeholder text for the input
        placeholder: nil,
        # Whether this field is required
        required: nil
      )
      end

      sig do
        override.returns(
          {
            field_type: Dodopayments::CustomField::FieldType::OrSymbol,
            key: String,
            label: String,
            options: T.nilable(T::Array[String]),
            placeholder: T.nilable(String),
            required: T::Boolean
          }
        )
      end
      def to_hash
      end

      # Type of field determining validation rules
      module FieldType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::CustomField::FieldType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TEXT = T.let(:text, Dodopayments::CustomField::FieldType::TaggedSymbol)
        NUMBER =
          T.let(:number, Dodopayments::CustomField::FieldType::TaggedSymbol)
        EMAIL =
          T.let(:email, Dodopayments::CustomField::FieldType::TaggedSymbol)
        URL = T.let(:url, Dodopayments::CustomField::FieldType::TaggedSymbol)
        DATE = T.let(:date, Dodopayments::CustomField::FieldType::TaggedSymbol)
        DROPDOWN =
          T.let(:dropdown, Dodopayments::CustomField::FieldType::TaggedSymbol)
        BOOLEAN =
          T.let(:boolean, Dodopayments::CustomField::FieldType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::CustomField::FieldType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
