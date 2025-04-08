# typed: strong

module Dodopayments
  module Models
    class Product < Dodopayments::Internal::Type::BaseModel
      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      attr_accessor :is_recurring

      # Indicates whether the product requires a license key.
      sig { returns(T::Boolean) }
      attr_accessor :license_key_enabled

      sig { returns(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)) }
      attr_accessor :price

      # Unique identifier for the product.
      sig { returns(String) }
      attr_accessor :product_id

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(Dodopayments::Models::Product::TaxCategory::TaggedSymbol) }
      attr_accessor :tax_category

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Message sent upon license key activation, if applicable.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # Limit on the number of activations for the license key, if enabled.
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

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          business_id: String,
          created_at: Time,
          is_recurring: T::Boolean,
          license_key_enabled: T::Boolean,
          price: T.any(
            Dodopayments::Models::Price::OneTimePrice,
            Dodopayments::Internal::AnyHash,
            Dodopayments::Models::Price::RecurringPrice
          ),
          product_id: String,
          tax_category: Dodopayments::Models::Product::TaxCategory::OrSymbol,
          updated_at: Time,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          image: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration: T.nilable(T.any(Dodopayments::Models::LicenseKeyDuration, Dodopayments::Internal::AnyHash)),
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
      ); end
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
      def to_hash; end

      # Represents the different categories of taxation applicable to various products
      # and services.
      module TaxCategory
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Product::TaxCategory) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, Dodopayments::Models::Product::TaxCategory::TaggedSymbol) }

        DIGITAL_PRODUCTS = T.let(:digital_products, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
        SAAS = T.let(:saas, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
        E_BOOK = T.let(:e_book, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)
        EDTECH = T.let(:edtech, Dodopayments::Models::Product::TaxCategory::TaggedSymbol)

        sig { override.returns(T::Array[Dodopayments::Models::Product::TaxCategory::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
