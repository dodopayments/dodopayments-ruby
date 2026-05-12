# typed: strong

module Dodopayments
  module Models
    class Subscription < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Subscription, Dodopayments::Internal::AnyHash)
        end

      # Addons associated with this subscription
      sig { returns(T::Array[Dodopayments::AddonCartResponseItem]) }
      attr_accessor :addons

      # Billing address details for payments
      sig { returns(Dodopayments::BillingAddress) }
      attr_reader :billing

      sig { params(billing: Dodopayments::BillingAddress::OrHash).void }
      attr_writer :billing

      # Indicates if the subscription will cancel at the next billing date
      sig { returns(T::Boolean) }
      attr_accessor :cancel_at_next_billing_date

      # Timestamp when the subscription was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Credit entitlement cart settings for this subscription
      sig { returns(T::Array[Dodopayments::CreditEntitlementCartResponse]) }
      attr_accessor :credit_entitlement_cart

      # Currency used for the subscription payments
      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Customer details associated with the subscription
      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      # Additional custom data associated with the subscription
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Meter credit entitlement cart settings for this subscription
      sig do
        returns(T::Array[Dodopayments::MeterCreditEntitlementCartResponse])
      end
      attr_accessor :meter_credit_entitlement_cart

      # Meters associated with this subscription (for usage-based billing)
      sig { returns(T::Array[Dodopayments::MeterCartResponseItem]) }
      attr_accessor :meters

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

      # Time interval for payment frequency (e.g. month, year)
      sig { returns(Dodopayments::TimeInterval::TaggedSymbol) }
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

      # Current status of the subscription
      sig { returns(Dodopayments::SubscriptionStatus::TaggedSymbol) }
      attr_accessor :status

      # Unique identifier for the subscription
      sig { returns(String) }
      attr_accessor :subscription_id

      # Number of subscription period intervals
      sig { returns(Integer) }
      attr_accessor :subscription_period_count

      # Time interval for the subscription period (e.g. month, year)
      sig { returns(Dodopayments::TimeInterval::TaggedSymbol) }
      attr_accessor :subscription_period_interval

      # Indicates if the recurring_pre_tax_amount is tax inclusive
      sig { returns(T::Boolean) }
      attr_accessor :tax_inclusive

      # Number of days in the trial period (0 if no trial)
      sig { returns(Integer) }
      attr_accessor :trial_period_days

      # Free-text cancellation comment, if any
      sig { returns(T.nilable(String)) }
      attr_accessor :cancellation_comment

      # Customer-supplied churn reason, if any
      sig do
        returns(T.nilable(Dodopayments::CancellationFeedback::TaggedSymbol))
      end
      attr_accessor :cancellation_feedback

      # Cancelled timestamp if the subscription is cancelled
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # Customer's responses to custom fields collected during checkout
      sig { returns(T.nilable(T::Array[Dodopayments::CustomFieldResponse])) }
      attr_accessor :custom_field_responses

      # DEPRECATED: Use discounts[].cycles_remaining instead.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :discount_cycles_remaining

      # DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # All stacked discounts applied, ordered by position
      sig { returns(T.nilable(T::Array[Dodopayments::Subscription::Discount])) }
      attr_accessor :discounts

      # Timestamp when the subscription will expire
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Saved payment method id used for recurring charges
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # Scheduled plan change details, if any
      sig { returns(T.nilable(Dodopayments::ScheduledPlanChange)) }
      attr_reader :scheduled_change

      sig do
        params(
          scheduled_change: T.nilable(Dodopayments::ScheduledPlanChange::OrHash)
        ).void
      end
      attr_writer :scheduled_change

      # Tax identifier provided for this subscription (if applicable)
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      # Response struct representing subscription details
      sig do
        params(
          addons: T::Array[Dodopayments::AddonCartResponseItem::OrHash],
          billing: Dodopayments::BillingAddress::OrHash,
          cancel_at_next_billing_date: T::Boolean,
          created_at: Time,
          credit_entitlement_cart:
            T::Array[Dodopayments::CreditEntitlementCartResponse::OrHash],
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          metadata: T::Hash[Symbol, String],
          meter_credit_entitlement_cart:
            T::Array[Dodopayments::MeterCreditEntitlementCartResponse::OrHash],
          meters: T::Array[Dodopayments::MeterCartResponseItem::OrHash],
          next_billing_date: Time,
          on_demand: T::Boolean,
          payment_frequency_count: Integer,
          payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
          previous_billing_date: Time,
          product_id: String,
          quantity: Integer,
          recurring_pre_tax_amount: Integer,
          status: Dodopayments::SubscriptionStatus::OrSymbol,
          subscription_id: String,
          subscription_period_count: Integer,
          subscription_period_interval: Dodopayments::TimeInterval::OrSymbol,
          tax_inclusive: T::Boolean,
          trial_period_days: Integer,
          cancellation_comment: T.nilable(String),
          cancellation_feedback:
            T.nilable(Dodopayments::CancellationFeedback::OrSymbol),
          cancelled_at: T.nilable(Time),
          custom_field_responses:
            T.nilable(T::Array[Dodopayments::CustomFieldResponse::OrHash]),
          discount_cycles_remaining: T.nilable(Integer),
          discount_id: T.nilable(String),
          discounts:
            T.nilable(T::Array[Dodopayments::Subscription::Discount::OrHash]),
          expires_at: T.nilable(Time),
          payment_method_id: T.nilable(String),
          scheduled_change:
            T.nilable(Dodopayments::ScheduledPlanChange::OrHash),
          tax_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Addons associated with this subscription
        addons:,
        # Billing address details for payments
        billing:,
        # Indicates if the subscription will cancel at the next billing date
        cancel_at_next_billing_date:,
        # Timestamp when the subscription was created
        created_at:,
        # Credit entitlement cart settings for this subscription
        credit_entitlement_cart:,
        # Currency used for the subscription payments
        currency:,
        # Customer details associated with the subscription
        customer:,
        # Additional custom data associated with the subscription
        metadata:,
        # Meter credit entitlement cart settings for this subscription
        meter_credit_entitlement_cart:,
        # Meters associated with this subscription (for usage-based billing)
        meters:,
        # Timestamp of the next scheduled billing. Indicates the end of current billing
        # period
        next_billing_date:,
        # Wether the subscription is on-demand or not
        on_demand:,
        # Number of payment frequency intervals
        payment_frequency_count:,
        # Time interval for payment frequency (e.g. month, year)
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
        # Current status of the subscription
        status:,
        # Unique identifier for the subscription
        subscription_id:,
        # Number of subscription period intervals
        subscription_period_count:,
        # Time interval for the subscription period (e.g. month, year)
        subscription_period_interval:,
        # Indicates if the recurring_pre_tax_amount is tax inclusive
        tax_inclusive:,
        # Number of days in the trial period (0 if no trial)
        trial_period_days:,
        # Free-text cancellation comment, if any
        cancellation_comment: nil,
        # Customer-supplied churn reason, if any
        cancellation_feedback: nil,
        # Cancelled timestamp if the subscription is cancelled
        cancelled_at: nil,
        # Customer's responses to custom fields collected during checkout
        custom_field_responses: nil,
        # DEPRECATED: Use discounts[].cycles_remaining instead.
        discount_cycles_remaining: nil,
        # DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
        discount_id: nil,
        # All stacked discounts applied, ordered by position
        discounts: nil,
        # Timestamp when the subscription will expire
        expires_at: nil,
        # Saved payment method id used for recurring charges
        payment_method_id: nil,
        # Scheduled plan change details, if any
        scheduled_change: nil,
        # Tax identifier provided for this subscription (if applicable)
        tax_id: nil
      )
      end

      sig do
        override.returns(
          {
            addons: T::Array[Dodopayments::AddonCartResponseItem],
            billing: Dodopayments::BillingAddress,
            cancel_at_next_billing_date: T::Boolean,
            created_at: Time,
            credit_entitlement_cart:
              T::Array[Dodopayments::CreditEntitlementCartResponse],
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            metadata: T::Hash[Symbol, String],
            meter_credit_entitlement_cart:
              T::Array[Dodopayments::MeterCreditEntitlementCartResponse],
            meters: T::Array[Dodopayments::MeterCartResponseItem],
            next_billing_date: Time,
            on_demand: T::Boolean,
            payment_frequency_count: Integer,
            payment_frequency_interval:
              Dodopayments::TimeInterval::TaggedSymbol,
            previous_billing_date: Time,
            product_id: String,
            quantity: Integer,
            recurring_pre_tax_amount: Integer,
            status: Dodopayments::SubscriptionStatus::TaggedSymbol,
            subscription_id: String,
            subscription_period_count: Integer,
            subscription_period_interval:
              Dodopayments::TimeInterval::TaggedSymbol,
            tax_inclusive: T::Boolean,
            trial_period_days: Integer,
            cancellation_comment: T.nilable(String),
            cancellation_feedback:
              T.nilable(Dodopayments::CancellationFeedback::TaggedSymbol),
            cancelled_at: T.nilable(Time),
            custom_field_responses:
              T.nilable(T::Array[Dodopayments::CustomFieldResponse]),
            discount_cycles_remaining: T.nilable(Integer),
            discount_id: T.nilable(String),
            discounts:
              T.nilable(T::Array[Dodopayments::Subscription::Discount]),
            expires_at: T.nilable(Time),
            payment_method_id: T.nilable(String),
            scheduled_change: T.nilable(Dodopayments::ScheduledPlanChange),
            tax_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Discount < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Subscription::Discount,
              Dodopayments::Internal::AnyHash
            )
          end

        # The discount amount (basis points for percentage, USD cents for flat)
        sig { returns(Integer) }
        attr_accessor :amount

        # The business this discount belongs to
        sig { returns(String) }
        attr_accessor :business_id

        # The discount code
        sig { returns(String) }
        attr_accessor :code

        # Timestamp when the discount was created
        sig { returns(Time) }
        attr_accessor :created_at

        # The unique discount ID
        sig { returns(String) }
        attr_accessor :discount_id

        # Additional metadata
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Position of this discount in the stack (0-based)
        sig { returns(Integer) }
        attr_accessor :position

        # Whether this discount should be preserved when a subscription changes plans
        sig { returns(T::Boolean) }
        attr_accessor :preserve_on_plan_change

        # List of product IDs to which this discount is restricted
        sig { returns(T::Array[String]) }
        attr_accessor :restricted_to

        # How many times this discount has been used
        sig { returns(Integer) }
        attr_accessor :times_used

        # The type of discount
        sig { returns(Dodopayments::DiscountType::TaggedSymbol) }
        attr_accessor :type

        # Remaining billing cycles for this discount on this subscription (None for
        # one-time payments)
        sig { returns(T.nilable(Integer)) }
        attr_accessor :cycles_remaining

        # Optional date/time after which discount is expired
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Name for the Discount
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # Number of subscription billing cycles this discount is valid for
        sig { returns(T.nilable(Integer)) }
        attr_accessor :subscription_cycles

        # Usage limit for this discount, if any
        sig { returns(T.nilable(Integer)) }
        attr_accessor :usage_limit

        # Response struct for a discount with its position in a stack and optional
        # cycle-tracking information (for subscriptions).
        sig do
          params(
            amount: Integer,
            business_id: String,
            code: String,
            created_at: Time,
            discount_id: String,
            metadata: T::Hash[Symbol, String],
            position: Integer,
            preserve_on_plan_change: T::Boolean,
            restricted_to: T::Array[String],
            times_used: Integer,
            type: Dodopayments::DiscountType::OrSymbol,
            cycles_remaining: T.nilable(Integer),
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            subscription_cycles: T.nilable(Integer),
            usage_limit: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # The discount amount (basis points for percentage, USD cents for flat)
          amount:,
          # The business this discount belongs to
          business_id:,
          # The discount code
          code:,
          # Timestamp when the discount was created
          created_at:,
          # The unique discount ID
          discount_id:,
          # Additional metadata
          metadata:,
          # Position of this discount in the stack (0-based)
          position:,
          # Whether this discount should be preserved when a subscription changes plans
          preserve_on_plan_change:,
          # List of product IDs to which this discount is restricted
          restricted_to:,
          # How many times this discount has been used
          times_used:,
          # The type of discount
          type:,
          # Remaining billing cycles for this discount on this subscription (None for
          # one-time payments)
          cycles_remaining: nil,
          # Optional date/time after which discount is expired
          expires_at: nil,
          # Name for the Discount
          name: nil,
          # Number of subscription billing cycles this discount is valid for
          subscription_cycles: nil,
          # Usage limit for this discount, if any
          usage_limit: nil
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              business_id: String,
              code: String,
              created_at: Time,
              discount_id: String,
              metadata: T::Hash[Symbol, String],
              position: Integer,
              preserve_on_plan_change: T::Boolean,
              restricted_to: T::Array[String],
              times_used: Integer,
              type: Dodopayments::DiscountType::TaggedSymbol,
              cycles_remaining: T.nilable(Integer),
              expires_at: T.nilable(Time),
              name: T.nilable(String),
              subscription_cycles: T.nilable(Integer),
              usage_limit: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
