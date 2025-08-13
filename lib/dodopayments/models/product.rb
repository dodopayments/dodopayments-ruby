# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#create
    class Product < Dodopayments::Internal::Type::BaseModel
      # @!attribute brand_id
      #
      #   @return [String]
      required :brand_id, String

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

      # @!attribute metadata
      #   Additional custom data associated with the product
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute price
      #   Pricing information for the product.
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      required :price, union: -> { Dodopayments::Price }

      # @!attribute product_id
      #   Unique identifier for the product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute tax_category
      #   Tax category associated with the product.
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

      # @!attribute digital_product_delivery
      #
      #   @return [Dodopayments::Models::Product::DigitalProductDelivery, nil]
      optional :digital_product_delivery, -> { Dodopayments::Product::DigitalProductDelivery }, nil?: true

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
      #   Duration of the license key validity, if enabled.
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::LicenseKeyDuration }, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(brand_id:, business_id:, created_at:, is_recurring:, license_key_enabled:, metadata:, price:, product_id:, tax_category:, updated_at:, addons: nil, description: nil, digital_product_delivery: nil, image: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, name: nil)
      #   @param brand_id [String]
      #
      #   @param business_id [String] Unique identifier for the business to which the product belongs.
      #
      #   @param created_at [Time] Timestamp when the product was created.
      #
      #   @param is_recurring [Boolean] Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @param license_key_enabled [Boolean] Indicates whether the product requires a license key.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional custom data associated with the product
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice] Pricing information for the product.
      #
      #   @param product_id [String] Unique identifier for the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Tax category associated with the product.
      #
      #   @param updated_at [Time] Timestamp when the product was last updated.
      #
      #   @param addons [Array<String>, nil] Available Addons for subscription products
      #
      #   @param description [String, nil] Description of the product, optional.
      #
      #   @param digital_product_delivery [Dodopayments::Models::Product::DigitalProductDelivery, nil]
      #
      #   @param image [String, nil] URL of the product image, optional.
      #
      #   @param license_key_activation_message [String, nil] Message sent upon license key activation, if applicable.
      #
      #   @param license_key_activations_limit [Integer, nil] Limit on the number of activations for the license key, if enabled.
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil] Duration of the license key validity, if enabled.
      #
      #   @param name [String, nil] Name of the product, optional.

      # @see Dodopayments::Models::Product#digital_product_delivery
      class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
        # @!attribute external_url
        #   External URL to digital product
        #
        #   @return [String, nil]
        optional :external_url, String, nil?: true

        # @!attribute files
        #   Uploaded files ids of digital product
        #
        #   @return [Array<Dodopayments::Models::Product::DigitalProductDelivery::File>, nil]
        optional :files,
                 -> {
                   Dodopayments::Internal::Type::ArrayOf[Dodopayments::Product::DigitalProductDelivery::File]
                 },
                 nil?: true

        # @!attribute instructions
        #   Instructions to download and use the digital product
        #
        #   @return [String, nil]
        optional :instructions, String, nil?: true

        # @!method initialize(external_url: nil, files: nil, instructions: nil)
        #   @param external_url [String, nil] External URL to digital product
        #
        #   @param files [Array<Dodopayments::Models::Product::DigitalProductDelivery::File>, nil] Uploaded files ids of digital product
        #
        #   @param instructions [String, nil] Instructions to download and use the digital product

        class File < Dodopayments::Internal::Type::BaseModel
          # @!attribute file_id
          #
          #   @return [String]
          required :file_id, String

          # @!attribute file_name
          #
          #   @return [String]
          required :file_name, String

          # @!attribute url
          #
          #   @return [String]
          required :url, String

          # @!method initialize(file_id:, file_name:, url:)
          #   @param file_id [String]
          #   @param file_name [String]
          #   @param url [String]
        end
      end
    end
  end
end
