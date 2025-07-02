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

      # @!attribute brand_id
      #
      #   @return [String, nil]
      optional :brand_id, String, nil?: true

      # @!attribute description
      #   Description of the product, optional and must be at most 1000 characters.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute digital_product_delivery
      #   Choose how you would like you digital product delivered
      #
      #   @return [Dodopayments::Models::ProductUpdateParams::DigitalProductDelivery, nil]
      optional :digital_product_delivery,
               -> { Dodopayments::ProductUpdateParams::DigitalProductDelivery },
               nil?: true

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
      #   Duration of the license key if enabled.
      #
      #   Only applicable if `license_key_enabled` is `true`. Represents the duration in
      #   days for which the license key is valid.
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::LicenseKeyDuration }, nil?: true

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
      #   Price details of the product.
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      optional :price, union: -> { Dodopayments::Price }, nil?: true

      # @!attribute tax_category
      #   Tax category of the product.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory, nil]
      optional :tax_category, enum: -> { Dodopayments::TaxCategory }, nil?: true

      # @!method initialize(addons: nil, brand_id: nil, description: nil, digital_product_delivery: nil, image_id: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductUpdateParams} for more details.
      #
      #   @param addons [Array<String>, nil] Available Addons for subscription products
      #
      #   @param brand_id [String, nil]
      #
      #   @param description [String, nil] Description of the product, optional and must be at most 1000 characters.
      #
      #   @param digital_product_delivery [Dodopayments::Models::ProductUpdateParams::DigitalProductDelivery, nil] Choose how you would like you digital product delivered
      #
      #   @param image_id [String, nil] Product image id after its uploaded to S3
      #
      #   @param license_key_activation_message [String, nil] Message sent to the customer upon license key activation.
      #
      #   @param license_key_activations_limit [Integer, nil] Limit for the number of activations for the license key.
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil] Duration of the license key if enabled.
      #
      #   @param license_key_enabled [Boolean, nil] Whether the product requires a license key.
      #
      #   @param name [String, nil] Name of the product, optional and must be at most 100 characters.
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil] Price details of the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory, nil] Tax category of the product.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
        # @!attribute external_url
        #   External URL to digital product
        #
        #   @return [String, nil]
        optional :external_url, String, nil?: true

        # @!attribute files
        #   Uploaded files ids of digital product
        #
        #   @return [Array<String>, nil]
        optional :files, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute instructions
        #   Instructions to download and use the digital product
        #
        #   @return [String, nil]
        optional :instructions, String, nil?: true

        # @!method initialize(external_url: nil, files: nil, instructions: nil)
        #   Choose how you would like you digital product delivered
        #
        #   @param external_url [String, nil] External URL to digital product
        #
        #   @param files [Array<String>, nil] Uploaded files ids of digital product
        #
        #   @param instructions [String, nil] Instructions to download and use the digital product
      end
    end
  end
end
