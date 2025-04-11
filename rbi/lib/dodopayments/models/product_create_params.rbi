# typed: strong

module Dodopayments
  module Models
    class ProductCreateParams < Dodopayments::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)) }
      def price
      end

      sig do
        params(_: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
          .returns(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
      end
      def price=(_)
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      sig { returns(Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol) }
      def tax_category
      end

      sig do
        params(_: Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol)
          .returns(Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol)
      end
      def tax_category=(_)
      end

      # Addons available for subscription product
      sig { returns(T.nilable(T::Array[String])) }
      def addons
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def addons=(_)
      end

      # Optional description of the product
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # Optional message displayed during license key activation
      sig { returns(T.nilable(String)) }
      def license_key_activation_message
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def license_key_activation_message=(_)
      end

      # The number of times the license key can be activated. Must be 0 or greater
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
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::Util::AnyHash))
        )
          .void
      end

      # When true, generates and sends a license key to your customer. Defaults to false
      sig { returns(T.nilable(T::Boolean)) }
      def license_key_enabled
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def license_key_enabled=(_)
      end

      # Optional name of the product
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig do
        params(
          price: T.any(
            Dodopayments::Models::Price::OneTimePrice,
            Dodopayments::Internal::Util::AnyHash,
            Dodopayments::Models::Price::RecurringPrice
          ),
          tax_category: Dodopayments::Models::ProductCreateParams::TaxCategory::OrSymbol,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::Util::AnyHash)),
          license_key_enabled: T.nilable(T::Boolean),
          name: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::Util::AnyHash)
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
      )
      end

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
      def to_hash
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      module TaxCategory
        extend Dodopayments::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::ProductCreateParams::TaxCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol) }

        DIGITAL_PRODUCTS =
          T.let(:digital_products, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)
        SAAS = T.let(:saas, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)
        E_BOOK = T.let(:e_book, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)
        EDTECH = T.let(:edtech, Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Dodopayments::Models::ProductCreateParams::TaxCategory::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
