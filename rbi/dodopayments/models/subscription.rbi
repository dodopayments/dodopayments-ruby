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
      sig do
        returns(T::Array[Dodopayments::Subscription::CreditEntitlementCart])
      end
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
        returns(
          T::Array[Dodopayments::Subscription::MeterCreditEntitlementCart]
        )
      end
      attr_accessor :meter_credit_entitlement_cart

      # Meters associated with this subscription (for usage-based billing)
      sig { returns(T::Array[Dodopayments::Subscription::Meter]) }
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

      # Cancelled timestamp if the subscription is cancelled
      sig { returns(T.nilable(Time)) }
      attr_accessor :cancelled_at

      # Customer's responses to custom fields collected during checkout
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::Subscription::CustomFieldResponse])
        )
      end
      attr_accessor :custom_field_responses

      # Number of remaining discount cycles if discount is applied
      sig { returns(T.nilable(Integer)) }
      attr_accessor :discount_cycles_remaining

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # Timestamp when the subscription will expire
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Saved payment method id used for recurring charges
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

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
            T::Array[Dodopayments::Subscription::CreditEntitlementCart::OrHash],
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          metadata: T::Hash[Symbol, String],
          meter_credit_entitlement_cart:
            T::Array[
              Dodopayments::Subscription::MeterCreditEntitlementCart::OrHash
            ],
          meters: T::Array[Dodopayments::Subscription::Meter::OrHash],
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
          cancelled_at: T.nilable(Time),
          custom_field_responses:
            T.nilable(
              T::Array[Dodopayments::Subscription::CustomFieldResponse::OrHash]
            ),
          discount_cycles_remaining: T.nilable(Integer),
          discount_id: T.nilable(String),
          expires_at: T.nilable(Time),
          payment_method_id: T.nilable(String),
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
        # Cancelled timestamp if the subscription is cancelled
        cancelled_at: nil,
        # Customer's responses to custom fields collected during checkout
        custom_field_responses: nil,
        # Number of remaining discount cycles if discount is applied
        discount_cycles_remaining: nil,
        # The discount id if discount is applied
        discount_id: nil,
        # Timestamp when the subscription will expire
        expires_at: nil,
        # Saved payment method id used for recurring charges
        payment_method_id: nil,
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
              T::Array[Dodopayments::Subscription::CreditEntitlementCart],
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            metadata: T::Hash[Symbol, String],
            meter_credit_entitlement_cart:
              T::Array[Dodopayments::Subscription::MeterCreditEntitlementCart],
            meters: T::Array[Dodopayments::Subscription::Meter],
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
            cancelled_at: T.nilable(Time),
            custom_field_responses:
              T.nilable(
                T::Array[Dodopayments::Subscription::CustomFieldResponse]
              ),
            discount_cycles_remaining: T.nilable(Integer),
            discount_id: T.nilable(String),
            expires_at: T.nilable(Time),
            payment_method_id: T.nilable(String),
            tax_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class CreditEntitlementCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Subscription::CreditEntitlementCart,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :credit_entitlement_name

        sig { returns(String) }
        attr_accessor :credits_amount

        # Customer's current overage balance for this entitlement
        sig { returns(String) }
        attr_accessor :overage_balance

        sig { returns(T::Boolean) }
        attr_accessor :overage_charge_at_billing

        sig { returns(T::Boolean) }
        attr_accessor :overage_enabled

        sig { returns(String) }
        attr_accessor :product_id

        # Customer's current remaining credit balance for this entitlement
        sig { returns(String) }
        attr_accessor :remaining_balance

        sig { returns(T::Boolean) }
        attr_accessor :rollover_enabled

        # Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
        sig { returns(String) }
        attr_accessor :unit

        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_after_days

        sig { returns(T.nilable(Integer)) }
        attr_accessor :low_balance_threshold_percent

        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_rollover_count

        sig { returns(T.nilable(String)) }
        attr_accessor :overage_limit

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_percentage

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_timeframe_count

        sig { returns(T.nilable(Dodopayments::TimeInterval::TaggedSymbol)) }
        attr_accessor :rollover_timeframe_interval

        # Response struct representing credit entitlement cart details for a subscription
        sig do
          params(
            credit_entitlement_id: String,
            credit_entitlement_name: String,
            credits_amount: String,
            overage_balance: String,
            overage_charge_at_billing: T::Boolean,
            overage_enabled: T::Boolean,
            product_id: String,
            remaining_balance: String,
            rollover_enabled: T::Boolean,
            unit: String,
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_limit: T.nilable(String),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          credit_entitlement_name:,
          credits_amount:,
          # Customer's current overage balance for this entitlement
          overage_balance:,
          overage_charge_at_billing:,
          overage_enabled:,
          product_id:,
          # Customer's current remaining credit balance for this entitlement
          remaining_balance:,
          rollover_enabled:,
          # Unit label for the credit entitlement (e.g., "API Calls", "Tokens")
          unit:,
          expires_after_days: nil,
          low_balance_threshold_percent: nil,
          max_rollover_count: nil,
          overage_limit: nil,
          rollover_percentage: nil,
          rollover_timeframe_count: nil,
          rollover_timeframe_interval: nil
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              credits_amount: String,
              overage_balance: String,
              overage_charge_at_billing: T::Boolean,
              overage_enabled: T::Boolean,
              product_id: String,
              remaining_balance: String,
              rollover_enabled: T::Boolean,
              unit: String,
              expires_after_days: T.nilable(Integer),
              low_balance_threshold_percent: T.nilable(Integer),
              max_rollover_count: T.nilable(Integer),
              overage_limit: T.nilable(String),
              rollover_percentage: T.nilable(Integer),
              rollover_timeframe_count: T.nilable(Integer),
              rollover_timeframe_interval:
                T.nilable(Dodopayments::TimeInterval::TaggedSymbol)
            }
          )
        end
        def to_hash
        end
      end

      class MeterCreditEntitlementCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Subscription::MeterCreditEntitlementCart,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :meter_id

        sig { returns(String) }
        attr_accessor :meter_name

        sig { returns(String) }
        attr_accessor :meter_units_per_credit

        sig { returns(String) }
        attr_accessor :product_id

        # Response struct representing meter-credit entitlement mapping cart details for a
        # subscription
        sig do
          params(
            credit_entitlement_id: String,
            meter_id: String,
            meter_name: String,
            meter_units_per_credit: String,
            product_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          meter_id:,
          meter_name:,
          meter_units_per_credit:,
          product_id:
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              meter_id: String,
              meter_name: String,
              meter_units_per_credit: String,
              product_id: String
            }
          )
        end
        def to_hash
        end
      end

      class Meter < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Subscription::Meter,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        sig { returns(Integer) }
        attr_accessor :free_threshold

        sig { returns(String) }
        attr_accessor :measurement_unit

        sig { returns(String) }
        attr_accessor :meter_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :price_per_unit

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Response struct representing usage-based meter cart details for a subscription
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            free_threshold: Integer,
            measurement_unit: String,
            meter_id: String,
            name: String,
            price_per_unit: String,
            description: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          currency:,
          free_threshold:,
          measurement_unit:,
          meter_id:,
          name:,
          price_per_unit:,
          description: nil
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::TaggedSymbol,
              free_threshold: Integer,
              measurement_unit: String,
              meter_id: String,
              name: String,
              price_per_unit: String,
              description: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class CustomFieldResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Subscription::CustomFieldResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        # Key matching the custom field definition
        sig { returns(String) }
        attr_accessor :key

        # Value provided by customer
        sig { returns(String) }
        attr_accessor :value

        # Customer's response to a custom field
        sig { params(key: String, value: String).returns(T.attached_class) }
        def self.new(
          # Key matching the custom field definition
          key:,
          # Value provided by customer
          value:
        )
        end

        sig { override.returns({ key: String, value: String }) }
        def to_hash
        end
      end
    end
  end
end
