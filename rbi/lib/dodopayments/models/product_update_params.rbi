# typed: strong

module Dodopayments
  module Models
    class ProductUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      # Description of the product, optional and must be at most 1000 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Product image id after its uploaded to S3
      sig { returns(T.nilable(String)) }
      attr_accessor :image_id

      # Message sent to the customer upon license key activation.
      #
      # Only applicable if `license_key_enabled` is `true`. This message contains
      # instructions for activating the license key.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # Limit for the number of activations for the license key.
      #
      # Only applicable if `license_key_enabled` is `true`. Represents the maximum
      # number of times the license key can be activated.
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

      # Whether the product requires a license key.
      #
      # If `true`, additional fields related to license key (duration, activations
      # limit, activation message) become applicable.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :license_key_enabled

      # Name of the product, optional and must be at most 100 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        returns(
          T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
        )
      end
      attr_accessor :price

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(T.nilable(Dodopayments::Models::ProductUpdateParams::TaxCategory::OrSymbol)) }
      attr_accessor :tax_category

      sig do
        params(
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          image_id: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::AnyHash)),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          price: T.nilable(
            T.any(
              Dodopayments::Models::Price::OneTimePrice,
              Dodopayments::Internal::AnyHash,
              Dodopayments::Models::Price::RecurringPrice
            )
          ),
          tax_category: T.nilable(Dodopayments::Models::ProductUpdateParams::TaxCategory::OrSymbol),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        addons: nil,
        description: nil,
        image_id: nil,
        license_key_activation_message: nil,
        license_key_activations_limit: nil,
        license_key_duration: nil,
        license_key_enabled: nil,
        name: nil,
        price: nil,
        tax_category: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              addons: T.nilable(T::Array[String]),
              description: T.nilable(String),
              image_id: T.nilable(String),
              license_key_activation_message: T.nilable(String),
              license_key_activations_limit: T.nilable(Integer),
              license_key_duration: T.nilable(Dodopayments::Models::LicenseKeyDuration),
              license_key_enabled: T.nilable(T::Boolean),
              name: T.nilable(String),
              price: T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)),
              tax_category: T.nilable(Dodopayments::Models::ProductUpdateParams::TaxCategory::OrSymbol),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end

      # Represents the different categories of taxation applicable to various products
      # and services.
      module TaxCategory
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::ProductUpdateParams::TaxCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol) }

        DIGITAL_PRODUCTS =
          T.let(:digital_products, Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol)
        SAAS = T.let(:saas, Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol)
        E_BOOK = T.let(:e_book, Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol)
        EDTECH = T.let(:edtech, Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
