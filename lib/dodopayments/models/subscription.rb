# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#retrieve
    class Subscription < Dodopayments::Internal::Type::BaseModel
      # @!attribute addons
      #   Addons associated with this subscription
      #
      #   @return [Array<Dodopayments::Models::AddonCartResponseItem>]
      required :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AddonCartResponseItem] }

      # @!attribute billing
      #   Billing address details for payments
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::BillingAddress }

      # @!attribute cancel_at_next_billing_date
      #   Indicates if the subscription will cancel at the next billing date
      #
      #   @return [Boolean]
      required :cancel_at_next_billing_date, Dodopayments::Internal::Type::Boolean

      # @!attribute created_at
      #   Timestamp when the subscription was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute credit_entitlement_cart
      #   Credit entitlement cart settings for this subscription
      #
      #   @return [Array<Dodopayments::Models::Subscription::CreditEntitlementCart>]
      required :credit_entitlement_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Subscription::CreditEntitlementCart] }

      # @!attribute currency
      #   Currency used for the subscription payments
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #   Customer details associated with the subscription
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute metadata
      #   Additional custom data associated with the subscription
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute meter_credit_entitlement_cart
      #   Meter credit entitlement cart settings for this subscription
      #
      #   @return [Array<Dodopayments::Models::Subscription::MeterCreditEntitlementCart>]
      required :meter_credit_entitlement_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Subscription::MeterCreditEntitlementCart] }

      # @!attribute meters
      #   Meters associated with this subscription (for usage-based billing)
      #
      #   @return [Array<Dodopayments::Models::Subscription::Meter>]
      required :meters, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Subscription::Meter] }

      # @!attribute next_billing_date
      #   Timestamp of the next scheduled billing. Indicates the end of current billing
      #   period
      #
      #   @return [Time]
      required :next_billing_date, Time

      # @!attribute on_demand
      #   Wether the subscription is on-demand or not
      #
      #   @return [Boolean]
      required :on_demand, Dodopayments::Internal::Type::Boolean

      # @!attribute payment_frequency_count
      #   Number of payment frequency intervals
      #
      #   @return [Integer]
      required :payment_frequency_count, Integer

      # @!attribute payment_frequency_interval
      #   Time interval for payment frequency (e.g. month, year)
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval]
      required :payment_frequency_interval, enum: -> { Dodopayments::TimeInterval }

      # @!attribute previous_billing_date
      #   Timestamp of the last payment. Indicates the start of current billing period
      #
      #   @return [Time]
      required :previous_billing_date, Time

      # @!attribute product_id
      #   Identifier of the product associated with this subscription
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #   Number of units/items included in the subscription
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute recurring_pre_tax_amount
      #   Amount charged before tax for each recurring payment in smallest currency unit
      #   (e.g. cents)
      #
      #   @return [Integer]
      required :recurring_pre_tax_amount, Integer

      # @!attribute status
      #   Current status of the subscription
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionStatus]
      required :status, enum: -> { Dodopayments::SubscriptionStatus }

      # @!attribute subscription_id
      #   Unique identifier for the subscription
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute subscription_period_count
      #   Number of subscription period intervals
      #
      #   @return [Integer]
      required :subscription_period_count, Integer

      # @!attribute subscription_period_interval
      #   Time interval for the subscription period (e.g. month, year)
      #
      #   @return [Symbol, Dodopayments::Models::TimeInterval]
      required :subscription_period_interval, enum: -> { Dodopayments::TimeInterval }

      # @!attribute tax_inclusive
      #   Indicates if the recurring_pre_tax_amount is tax inclusive
      #
      #   @return [Boolean]
      required :tax_inclusive, Dodopayments::Internal::Type::Boolean

      # @!attribute trial_period_days
      #   Number of days in the trial period (0 if no trial)
      #
      #   @return [Integer]
      required :trial_period_days, Integer

      # @!attribute cancelled_at
      #   Cancelled timestamp if the subscription is cancelled
      #
      #   @return [Time, nil]
      optional :cancelled_at, Time, nil?: true

      # @!attribute custom_field_responses
      #   Customer's responses to custom fields collected during checkout
      #
      #   @return [Array<Dodopayments::Models::Subscription::CustomFieldResponse>, nil]
      optional :custom_field_responses,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Subscription::CustomFieldResponse] },
               nil?: true

      # @!attribute discount_cycles_remaining
      #   Number of remaining discount cycles if discount is applied
      #
      #   @return [Integer, nil]
      optional :discount_cycles_remaining, Integer, nil?: true

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute expires_at
      #   Timestamp when the subscription will expire
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!attribute payment_method_id
      #   Saved payment method id used for recurring charges
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

      # @!attribute tax_id
      #   Tax identifier provided for this subscription (if applicable)
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(addons:, billing:, cancel_at_next_billing_date:, created_at:, credit_entitlement_cart:, currency:, customer:, metadata:, meter_credit_entitlement_cart:, meters:, next_billing_date:, on_demand:, payment_frequency_count:, payment_frequency_interval:, previous_billing_date:, product_id:, quantity:, recurring_pre_tax_amount:, status:, subscription_id:, subscription_period_count:, subscription_period_interval:, tax_inclusive:, trial_period_days:, cancelled_at: nil, custom_field_responses: nil, discount_cycles_remaining: nil, discount_id: nil, expires_at: nil, payment_method_id: nil, tax_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Subscription} for more details.
      #
      #   Response struct representing subscription details
      #
      #   @param addons [Array<Dodopayments::Models::AddonCartResponseItem>] Addons associated with this subscription
      #
      #   @param billing [Dodopayments::Models::BillingAddress] Billing address details for payments
      #
      #   @param cancel_at_next_billing_date [Boolean] Indicates if the subscription will cancel at the next billing date
      #
      #   @param created_at [Time] Timestamp when the subscription was created
      #
      #   @param credit_entitlement_cart [Array<Dodopayments::Models::Subscription::CreditEntitlementCart>] Credit entitlement cart settings for this subscription
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency] Currency used for the subscription payments
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Customer details associated with the subscription
      #
      #   @param metadata [Hash{Symbol=>String}] Additional custom data associated with the subscription
      #
      #   @param meter_credit_entitlement_cart [Array<Dodopayments::Models::Subscription::MeterCreditEntitlementCart>] Meter credit entitlement cart settings for this subscription
      #
      #   @param meters [Array<Dodopayments::Models::Subscription::Meter>] Meters associated with this subscription (for usage-based billing)
      #
      #   @param next_billing_date [Time] Timestamp of the next scheduled billing. Indicates the end of current billing pe
      #
      #   @param on_demand [Boolean] Wether the subscription is on-demand or not
      #
      #   @param payment_frequency_count [Integer] Number of payment frequency intervals
      #
      #   @param payment_frequency_interval [Symbol, Dodopayments::Models::TimeInterval] Time interval for payment frequency (e.g. month, year)
      #
      #   @param previous_billing_date [Time] Timestamp of the last payment. Indicates the start of current billing period
      #
      #   @param product_id [String] Identifier of the product associated with this subscription
      #
      #   @param quantity [Integer] Number of units/items included in the subscription
      #
      #   @param recurring_pre_tax_amount [Integer] Amount charged before tax for each recurring payment in smallest currency unit (
      #
      #   @param status [Symbol, Dodopayments::Models::SubscriptionStatus] Current status of the subscription
      #
      #   @param subscription_id [String] Unique identifier for the subscription
      #
      #   @param subscription_period_count [Integer] Number of subscription period intervals
      #
      #   @param subscription_period_interval [Symbol, Dodopayments::Models::TimeInterval] Time interval for the subscription period (e.g. month, year)
      #
      #   @param tax_inclusive [Boolean] Indicates if the recurring_pre_tax_amount is tax inclusive
      #
      #   @param trial_period_days [Integer] Number of days in the trial period (0 if no trial)
      #
      #   @param cancelled_at [Time, nil] Cancelled timestamp if the subscription is cancelled
      #
      #   @param custom_field_responses [Array<Dodopayments::Models::Subscription::CustomFieldResponse>, nil] Customer's responses to custom fields collected during checkout
      #
      #   @param discount_cycles_remaining [Integer, nil] Number of remaining discount cycles if discount is applied
      #
      #   @param discount_id [String, nil] The discount id if discount is applied
      #
      #   @param expires_at [Time, nil] Timestamp when the subscription will expire
      #
      #   @param payment_method_id [String, nil] Saved payment method id used for recurring charges
      #
      #   @param tax_id [String, nil] Tax identifier provided for this subscription (if applicable)

      class CreditEntitlementCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credit_entitlement_name
        #
        #   @return [String]
        required :credit_entitlement_name, String

        # @!attribute credits_amount
        #
        #   @return [String]
        required :credits_amount, String

        # @!attribute overage_balance
        #   Customer's current overage balance for this entitlement
        #
        #   @return [String]
        required :overage_balance, String

        # @!attribute overage_charge_at_billing
        #
        #   @return [Boolean]
        required :overage_charge_at_billing, Dodopayments::Internal::Type::Boolean

        # @!attribute overage_enabled
        #
        #   @return [Boolean]
        required :overage_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute remaining_balance
        #   Customer's current remaining credit balance for this entitlement
        #
        #   @return [String]
        required :remaining_balance, String

        # @!attribute rollover_enabled
        #
        #   @return [Boolean]
        required :rollover_enabled, Dodopayments::Internal::Type::Boolean

        # @!attribute unit
        #   Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
        #
        #   @return [String]
        required :unit, String

        # @!attribute expires_after_days
        #
        #   @return [Integer, nil]
        optional :expires_after_days, Integer, nil?: true

        # @!attribute low_balance_threshold_percent
        #
        #   @return [Integer, nil]
        optional :low_balance_threshold_percent, Integer, nil?: true

        # @!attribute max_rollover_count
        #
        #   @return [Integer, nil]
        optional :max_rollover_count, Integer, nil?: true

        # @!attribute overage_limit
        #
        #   @return [String, nil]
        optional :overage_limit, String, nil?: true

        # @!attribute rollover_percentage
        #
        #   @return [Integer, nil]
        optional :rollover_percentage, Integer, nil?: true

        # @!attribute rollover_timeframe_count
        #
        #   @return [Integer, nil]
        optional :rollover_timeframe_count, Integer, nil?: true

        # @!attribute rollover_timeframe_interval
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
        optional :rollover_timeframe_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

        # @!method initialize(credit_entitlement_id:, credit_entitlement_name:, credits_amount:, overage_balance:, overage_charge_at_billing:, overage_enabled:, product_id:, remaining_balance:, rollover_enabled:, unit:, expires_after_days: nil, low_balance_threshold_percent: nil, max_rollover_count: nil, overage_limit: nil, rollover_percentage: nil, rollover_timeframe_count: nil, rollover_timeframe_interval: nil)
        #   Response struct representing credit entitlement cart details for a subscription
        #
        #   @param credit_entitlement_id [String]
        #
        #   @param credit_entitlement_name [String]
        #
        #   @param credits_amount [String]
        #
        #   @param overage_balance [String] Customer's current overage balance for this entitlement
        #
        #   @param overage_charge_at_billing [Boolean]
        #
        #   @param overage_enabled [Boolean]
        #
        #   @param product_id [String]
        #
        #   @param remaining_balance [String] Customer's current remaining credit balance for this entitlement
        #
        #   @param rollover_enabled [Boolean]
        #
        #   @param unit [String] Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
        #
        #   @param expires_after_days [Integer, nil]
        #
        #   @param low_balance_threshold_percent [Integer, nil]
        #
        #   @param max_rollover_count [Integer, nil]
        #
        #   @param overage_limit [String, nil]
        #
        #   @param rollover_percentage [Integer, nil]
        #
        #   @param rollover_timeframe_count [Integer, nil]
        #
        #   @param rollover_timeframe_interval [Symbol, Dodopayments::Models::TimeInterval, nil]
      end

      class MeterCreditEntitlementCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute meter_id
        #
        #   @return [String]
        required :meter_id, String

        # @!attribute meter_name
        #
        #   @return [String]
        required :meter_name, String

        # @!attribute meter_units_per_credit
        #
        #   @return [String]
        required :meter_units_per_credit, String

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!method initialize(credit_entitlement_id:, meter_id:, meter_name:, meter_units_per_credit:, product_id:)
        #   Response struct representing meter-credit entitlement mapping cart details for a
        #   subscription
        #
        #   @param credit_entitlement_id [String]
        #   @param meter_id [String]
        #   @param meter_name [String]
        #   @param meter_units_per_credit [String]
        #   @param product_id [String]
      end

      class Meter < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute free_threshold
        #
        #   @return [Integer]
        required :free_threshold, Integer

        # @!attribute measurement_unit
        #
        #   @return [String]
        required :measurement_unit, String

        # @!attribute meter_id
        #
        #   @return [String]
        required :meter_id, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute price_per_unit
        #
        #   @return [String]
        required :price_per_unit, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(currency:, free_threshold:, measurement_unit:, meter_id:, name:, price_per_unit:, description: nil)
        #   Response struct representing usage-based meter cart details for a subscription
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency]
        #   @param free_threshold [Integer]
        #   @param measurement_unit [String]
        #   @param meter_id [String]
        #   @param name [String]
        #   @param price_per_unit [String]
        #   @param description [String, nil]
      end

      class CustomFieldResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute key
        #   Key matching the custom field definition
        #
        #   @return [String]
        required :key, String

        # @!attribute value
        #   Value provided by customer
        #
        #   @return [String]
        required :value, String

        # @!method initialize(key:, value:)
        #   Customer's response to a custom field
        #
        #   @param key [String] Key matching the custom field definition
        #
        #   @param value [String] Value provided by customer
      end
    end
  end
end
