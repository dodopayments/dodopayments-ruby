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
      sig { returns(Dodopayments::Models::TaxCategory::OrSymbol) }
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
          tax_category: Dodopayments::Models::TaxCategory::OrSymbol,
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
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category:,
        # Addons available for subscription product
        addons: nil,
        # Optional description of the product
        description: nil,
        # Optional message displayed during license key activation
        license_key_activation_message: nil,
        # The number of times the license key can be activated. Must be 0 or greater
        license_key_activations_limit: nil,
        license_key_duration: nil,
        # When true, generates and sends a license key to your customer. Defaults to false
        license_key_enabled: nil,
        # Optional name of the product
        name: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              price: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice),
              tax_category: Dodopayments::Models::TaxCategory::OrSymbol,
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
    end
  end
end
