# typed: strong

module Dodopayments
  module Models
    class ProductCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)) }
      attr_accessor :price

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol) }
      attr_accessor :tax_category

      # Addons available for subscription product
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      # Optional description of the product
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Optional message displayed during license key activation
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # The number of times the license key can be activated. Must be 0 or greater
      sig { returns(T.nilable(Integer)) }
      attr_accessor :license_key_activations_limit

      sig { returns(T.nilable(Dodopayments::Models::LicenseKeyDuration)) }
      attr_reader :license_key_duration

      sig do
        params(
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::AnyHash))
        )
          .void
      end
      attr_writer :license_key_duration

      # When true, generates and sends a license key to your customer. Defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :license_key_enabled

      # Optional name of the product
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          price: T.any(
            Dodopayments::Models::Price::OneTimePrice,
            Dodopayments::Internal::AnyHash,
            Dodopayments::Models::Price::RecurringPrice
          ),
          tax_category: Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::AnyHash)),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        price:,
        tax_category:,
        addons: nil,
        description: nil,
        license_key_activation_message: nil,
        license_key_activations_limit: nil,
        license_key_duration: nil,
        license_key_enabled: nil,
        name: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              price: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice),
              tax_category: Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol,
              addons: T.nilable(T::Array[String]),
              description: T.nilable(String),
              license_key_activation_message: T.nilable(String),
              license_key_activations_limit: T.nilable(Integer),
              license_key_duration: T.nilable(Dodopayments::Models::LicenseKeyDuration),
              license_key_enabled: T.nilable(T::Boolean),
              name: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end

      # Represents the different categories of taxation applicable to various products
      # and services.
      module TaxCategory
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::ProductCreateParams::TaxCategory) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DIGITAL_PRODUCTS =
          T.let(:digital_products, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)
        SAAS = T.let(:saas, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)
        E_BOOK = T.let(:e_book, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)
        EDTECH = T.let(:edtech, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
