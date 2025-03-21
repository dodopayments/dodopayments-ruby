# frozen_string_literal: true

module Dodopayments
  module Models
    class ProductCreateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute price
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      required :price, union: -> { Dodopayments::Models::Price }

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #     and services.
      #
      #   @return [Symbol, Dodopayments::Models::ProductCreateParams::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::Models::ProductCreateParams::TaxCategory }

      # @!attribute addons
      #   Addons available for subscription product
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::ArrayOf[String], nil?: true

      # @!attribute description
      #   Optional description of the product
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute license_key_activation_message
      #   Optional message displayed during license key activation
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   The number of times the license key can be activated. Must be 0 or greater
      #
      #   @return [Integer, nil]
      optional :license_key_activations_limit, Integer, nil?: true

      # @!attribute license_key_duration
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::Models::LicenseKeyDuration }, nil?: true

      # @!attribute license_key_enabled
      #   When true, generates and sends a license key to your customer. Defaults to false
      #
      #   @return [Boolean, nil]
      optional :license_key_enabled, Dodopayments::BooleanModel, nil?: true

      # @!attribute name
      #   Optional name of the product
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!parse
      #   # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      #   # @param tax_category [Symbol, Dodopayments::Models::ProductCreateParams::TaxCategory]
      #   # @param addons [Array<String>, nil]
      #   # @param description [String, nil]
      #   # @param license_key_activation_message [String, nil]
      #   # @param license_key_activations_limit [Integer, nil]
      #   # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #   # @param license_key_enabled [Boolean, nil]
      #   # @param name [String, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     price:,
      #     tax_category:,
      #     addons: nil,
      #     description: nil,
      #     license_key_activation_message: nil,
      #     license_key_activations_limit: nil,
      #     license_key_duration: nil,
      #     license_key_enabled: nil,
      #     name: nil,
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
