# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#create
    class ProductCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute name
      #   Name of the product
      #
      #   @return [String]
      required :name, String

      # @!attribute price
      #   Price configuration for the product
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice]
      required :price, union: -> { Dodopayments::Price }

      # @!attribute tax_category
      #   Tax category applied to this product
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::TaxCategory }

      # @!attribute addons
      #   Addons available for subscription product
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute brand_id
      #   Brand id for the product, if not provided will default to primary brand
      #
      #   @return [String, nil]
      optional :brand_id, String, nil?: true

      # @!attribute credit_entitlements
      #   Optional credit entitlements to attach (max 3)
      #
      #   @return [Array<Dodopayments::Models::AttachCreditEntitlement>, nil]
      optional :credit_entitlements,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachCreditEntitlement] },
               nil?: true

      # @!attribute description
      #   Optional description of the product
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute digital_product_delivery
      #   Choose how you would like you digital product delivered
      #
      #   deprecated: use entitlements instead
      #
      #   @return [Dodopayments::Models::ProductCreateParams::DigitalProductDelivery, nil]
      optional :digital_product_delivery,
               -> { Dodopayments::ProductCreateParams::DigitalProductDelivery },
               nil?: true

      # @!attribute entitlements
      #   Optional entitlements to attach to this product (max 20)
      #
      #   @return [Array<Dodopayments::Models::AttachProductEntitlement>, nil]
      optional :entitlements,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachProductEntitlement] },
               nil?: true

      # @!attribute license_key_activation_message
      #   @deprecated
      #
      #   Optional message displayed during license key activation
      #
      #   deprecated: use entitlements instead. Ignored when a `license_key` entitlement
      #   is attached via the `entitlements` field.
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   @deprecated
      #
      #   The number of times the license key can be activated. Must be 0 or greater
      #
      #   deprecated: use entitlements instead. Ignored when a `license_key` entitlement
      #   is attached via the `entitlements` field.
      #
      #   @return [Integer, nil]
      optional :license_key_activations_limit, Integer, nil?: true

      # @!attribute license_key_duration
      #   Duration configuration for the license key. Set to null if you don't want the
      #   license key to expire. For subscriptions, the lifetime of the license key is
      #   tied to the subscription period
      #
      #   deprecated: use entitlements instead. Ignored when a `license_key` entitlement
      #   is attached via the `entitlements` field.
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::LicenseKeyDuration }, nil?: true

      # @!attribute license_key_enabled
      #   @deprecated
      #
      #   When true, generates and sends a license key to your customer. Defaults to false
      #
      #   deprecated: use entitlements instead. If a `license_key` entitlement is also
      #   attached via the `entitlements` field, the `license_key_*` config fields below
      #   are ignored — the attached entitlement's config is the source of truth.
      #
      #   @return [Boolean, nil]
      optional :license_key_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute metadata
      #   Additional metadata for the product
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!method initialize(name:, price:, tax_category:, addons: nil, brand_id: nil, credit_entitlements: nil, description: nil, digital_product_delivery: nil, entitlements: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductCreateParams} for more details.
      #
      #   @param name [String] Name of the product
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice] Price configuration for the product
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Tax category applied to this product
      #
      #   @param addons [Array<String>, nil] Addons available for subscription product
      #
      #   @param brand_id [String, nil] Brand id for the product, if not provided will default to primary brand
      #
      #   @param credit_entitlements [Array<Dodopayments::Models::AttachCreditEntitlement>, nil] Optional credit entitlements to attach (max 3)
      #
      #   @param description [String, nil] Optional description of the product
      #
      #   @param digital_product_delivery [Dodopayments::Models::ProductCreateParams::DigitalProductDelivery, nil] Choose how you would like you digital product delivered
      #
      #   @param entitlements [Array<Dodopayments::Models::AttachProductEntitlement>, nil] Optional entitlements to attach to this product (max 20)
      #
      #   @param license_key_activation_message [String, nil] Optional message displayed during license key activation
      #
      #   @param license_key_activations_limit [Integer, nil] The number of times the license key can be activated.
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil] Duration configuration for the license key.
      #
      #   @param license_key_enabled [Boolean, nil] When true, generates and sends a license key to your customer.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata for the product
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class DigitalProductDelivery < Dodopayments::Internal::Type::BaseModel
        # @!attribute external_url
        #   External URL to digital product
        #
        #   @return [String, nil]
        optional :external_url, String, nil?: true

        # @!attribute instructions
        #   Instructions to download and use the digital product
        #
        #   @return [String, nil]
        optional :instructions, String, nil?: true

        # @!method initialize(external_url: nil, instructions: nil)
        #   Choose how you would like you digital product delivered
        #
        #   deprecated: use entitlements instead
        #
        #   @param external_url [String, nil] External URL to digital product
        #
        #   @param instructions [String, nil] Instructions to download and use the digital product
      end
    end
  end
end
