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

      # @!attribute credit_entitlements
      #   Attached credit entitlements with settings
      #
      #   @return [Array<Dodopayments::Models::Product::CreditEntitlement>]
      required :credit_entitlements,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Product::CreditEntitlement] }

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
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice]
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

      # @!attribute product_collection_id
      #   The product collection ID this product belongs to, if any
      #
      #   @return [String, nil]
      optional :product_collection_id, String, nil?: true

      # @!method initialize(brand_id:, business_id:, created_at:, credit_entitlements:, is_recurring:, license_key_enabled:, metadata:, price:, product_id:, tax_category:, updated_at:, addons: nil, description: nil, digital_product_delivery: nil, image: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, name: nil, product_collection_id: nil)
      #   @param brand_id [String]
      #
      #   @param business_id [String] Unique identifier for the business to which the product belongs.
      #
      #   @param created_at [Time] Timestamp when the product was created.
      #
      #   @param credit_entitlements [Array<Dodopayments::Models::Product::CreditEntitlement>] Attached credit entitlements with settings
      #
      #   @param is_recurring [Boolean] Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @param license_key_enabled [Boolean] Indicates whether the product requires a license key.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional custom data associated with the product
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice] Pricing information for the product.
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
      #
      #   @param product_collection_id [String, nil] The product collection ID this product belongs to, if any

      class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #   Unique ID of this mapping
        #
        #   @return [String]
        required :id, String

        # @!attribute credit_entitlement_id
        #   ID of the credit entitlement
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credit_entitlement_name
        #   Name of the credit entitlement
        #
        #   @return [String]
        required :credit_entitlement_name, String

        # @!attribute credit_entitlement_unit
        #   Unit label for the credit entitlement
        #
        #   @return [String]
        required :credit_entitlement_unit, String

        # @!attribute credits_amount
        #   Number of credits granted
        #
        #   @return [String]
        required :credits_amount, String

        # @!attribute credits_reduce_overage
        #   Whether new credit grants reduce existing overage
        #
        #   @return [Boolean]
        required :credits_reduce_overage, Dodopayments::Internal::Type::Boolean

        # @!attribute overage_charge_at_billing
        #   Whether overage is charged at billing
        #
        #   @return [Boolean]
        required :overage_charge_at_billing, Dodopayments::Internal::Type::Boolean

        # @!attribute overage_enabled
        #   Whether overage is enabled
        #
        #   @return [Boolean]
        required :overage_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute preserve_overage_at_reset
        #   Whether to preserve overage balance when credits reset
        #
        #   @return [Boolean]
        required :preserve_overage_at_reset, Dodopayments::Internal::Type::Boolean

        # @!attribute proration_behavior
        #   Proration behavior for credit grants during plan changes
        #
        #   @return [Symbol, Dodopayments::Models::Product::CreditEntitlement::ProrationBehavior]
        required :proration_behavior, enum: -> { Dodopayments::Product::CreditEntitlement::ProrationBehavior }

        # @!attribute rollover_enabled
        #   Whether rollover is enabled
        #
        #   @return [Boolean]
        required :rollover_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute trial_credits_expire_after_trial
        #   Whether trial credits expire after trial
        #
        #   @return [Boolean]
        required :trial_credits_expire_after_trial, Dodopayments::Internal::Type::Boolean

        # @!attribute currency
        #   Currency
        #
        #   @return [Symbol, Dodopayments::Models::Currency, nil]
        optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

        # @!attribute expires_after_days
        #   Days until credits expire
        #
        #   @return [Integer, nil]
        optional :expires_after_days, Integer, nil?: true

        # @!attribute low_balance_threshold_percent
        #   Low balance threshold percentage
        #
        #   @return [Integer, nil]
        optional :low_balance_threshold_percent, Integer, nil?: true

        # @!attribute max_rollover_count
        #   Maximum rollover cycles
        #
        #   @return [Integer, nil]
        optional :max_rollover_count, Integer, nil?: true

        # @!attribute overage_limit
        #   Overage limit
        #
        #   @return [String, nil]
        optional :overage_limit, String, nil?: true

        # @!attribute price_per_unit
        #   Price per unit
        #
        #   @return [String, nil]
        optional :price_per_unit, String, nil?: true

        # @!attribute rollover_percentage
        #   Rollover percentage
        #
        #   @return [Integer, nil]
        optional :rollover_percentage, Integer, nil?: true

        # @!attribute rollover_timeframe_count
        #   Rollover timeframe count
        #
        #   @return [Integer, nil]
        optional :rollover_timeframe_count, Integer, nil?: true

        # @!attribute rollover_timeframe_interval
        #   Rollover timeframe interval
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
        optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

        # @!attribute trial_credits
        #   Trial credits
        #
        #   @return [String, nil]
        optional :trial_credits, String, nil?: true

        # @!method initialize(id:, credit_entitlement_id:, credit_entitlement_name:, credit_entitlement_unit:, credits_amount:, credits_reduce_overage:, overage_charge_at_billing:, overage_enabled:, preserve_overage_at_reset:, proration_behavior:, rollover_enabled:, trial_credits_expire_after_trial:, currency: nil, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_limit: nil, price_per_unit: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, trial_credits: nil)
        #   Response struct for credit entitlement mapping
        #
        #   @param id [String] Unique ID of this mapping
        #
        #   @param credit_entitlement_id [String] ID of the credit entitlement
        #
        #   @param credit_entitlement_name [String] Name of the credit entitlement
        #
        #   @param credit_entitlement_unit [String] Unit label for the credit entitlement
        #
        #   @param credits_amount [String] Number of credits granted
        #
        #   @param credits_reduce_overage [Boolean] Whether new credit grants reduce existing overage
        #
        #   @param overage_charge_at_billing [Boolean] Whether overage is charged at billing
        #
        #   @param overage_enabled [Boolean] Whether overage is enabled
        #
        #   @param preserve_overage_at_reset [Boolean] Whether to preserve overage balance when credits reset
        #
        #   @param proration_behavior [Symbol, Dodopayments::Models::Product::CreditEntitlement::ProrationBehavior] Proration behavior for credit grants during plan changes
        #
        #   @param rollover_enabled [Boolean] Whether rollover is enabled
        #
        #   @param trial_credits_expire_after_trial [Boolean] Whether trial credits expire after trial
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency
        #
        #   @param expires_after_days [Integer, nil] Days until credits expire
        #
        #   @param low_balance_threshold_percent [Integer, nil] Low balance threshold percentage
        #
        #   @param max_rollover_count [Integer, nil] Maximum rollover cycles
        #
        #   @param overage_limit [String, nil] Overage limit
        #
        #   @param price_per_unit [String, nil] Price per unit
        #
        #   @param rollover_percentage [Integer, nil] Rollover percentage
        #
        #   @param rollover_timeframe_count [Integer, nil] Rollover timeframe count
        #
        #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Rollover timeframe interval
        #
        #   @param trial_credits [String, nil] Trial credits

        # Proration behavior for credit grants during plan changes
        #
        # @see Dodopayments::Models::Product::CreditEntitlement#proration_behavior
        module ProrationBehavior
          extend Dodopayments::Internal::Type::Enum

          PRORATE = :prorate
          NO_PRORATE = :no_prorate

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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
