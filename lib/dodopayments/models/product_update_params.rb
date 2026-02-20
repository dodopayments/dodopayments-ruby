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

      # @!attribute credit_entitlements
      #   Credit entitlements to update (replaces all existing when present) Send empty
      #   array to remove all, omit field to leave unchanged
      #
      #   @return [Array<Dodopayments::Models::ProductUpdateParams::CreditEntitlement>, nil]
      optional :credit_entitlements,
               -> {
                 Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductUpdateParams::CreditEntitlement]
               },
               nil?: true

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

      # @!attribute metadata
      #   Additional metadata for the product
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute name
      #   Name of the product, optional and must be at most 100 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute price
      #   Price details of the product.
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice, nil]
      optional :price, union: -> { Dodopayments::Price }, nil?: true

      # @!attribute tax_category
      #   Tax category of the product.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory, nil]
      optional :tax_category, enum: -> { Dodopayments::TaxCategory }, nil?: true

      # @!method initialize(addons: nil, brand_id: nil, credit_entitlements: nil, description: nil, digital_product_delivery: nil, image_id: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, metadata: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductUpdateParams} for more details.
      #
      #   @param addons [Array<String>, nil] Available Addons for subscription products
      #
      #   @param brand_id [String, nil]
      #
      #   @param credit_entitlements [Array<Dodopayments::Models::ProductUpdateParams::CreditEntitlement>, nil] Credit entitlements to update (replaces all existing when present)
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
      #   @param metadata [Hash{Symbol=>String}, nil] Additional metadata for the product
      #
      #   @param name [String, nil] Name of the product, optional and must be at most 100 characters.
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice, nil] Price details of the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory, nil] Tax category of the product.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class CreditEntitlement < Dodopayments::Internal::Type::BaseModel
        # @!attribute credit_entitlement_id
        #   ID of the credit entitlement to attach
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credits_amount
        #   Number of credits to grant when this product is purchased
        #
        #   @return [String]
        required :credits_amount, String

        # @!attribute credits_reduce_overage
        #   Whether new credit grants reduce existing overage
        #
        #   @return [Boolean, nil]
        optional :credits_reduce_overage, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute currency
        #   Currency for credit-related pricing
        #
        #   @return [Symbol, Dodopayments::Models::Currency, nil]
        optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

        # @!attribute expires_after_days
        #   Number of days after which credits expire
        #
        #   @return [Integer, nil]
        optional :expires_after_days, Integer, nil?: true

        # @!attribute low_balance_threshold_percent
        #   Balance threshold percentage for low balance notifications (0-100)
        #
        #   @return [Integer, nil]
        optional :low_balance_threshold_percent, Integer, nil?: true

        # @!attribute max_rollover_count
        #   Maximum number of rollover cycles allowed
        #
        #   @return [Integer, nil]
        optional :max_rollover_count, Integer, nil?: true

        # @!attribute overage_charge_at_billing
        #   Whether overage charges are applied at billing time
        #
        #   @return [Boolean, nil]
        optional :overage_charge_at_billing, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute overage_enabled
        #   Whether overage usage is allowed beyond credit balance
        #
        #   @return [Boolean, nil]
        optional :overage_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute overage_limit
        #   Maximum amount of overage allowed
        #
        #   @return [String, nil]
        optional :overage_limit, String, nil?: true

        # @!attribute preserve_overage_at_reset
        #   Whether to preserve overage balance when credits reset
        #
        #   @return [Boolean, nil]
        optional :preserve_overage_at_reset, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute price_per_unit
        #   Price per credit unit for purchasing additional credits
        #
        #   @return [String, nil]
        optional :price_per_unit, String, nil?: true

        # @!attribute proration_behavior
        #   Proration behavior for credit grants during plan changes
        #
        #   @return [Symbol, Dodopayments::Models::ProductUpdateParams::CreditEntitlement::ProrationBehavior, nil]
        optional :proration_behavior,
                 enum: -> { Dodopayments::ProductUpdateParams::CreditEntitlement::ProrationBehavior },
                 nil?: true

        # @!attribute rollover_enabled
        #   Whether unused credits can roll over to the next billing period
        #
        #   @return [Boolean, nil]
        optional :rollover_enabled, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute rollover_percentage
        #   Percentage of unused credits that can roll over (0-100)
        #
        #   @return [Integer, nil]
        optional :rollover_percentage, Integer, nil?: true

        # @!attribute rollover_timeframe_count
        #   Number of timeframe units for rollover window
        #
        #   @return [Integer, nil]
        optional :rollover_timeframe_count, Integer, nil?: true

        # @!attribute rollover_timeframe_interval
        #   Time interval for rollover window (day, week, month, year)
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
        optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

        # @!attribute trial_credits
        #   Credits granted during trial period
        #
        #   @return [String, nil]
        optional :trial_credits, String, nil?: true

        # @!attribute trial_credits_expire_after_trial
        #   Whether trial credits expire when trial ends
        #
        #   @return [Boolean, nil]
        optional :trial_credits_expire_after_trial, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(credit_entitlement_id:, credits_amount:, credits_reduce_overage: nil, currency: nil, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_charge_at_billing: nil, overage_enabled: nil, overage_limit: nil, preserve_overage_at_reset: nil, price_per_unit: nil, proration_behavior: nil, rollover_enabled: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil, trial_credits: nil, trial_credits_expire_after_trial: nil)
        #   Request struct for attaching a credit entitlement to a product
        #
        #   @param credit_entitlement_id [String] ID of the credit entitlement to attach
        #
        #   @param credits_amount [String] Number of credits to grant when this product is purchased
        #
        #   @param credits_reduce_overage [Boolean, nil] Whether new credit grants reduce existing overage
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency for credit-related pricing
        #
        #   @param expires_after_days [Integer, nil] Number of days after which credits expire
        #
        #   @param low_balance_threshold_percent [Integer, nil] Balance threshold percentage for low balance notifications (0-100)
        #
        #   @param max_rollover_count [Integer, nil] Maximum number of rollover cycles allowed
        #
        #   @param overage_charge_at_billing [Boolean, nil] Whether overage charges are applied at billing time
        #
        #   @param overage_enabled [Boolean, nil] Whether overage usage is allowed beyond credit balance
        #
        #   @param overage_limit [String, nil] Maximum amount of overage allowed
        #
        #   @param preserve_overage_at_reset [Boolean, nil] Whether to preserve overage balance when credits reset
        #
        #   @param price_per_unit [String, nil] Price per credit unit for purchasing additional credits
        #
        #   @param proration_behavior [Symbol, Dodopayments::Models::ProductUpdateParams::CreditEntitlement::ProrationBehavior, nil] Proration behavior for credit grants during plan changes
        #
        #   @param rollover_enabled [Boolean, nil] Whether unused credits can roll over to the next billing period
        #
        #   @param rollover_percentage [Integer, nil] Percentage of unused credits that can roll over (0-100)
        #
        #   @param rollover_timeframe_count [Integer, nil] Number of timeframe units for rollover window
        #
        #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil] Time interval for rollover window (day, week, month, year)
        #
        #   @param trial_credits [String, nil] Credits granted during trial period
        #
        #   @param trial_credits_expire_after_trial [Boolean, nil] Whether trial credits expire when trial ends

        # Proration behavior for credit grants during plan changes
        #
        # @see Dodopayments::Models::ProductUpdateParams::CreditEntitlement#proration_behavior
        module ProrationBehavior
          extend Dodopayments::Internal::Type::Enum

          PRORATE = :prorate
          NO_PRORATE = :no_prorate

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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
