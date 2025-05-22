# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#create
    class Product < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute license_key_enabled
      #   Indicates whether the product requires a license key.
      #
      #   @return [Boolean]
      required :license_key_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute price
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      required :price, union: -> { Dodopayments::Price }

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
      required :tax_category, enum: -> { Dodopayments::TaxCategory }

      # @!attribute updated_at
      #   Timestamp when the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute addons
      #   Available Addons for subscription products
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

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

      # @!attribute license_key_activation_message
      #   Message sent upon license key activation, if applicable.
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   Limit on the number of activations for the license key, if enabled.
      #
      #   @return [Integer, nil]
      optional :license_key_activations_limit, Integer, nil?: true

      # @!attribute license_key_duration
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::LicenseKeyDuration }, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(business_id:, created_at:, is_recurring:, license_key_enabled:, price:, product_id:, tax_category:, updated_at:, addons: nil, description: nil, image: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Product} for more details.
      #
      #   @param business_id [String] Unique identifier for the business to which the product belongs.
      #
      #   @param created_at [Time] Timestamp when the product was created.
      #
      #   @param is_recurring [Boolean] Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @param license_key_enabled [Boolean] Indicates whether the product requires a license key.
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      #
      #   @param product_id [String] Unique identifier for the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
      #
      #   @param updated_at [Time] Timestamp when the product was last updated.
      #
      #   @param addons [Array<String>, nil] Available Addons for subscription products
      #
      #   @param description [String, nil] Description of the product, optional.
      #
      #   @param image [String, nil] URL of the product image, optional.
      #
      #   @param license_key_activation_message [String, nil] Message sent upon license key activation, if applicable.
      #
      #   @param license_key_activations_limit [Integer, nil] Limit on the number of activations for the license key, if enabled.
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #
      #   @param name [String, nil] Name of the product, optional.
    end
  end
end
