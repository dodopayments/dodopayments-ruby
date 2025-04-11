# frozen_string_literal: true

module Dodopayments
  module Models
    class ProductUpdateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute addons
      #   Available Addons for subscription products
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::ArrayOf[String], nil?: true

      # @!attribute description
      #   Description of the product, optional and must be at most 1000 characters.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image_id
      #   Product image id after its uploaded to S3
      #
      #   @return [String, nil]
      optional :image_id, String, nil?: true

      # @!attribute license_key_activation_message
      #   Message sent to the customer upon license key activation.
      #
      #     Only applicable if `license_key_enabled` is `true`. This message contains
      #     instructions for activating the license key.
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   Limit for the number of activations for the license key.
      #
      #     Only applicable if `license_key_enabled` is `true`. Represents the maximum
      #     number of times the license key can be activated.
      #
      #   @return [Integer, nil]
      optional :license_key_activations_limit, Integer, nil?: true

      # @!attribute license_key_duration
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::Models::LicenseKeyDuration }, nil?: true

      # @!attribute license_key_enabled
      #   Whether the product requires a license key.
      #
      #     If `true`, additional fields related to license key (duration, activations
      #     limit, activation message) become applicable.
      #
      #   @return [Boolean, nil]
      optional :license_key_enabled, Dodopayments::BooleanModel, nil?: true

      # @!attribute name
      #   Name of the product, optional and must be at most 100 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute price
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      optional :price, union: -> { Dodopayments::Models::Price }, nil?: true

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #     and services.
      #
      #   @return [Symbol, Dodopayments::Models::ProductUpdateParams::TaxCategory, nil]
      optional :tax_category, enum: -> { Dodopayments::Models::ProductUpdateParams::TaxCategory }, nil?: true

      # @!parse
      #   # @param addons [Array<String>, nil]
      #   # @param description [String, nil]
      #   # @param image_id [String, nil]
      #   # @param license_key_activation_message [String, nil]
      #   # @param license_key_activations_limit [Integer, nil]
      #   # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #   # @param license_key_enabled [Boolean, nil]
      #   # @param name [String, nil]
      #   # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      #   # @param tax_category [Symbol, Dodopayments::Models::ProductUpdateParams::TaxCategory, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     addons: nil,
      #     description: nil,
      #     image_id: nil,
      #     license_key_activation_message: nil,
      #     license_key_activations_limit: nil,
      #     license_key_duration: nil,
      #     license_key_enabled: nil,
      #     name: nil,
      #     price: nil,
      #     tax_category: nil,
      #     request_options: {},
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
