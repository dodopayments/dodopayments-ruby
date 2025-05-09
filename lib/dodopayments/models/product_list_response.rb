# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#list
    class ProductListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   Unique identifier for the business to which the product belongs.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute is_recurring
      #   Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @return [Boolean]
      required :is_recurring, Dodopayments::Internal::Type::Boolean

      # @!attribute product_id
      #   Unique identifier for the product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #   and services.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::Models::TaxCategory }

      # @!attribute updated_at
      #   Timestamp when the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Models::Currency }, nil?: true

      # @!attribute description
      #   Description of the product, optional.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   URL of the product image, optional.
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute price
      #   Price of the product, optional.
      #
      #   The price is represented in the lowest denomination of the currency. For
      #   example:
      #
      #   - In USD, a price of `$12.34` would be represented as `1234` (cents).
      #   - In JPY, a price of `¥1500` would be represented as `1500` (yen).
      #   - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
      #
      #   This ensures precision and avoids floating-point rounding errors.
      #
      #   @return [Integer, nil]
      optional :price, Integer, nil?: true

      # @!attribute price_detail
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      optional :price_detail, union: -> { Dodopayments::Models::Price }, nil?: true

      # @!attribute tax_inclusive
      #   Indicates if the price is tax inclusive
      #
      #   @return [Boolean, nil]
      optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!method initialize(business_id:, created_at:, is_recurring:, product_id:, tax_category:, updated_at:, currency: nil, description: nil, image: nil, name: nil, price: nil, price_detail: nil, tax_inclusive: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductListResponse} for more details.
      #
      #   @param business_id [String] Unique identifier for the business to which the product belongs.
      #
      #   @param created_at [Time] Timestamp when the product was created.
      #
      #   @param is_recurring [Boolean] Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @param product_id [String] Unique identifier for the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
      #   ...
      #
      #   @param updated_at [Time] Timestamp when the product was last updated.
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil]
      #
      #   @param description [String, nil] Description of the product, optional.
      #
      #   @param image [String, nil] URL of the product image, optional.
      #
      #   @param name [String, nil] Name of the product, optional.
      #
      #   @param price [Integer, nil] Price of the product, optional. ...
      #
      #   @param price_detail [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      #
      #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive
    end
  end
end
