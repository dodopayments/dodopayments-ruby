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

      # @!attribute brand_id
      #   Brand id this subscription belongs to
      #
      #   @return [String]
      required :brand_id, String

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
      #   @return [Array<Dodopayments::Models::CreditEntitlementCartResponse>]
      required :credit_entitlement_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CreditEntitlementCartResponse] }

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
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute meter_credit_entitlement_cart
      #   Meter credit entitlement cart settings for this subscription
      #
      #   @return [Array<Dodopayments::Models::MeterCreditEntitlementCartResponse>]
      required :meter_credit_entitlement_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::MeterCreditEntitlementCartResponse] }

      # @!attribute meters
      #   Meters associated with this subscription (for usage-based billing)
      #
      #   @return [Array<Dodopayments::Models::MeterCartResponseItem>]
      required :meters, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::MeterCartResponseItem] }

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
      #   Amount charged before tax for each recurring payment in the currency's smallest
      #   unit (cents for USD, yen for JPY, fils for KWD)
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

      # @!attribute cancellation_comment
      #   Free-text cancellation comment, if any
      #
      #   @return [String, nil]
      optional :cancellation_comment, String, nil?: true

      # @!attribute cancellation_feedback
      #   Customer-supplied churn reason, if any
      #
      #   @return [Symbol, Dodopayments::Models::CancellationFeedback, nil]
      optional :cancellation_feedback, enum: -> { Dodopayments::CancellationFeedback }, nil?: true

      # @!attribute cancelled_at
      #   Cancelled timestamp if the subscription is cancelled
      #
      #   @return [Time, nil]
      optional :cancelled_at, Time, nil?: true

      # @!attribute custom_field_responses
      #   Customer's responses to custom fields collected during checkout
      #
      #   @return [Array<Dodopayments::Models::CustomFieldResponse>, nil]
      optional :custom_field_responses,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CustomFieldResponse] },
               nil?: true

      # @!attribute customer_business_name
      #   Business / legal name associated with the tax id (B2B). When set this is used on
      #   the invoice in place of the customer's personal name.
      #
      #   @return [String, nil]
      optional :customer_business_name, String, nil?: true

      # @!attribute discount_cycles_remaining
      #   DEPRECATED: Use discounts[].cycles_remaining instead.
      #
      #   @return [Integer, nil]
      optional :discount_cycles_remaining, Integer, nil?: true

      # @!attribute discount_id
      #   DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute discounts
      #   All stacked discounts applied, ordered by position
      #
      #   @return [Array<Dodopayments::Models::DiscountDetail>, nil]
      optional :discounts,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::DiscountDetail] },
               nil?: true

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

      # @!attribute scheduled_change
      #   Scheduled plan change details, if any
      #
      #   @return [Dodopayments::Models::ScheduledPlanChange, nil]
      optional :scheduled_change, -> { Dodopayments::ScheduledPlanChange }, nil?: true

      # @!attribute tax_id
      #   Tax identifier provided for this subscription (if applicable)
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!attribute trial_amount
      #   Per-unit trial amount after discounts, snapshotted at subscription creation
      #   (price currency minor units, pre-quantity, pre-tax). Null for a free trial or no
      #   trial.
      #
      #   @return [Integer, nil]
      optional :trial_amount, Integer, nil?: true

      # @!method initialize(addons:, billing:, brand_id:, cancel_at_next_billing_date:, created_at:, credit_entitlement_cart:, currency:, customer:, metadata:, meter_credit_entitlement_cart:, meters:, next_billing_date:, on_demand:, payment_frequency_count:, payment_frequency_interval:, previous_billing_date:, product_id:, quantity:, recurring_pre_tax_amount:, status:, subscription_id:, subscription_period_count:, subscription_period_interval:, tax_inclusive:, trial_period_days:, cancellation_comment: nil, cancellation_feedback: nil, cancelled_at: nil, custom_field_responses: nil, customer_business_name: nil, discount_cycles_remaining: nil, discount_id: nil, discounts: nil, expires_at: nil, payment_method_id: nil, scheduled_change: nil, tax_id: nil, trial_amount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Subscription} for more details.
      #
      #   Response struct representing subscription details
      #
      #   @param addons [Array<Dodopayments::Models::AddonCartResponseItem>] Addons associated with this subscription
      #
      #   @param billing [Dodopayments::Models::BillingAddress] Billing address details for payments
      #
      #   @param brand_id [String] Brand id this subscription belongs to
      #
      #   @param cancel_at_next_billing_date [Boolean] Indicates if the subscription will cancel at the next billing date
      #
      #   @param created_at [Time] Timestamp when the subscription was created
      #
      #   @param credit_entitlement_cart [Array<Dodopayments::Models::CreditEntitlementCartResponse>] Credit entitlement cart settings for this subscription
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency] Currency used for the subscription payments
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Customer details associated with the subscription
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Additional custom data associated with the subscription
      #
      #   @param meter_credit_entitlement_cart [Array<Dodopayments::Models::MeterCreditEntitlementCartResponse>] Meter credit entitlement cart settings for this subscription
      #
      #   @param meters [Array<Dodopayments::Models::MeterCartResponseItem>] Meters associated with this subscription (for usage-based billing)
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
      #   @param recurring_pre_tax_amount [Integer] Amount charged before tax for each recurring payment in the currency's smallest
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
      #   @param cancellation_comment [String, nil] Free-text cancellation comment, if any
      #
      #   @param cancellation_feedback [Symbol, Dodopayments::Models::CancellationFeedback, nil] Customer-supplied churn reason, if any
      #
      #   @param cancelled_at [Time, nil] Cancelled timestamp if the subscription is cancelled
      #
      #   @param custom_field_responses [Array<Dodopayments::Models::CustomFieldResponse>, nil] Customer's responses to custom fields collected during checkout
      #
      #   @param customer_business_name [String, nil] Business / legal name associated with the tax id (B2B). When set this is
      #
      #   @param discount_cycles_remaining [Integer, nil] DEPRECATED: Use discounts[].cycles_remaining instead.
      #
      #   @param discount_id [String, nil] DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
      #
      #   @param discounts [Array<Dodopayments::Models::DiscountDetail>, nil] All stacked discounts applied, ordered by position
      #
      #   @param expires_at [Time, nil] Timestamp when the subscription will expire
      #
      #   @param payment_method_id [String, nil] Saved payment method id used for recurring charges
      #
      #   @param scheduled_change [Dodopayments::Models::ScheduledPlanChange, nil] Scheduled plan change details, if any
      #
      #   @param tax_id [String, nil] Tax identifier provided for this subscription (if applicable)
      #
      #   @param trial_amount [Integer, nil] Per-unit trial amount after discounts, snapshotted at subscription creation
    end
  end
end
