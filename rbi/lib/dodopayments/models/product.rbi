# typed: strong

module Dodopayments
  module Models
    class Product < Dodopayments::BaseModel
      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # Timestamp when the product was created.
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      def is_recurring
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def is_recurring=(_)
      end

      # Indicates whether the product requires a license key.
      sig { returns(T::Boolean) }
      def license_key_enabled
      end

      sig { params(_: T::Boolean).returns(T::Boolean) }
      def license_key_enabled=(_)
      end

      sig { returns(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)) }
      def price
      end

      sig do
        params(_: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
          .returns(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
      end
      def price=(_)
      end

      # Unique identifier for the product.
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      sig { returns(Dodopayments::Models::Product::TaxCategory::TaggedSymbol) }
      def tax_category
      end

      sig do
        params(_: Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
          .returns(Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
      end
      def tax_category=(_)
      end

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      def updated_at
      end

      sig { params(_: Time).returns(Time) }
      def updated_at=(_)
      end

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      def addons
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def addons=(_)
      end

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      def description
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_)
      end

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      def image
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def image=(_)
      end

      # Message sent upon license key activation, if applicable.
      sig { returns(T.nilable(String)) }
      def license_key_activation_message
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def license_key_activation_message=(_)
      end

      # Limit on the number of activations for the license key, if enabled.
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
        params(_: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Util::AnyHash)))
          .returns(T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Util::AnyHash)))
      end
      def license_key_duration=(_)
      end

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      sig do
        params(
          business_id: String,
          created_at: Time,
          is_recurring: T::Boolean,
          license_key_enabled: T::Boolean,
          price: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice),
          product_id: String,
          tax_category: Dodopayments::Models::Product::TaxCategory::TaggedSymbol,
          updated_at: Time,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          image: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Util::AnyHash)),
          name: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        is_recurring:,
        license_key_enabled:,
        price:,
        product_id:,
        tax_category:,
        updated_at:,
        addons: nil,
        description: nil,
        image: nil,
        license_key_activation_message: nil,
        license_key_activations_limit: nil,
        license_key_duration: nil,
        name: nil
      )
      end

      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              is_recurring: T::Boolean,
              license_key_enabled: T::Boolean,
              price: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice),
              product_id: String,
              tax_category: Dodopayments::Models::Product::TaxCategory::TaggedSymbol,
              updated_at: Time,
              addons: T.nilable(T::Array[String]),
              description: T.nilable(String),
              image: T.nilable(String),
              license_key_activation_message: T.nilable(String),
              license_key_activations_limit: T.nilable(Integer),
              license_key_duration: T.nilable(Dodopayments::Models::LicenseKeyDuration),
              name: T.nilable(String)
            }
          )
      end
      def to_hash
      end

      # Represents the different categories of taxation applicable to various products
      #   and services.
      module TaxCategory
        extend Dodopayments::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Product::TaxCategory) }
        OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::Product::TaxCategory::TaggedSymbol) }

        DIGITAL_PRODUCTS = T.let(:digital_products, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
        SAAS = T.let(:saas, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
        E_BOOK = T.let(:e_book, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
        EDTECH = T.let(:edtech, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[Dodopayments::Models::Product::TaxCategory::TaggedSymbol]) }
          def values
          end
        end
      end
    end
  end
end
