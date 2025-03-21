# frozen_string_literal: true

module Dodopayments
  module Models
    class Product < Dodopayments::BaseModel
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
      required :is_recurring, Dodopayments::BooleanModel

      # @!attribute license_key_enabled
      #   Indicates whether the product requires a license key.
      #
      #   @return [Boolean]
      required :license_key_enabled, Dodopayments::BooleanModel

      # @!attribute price
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      required :price, union: -> { Dodopayments::Models::Price }

      # @!attribute product_id
      #   Unique identifier for the product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #     and services.
      #
      #   @return [Symbol, Dodopayments::Models::Product::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::Models::Product::TaxCategory }

      # @!attribute updated_at
      #   Timestamp when the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute addons
      #   Available Addons for subscription products
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::ArrayOf[String], nil?: true

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
      optional :license_key_duration, -> { Dodopayments::Models::LicenseKeyDuration }, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param business_id [String]
      #   # @param created_at [Time]
      #   # @param is_recurring [Boolean]
      #   # @param license_key_enabled [Boolean]
      #   # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      #   # @param product_id [String]
      #   # @param tax_category [Symbol, Dodopayments::Models::Product::TaxCategory]
      #   # @param updated_at [Time]
      #   # @param addons [Array<String>, nil]
      #   # @param description [String, nil]
      #   # @param image [String, nil]
      #   # @param license_key_activation_message [String, nil]
      #   # @param license_key_activations_limit [Integer, nil]
      #   # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #   # @param name [String, nil]
      #   #
      #   def initialize(
      #     business_id:,
      #     created_at:,
      #     is_recurring:,
      #     license_key_enabled:,
      #     price:,
      #     product_id:,
      #     tax_category:,
      #     updated_at:,
      #     addons: nil,
      #     description: nil,
      #     image: nil,
      #     license_key_activation_message: nil,
      #     license_key_activations_limit: nil,
      #     license_key_duration: nil,
      #     name: nil,
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::BaseModel) -> void

      # Represents the different categories of taxation applicable to various products
      #   and services.
      module TaxCategory
        extend Dodopayments::Enum

        DIGITAL_PRODUCTS = :digital_products
        SAAS = :saas
        E_BOOK = :e_book
        EDTECH = :edtech

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
