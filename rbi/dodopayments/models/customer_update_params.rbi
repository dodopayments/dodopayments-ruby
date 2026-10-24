# typed: strong

module Dodopayments
  module Models
    class CustomerUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(T.nilable(String)) }
      attr_accessor :email

      # Additional metadata for the customer
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants])
        )
      end
      attr_accessor :metadata

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :phone_number

      # The language of the customer emails, a code from `GET /locales`. A value
      # replaces the current language, and `null` removes it. Send this field only to
      # change the language on purpose. With no language, the emails are in English.
      sig { returns(T.nilable(Dodopayments::Locale::OrSymbol)) }
      attr_accessor :preferred_locale

      sig do
        params(
          customer_id: String,
          email: T.nilable(String),
          metadata:
            T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
          name: T.nilable(String),
          phone_number: T.nilable(String),
          preferred_locale: T.nilable(Dodopayments::Locale::OrSymbol),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        customer_id:,
        email: nil,
        # Additional metadata for the customer
        metadata: nil,
        name: nil,
        phone_number: nil,
        # The language of the customer emails, a code from `GET /locales`. A value
        # replaces the current language, and `null` removes it. Send this field only to
        # change the language on purpose. With no language, the emails are in English.
        preferred_locale: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            email: T.nilable(String),
            metadata:
              T.nilable(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]),
            name: T.nilable(String),
            phone_number: T.nilable(String),
            preferred_locale: T.nilable(Dodopayments::Locale::OrSymbol),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
