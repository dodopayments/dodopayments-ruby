# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#update
    class ProductUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute addons
      #   Available Addons for subscription products
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

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
      #   Only applicable if `license_key_enabled` is `true`. This message contains
      #   instructions for activating the license key.
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   Limit for the number of activations for the license key.
      #
      #   Only applicable if `license_key_enabled` is `true`. Represents the maximum
      #   number of times the license key can be activated.
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
      #   If `true`, additional fields related to license key (duration, activations
      #   limit, activation message) become applicable.
      #
      #   @return [Boolean, nil]
      optional :license_key_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

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
      #   and services.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory, nil]
      optional :tax_category, enum: -> { Dodopayments::Models::TaxCategory }, nil?: true

      # @!method initialize(addons: nil, description: nil, image_id: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductUpdateParams} for more details.
      #
      #   @param addons [Array<String>, nil] Available Addons for subscription products
      #
      #   @param description [String, nil] Description of the product, optional and must be at most 1000 characters.
      #
      #   @param image_id [String, nil] Product image id after its uploaded to S3
      #
      #   @param license_key_activation_message [String, nil] Message sent to the customer upon license key activation. ...
      #
      #   @param license_key_activations_limit [Integer, nil] Limit for the number of activations for the license key. ...
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #
      #   @param license_key_enabled [Boolean, nil] Whether the product requires a license key. ...
      #
      #   @param name [String, nil] Name of the product, optional and must be at most 100 characters.
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory, nil] Represents the different categories of taxation applicable to various products a
      #   ...
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
