# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#create
    class ProductCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute price
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      required :price, union: -> { Dodopayments::Price }

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #   and services.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::TaxCategory }

      # @!attribute addons
      #   Addons available for subscription product
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

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
      optional :license_key_duration, -> { Dodopayments::LicenseKeyDuration }, nil?: true

      # @!attribute license_key_enabled
      #   When true, generates and sends a license key to your customer. Defaults to false
      #
      #   @return [Boolean, nil]
      optional :license_key_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute name
      #   Optional name of the product
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(price:, tax_category:, addons: nil, description: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductCreateParams} for more details.
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
      #
      #   @param addons [Array<String>, nil] Addons available for subscription product
      #
      #   @param description [String, nil] Optional description of the product
      #
      #   @param license_key_activation_message [String, nil] Optional message displayed during license key activation
      #
      #   @param license_key_activations_limit [Integer, nil] The number of times the license key can be activated.
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #
      #   @param license_key_enabled [Boolean, nil] When true, generates and sends a license key to your customer.
      #
      #   @param name [String, nil] Optional name of the product
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
