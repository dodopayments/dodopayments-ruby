# typed: strong

module Dodopayments
  module Models
    class ProductUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      def addons
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def addons=(_)
      end

      # Description of the product, optional and must be at most 1000 characters.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Product image id after its uploaded to S3
      sig { returns(T.nilable(String)) }
      def image_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def image_id=(_)
      end

      # Message sent to the customer upon license key activation.
      #
      #   Only applicable if `license_key_enabled` is `true`. This message contains
      #   instructions for activating the license key.
      sig { returns(T.nilable(String)) }
      def license_key_activation_message
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def license_key_activation_message=(_)
      end

      # Limit for the number of activations for the license key.
      #
      #   Only applicable if `license_key_enabled` is `true`. Represents the maximum
      #   number of times the license key can be activated.
      sig { returns(T.nilable(Integer)) }
      def license_key_activations_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def license_key_activations_limit=(_)
      end

      sig { returns(T.nilable(Dodopayments::Models::LicenseKeyDuration)) }
      def license_key_duration
      end

      sig do
        params(
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::AnyHash))
        )
          .void
      end

      # Whether the product requires a license key.
      #
      #   If `true`, additional fields related to license key (duration, activations
      #   limit, activation message) become applicable.
      sig { returns(T.nilable(T::Boolean)) }
      def license_key_enabled
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def license_key_enabled=(_)
      end

      # Name of the product, optional and must be at most 100 characters.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig do
        returns(
          T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
        )
      end
      def price
      end

      sig do
        params(
          _: T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
        )
          .returns(
            T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
          )
      end
      def price=(_)
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      sig { returns(T.nilable(Dodopayments::Models::ProductUpdateParams::TaxCategory::OrSymbol)) }
      def tax_category
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::ProductUpdateParams::TaxCategory::OrSymbol))
          .returns(T.nilable(Dodopayments::Models::ProductUpdateParams::TaxCategory::OrSymbol))
      end
      def tax_category=(_)
      end

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
      )
      end

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
      def to_hash
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
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

        class << self
          sig { override.returns(T::Array[Dodopayments::Models::ProductUpdateParams::TaxCategory::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
