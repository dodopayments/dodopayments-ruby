# typed: strong

module Dodopayments
  module Models
    class ProductListResponse < Dodopayments::Internal::Type::BaseModel
      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      attr_accessor :is_recurring

      # Unique identifier for the product.
      sig { returns(String) }
      attr_accessor :product_id

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(Dodopayments::Models::TaxCategory::TaggedSymbol) }
      attr_accessor :tax_category

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(Dodopayments::Models::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Price of the product, optional.
      #
      # The price is represented in the lowest denomination of the currency. For
      # example:
      #
      # - In USD, a price of `$12.34` would be represented as `1234` (cents).
      # - In JPY, a price of `¥1500` would be represented as `1500` (yen).
      # - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
      #
      # This ensures precision and avoids floating-point rounding errors.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :price

      sig do
        returns(
          T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice))
        )
      end
      attr_accessor :price_detail

      # Indicates if the price is tax inclusive
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :tax_inclusive

      sig do
        params(
          business_id: String,
          created_at: Time,
          is_recurring: T::Boolean,
          product_id: String,
          tax_category: Dodopayments::Models::TaxCategory::OrSymbol,
          updated_at: Time,
          currency: T.nilable(Dodopayments::Models::Currency::OrSymbol),
          description: T.nilable(String),
          image: T.nilable(String),
          name: T.nilable(String),
          price: T.nilable(Integer),
          price_detail: T.nilable(
            T.any(
              Dodopayments::Models::Price::OneTimePrice,
              Dodopayments::Internal::AnyHash,
              Dodopayments::Models::Price::RecurringPrice
            )
          ),
          tax_inclusive: T.nilable(T::Boolean)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the business to which the product belongs.
        business_id:,
        # Timestamp when the product was created.
        created_at:,
        # Indicates if the product is recurring (e.g., subscriptions).
        is_recurring:,
        # Unique identifier for the product.
        product_id:,
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category:,
        # Timestamp when the product was last updated.
        updated_at:,
        currency: nil,
        # Description of the product, optional.
        description: nil,
        # URL of the product image, optional.
        image: nil,
        # Name of the product, optional.
        name: nil,
        # Price of the product, optional.
        #
        # The price is represented in the lowest denomination of the currency. For
        # example:
        #
        # - In USD, a price of `$12.34` would be represented as `1234` (cents).
        # - In JPY, a price of `¥1500` would be represented as `1500` (yen).
        # - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
        #
        # This ensures precision and avoids floating-point rounding errors.
        price: nil,
        price_detail: nil,
        # Indicates if the price is tax inclusive
        tax_inclusive: nil
      ); end
      sig do
        override
          .returns(
            {
              business_id: String,
              created_at: Time,
              is_recurring: T::Boolean,
              product_id: String,
              tax_category: Dodopayments::Models::TaxCategory::TaggedSymbol,
              updated_at: Time,
              currency: T.nilable(Dodopayments::Models::Currency::TaggedSymbol),
              description: T.nilable(String),
              image: T.nilable(String),
              name: T.nilable(String),
              price: T.nilable(Integer),
              price_detail: T.nilable(T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)),
              tax_inclusive: T.nilable(T::Boolean)
            }
          )
      end
      def to_hash; end
    end
  end
end
