# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#list
    class SubscriptionListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute billing
      #
      #   @return [Dodopayments::BillingAddress]
      required :billing, -> { Dodopayments::BillingAddress }

      # @!attribute created_at
      #   Timestamp when the subscription was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

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
      #
      #   @return [Symbol, Dodopayments::TimeInterval]
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
      #
      #   @return [Symbol, Dodopayments::SubscriptionStatus]
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
      #
      #   @return [Symbol, Dodopayments::TimeInterval]
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

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!method initialize(billing:, created_at:, currency:, customer:, metadata:, next_billing_date:, on_demand:, payment_frequency_count:, payment_frequency_interval:, previous_billing_date:, product_id:, quantity:, recurring_pre_tax_amount:, status:, subscription_id:, subscription_period_count:, subscription_period_interval:, tax_inclusive:, trial_period_days:, cancelled_at: nil, discount_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionListResponse} for more details.
      #
      #   Response struct representing subscription details
      #
      #   @param billing [Dodopayments::BillingAddress]
      #
      #   @param created_at [Time] Timestamp when the subscription was created
      #
      #   @param currency [Symbol, Dodopayments::Currency]
      #
      #   @param customer [Dodopayments::CustomerLimitedDetails]
      #
      #   @param metadata [Hash{Symbol=>String}]
      #
      #   @param next_billing_date [Time] Timestamp of the next scheduled billing. Indicates the end of current billing pe
      #
      #   @param on_demand [Boolean] Wether the subscription is on-demand or not
      #
      #   @param payment_frequency_count [Integer] Number of payment frequency intervals
      #
      #   @param payment_frequency_interval [Symbol, Dodopayments::TimeInterval]
      #
      #   @param previous_billing_date [Time] Timestamp of the last payment. Indicates the start of current billing period
      #
      #   @param product_id [String] Identifier of the product associated with this subscription
      #
      #   @param quantity [Integer] Number of units/items included in the subscription
      #
      #   @param recurring_pre_tax_amount [Integer] Amount charged before tax for each recurring payment in smallest currency unit (
      #
      #   @param status [Symbol, Dodopayments::SubscriptionStatus]
      #
      #   @param subscription_id [String] Unique identifier for the subscription
      #
      #   @param subscription_period_count [Integer] Number of subscription period intervals
      #
      #   @param subscription_period_interval [Symbol, Dodopayments::TimeInterval]
      #
      #   @param tax_inclusive [Boolean] Indicates if the recurring_pre_tax_amount is tax inclusive
      #
      #   @param trial_period_days [Integer] Number of days in the trial period (0 if no trial)
      #
      #   @param cancelled_at [Time, nil] Cancelled timestamp if the subscription is cancelled
      #
      #   @param discount_id [String, nil] The discount id if discount is applied
    end
  end
end
