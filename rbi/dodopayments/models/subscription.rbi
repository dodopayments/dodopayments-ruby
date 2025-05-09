# typed: strong

module Dodopayments
  module Models
    class Subscription < Dodopayments::Internal::Type::BaseModel
      # Addons associated with this subscription
      sig { returns(T::Array[Dodopayments::Models::AddonCartResponseItem]) }
      attr_accessor :addons

      sig { returns(Dodopayments::Models::BillingAddress) }
      attr_reader :billing

      sig { params(billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)).void }
      attr_writer :billing

      # Timestamp when the subscription was created
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Models::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash)).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Timestamp of the next scheduled billing. Indicates the end of current billing
      # period
      sig { returns(Time) }
      attr_accessor :next_billing_date

      # Wether the subscription is on-demand or not
      sig { returns(T::Boolean) }
      attr_accessor :on_demand

      # Number of payment frequency intervals
      sig { returns(Integer) }
      attr_accessor :payment_frequency_count

      sig { returns(Dodopayments::Models::TimeInterval::TaggedSymbol) }
      attr_accessor :payment_frequency_interval

      # Timestamp of the last payment. Indicates the start of current billing period
      sig { returns(Time) }
      attr_accessor :previous_billing_date

      # Identifier of the product associated with this subscription
      sig { returns(String) }
      attr_accessor :product_id

      # Number of units/items included in the subscription
      sig { returns(Integer) }
      attr_accessor :quantity

      # Amount charged before tax for each recurring payment in smallest currency unit
      # (e.g. cents)
      sig { returns(Integer) }
      attr_accessor :recurring_pre_tax_amount

      sig { returns(Dodopayments::Models::SubscriptionStatus::TaggedSymbol) }
      attr_accessor :status

      # Unique identifier for the subscription
      sig { returns(String) }
      attr_accessor :subscription_id

      # Number of subscription period intervals
      sig { returns(Integer) }
      attr_accessor :subscription_period_count

      sig { returns(Dodopayments::Models::TimeInterval::TaggedSymbol) }
      attr_accessor :subscription_period_interval

      # Indicates if the recurring_pre_tax_amount is tax inclusive
      sig { returns(T::Boolean) }
      attr_accessor :tax_inclusive

      # Number of days in the trial period (0 if no trial)
      sig { returns(Integer) }
      attr_accessor :trial_period_days

      # Cancelled timestamp if the subscription is cancelled
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # Response struct representing subscription details
      sig do
        params(
          addons: T::Array[T.any(Dodopayments::Models::AddonCartResponseItem, Dodopayments::Internal::AnyHash)],
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash),
          created_at: Time,
          currency: Dodopayments::Models::Currency::OrSymbol,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          metadata: T::Hash[Symbol, String],
          next_billing_date: Time,
          on_demand: T::Boolean,
          payment_frequency_count: Integer,
          payment_frequency_interval: Dodopayments::Models::TimeInterval::OrSymbol,
          previous_billing_date: Time,
          product_id: String,
          quantity: Integer,
          recurring_pre_tax_amount: Integer,
          status: Dodopayments::Models::SubscriptionStatus::OrSymbol,
          subscription_id: String,
          subscription_period_count: Integer,
          subscription_period_interval: Dodopayments::Models::TimeInterval::OrSymbol,
          tax_inclusive: T::Boolean,
          trial_period_days: Integer,
          cancelled_at: T.nilable(Time),
          discount_id: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # Addons associated with this subscription
        addons:,
        billing:,
        # Timestamp when the subscription was created
        created_at:,
        currency:,
        customer:,
        metadata:,
        # Timestamp of the next scheduled billing. Indicates the end of current billing
        # period
        next_billing_date:,
        # Wether the subscription is on-demand or not
        on_demand:,
        # Number of payment frequency intervals
        payment_frequency_count:,
        payment_frequency_interval:,
        # Timestamp of the last payment. Indicates the start of current billing period
        previous_billing_date:,
        # Identifier of the product associated with this subscription
        product_id:,
        # Number of units/items included in the subscription
        quantity:,
        # Amount charged before tax for each recurring payment in smallest currency unit
        # (e.g. cents)
        recurring_pre_tax_amount:,
        status:,
        # Unique identifier for the subscription
        subscription_id:,
        # Number of subscription period intervals
        subscription_period_count:,
        subscription_period_interval:,
        # Indicates if the recurring_pre_tax_amount is tax inclusive
        tax_inclusive:,
        # Number of days in the trial period (0 if no trial)
        trial_period_days:,
        # Cancelled timestamp if the subscription is cancelled
        cancelled_at: nil,
        # The discount id if discount is applied
        discount_id: nil
      ); end
      sig do
        override
          .returns(
            {
              addons: T::Array[Dodopayments::Models::AddonCartResponseItem],
              billing: Dodopayments::Models::BillingAddress,
              created_at: Time,
              currency: Dodopayments::Models::Currency::TaggedSymbol,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              metadata: T::Hash[Symbol, String],
              next_billing_date: Time,
              on_demand: T::Boolean,
              payment_frequency_count: Integer,
              payment_frequency_interval: Dodopayments::Models::TimeInterval::TaggedSymbol,
              previous_billing_date: Time,
              product_id: String,
              quantity: Integer,
              recurring_pre_tax_amount: Integer,
              status: Dodopayments::Models::SubscriptionStatus::TaggedSymbol,
              subscription_id: String,
              subscription_period_count: Integer,
              subscription_period_interval: Dodopayments::Models::TimeInterval::TaggedSymbol,
              tax_inclusive: T::Boolean,
              trial_period_days: Integer,
              cancelled_at: T.nilable(Time),
              discount_id: T.nilable(String)
            }
          )
      end
      def to_hash; end
    end
  end
end
