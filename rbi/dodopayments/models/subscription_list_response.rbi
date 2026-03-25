# typed: strong

module Dodopayments
  module Models
    class SubscriptionListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

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

      # Number of remaining discount cycles if discount is applied
      sig { returns(T.nilable(Integer)) }
      attr_accessor :discount_cycles_remaining

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # Saved payment method id used for recurring charges
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # Name of the product associated with this subscription
      sig { returns(T.nilable(String)) }
      attr_accessor :product_name

      # Scheduled plan change details, if any
      sig do
        returns(
          T.nilable(
            Dodopayments::Models::SubscriptionListResponse::ScheduledChange
          )
        )
      end
      attr_reader :scheduled_change

      sig do
        params(
          scheduled_change:
            T.nilable(
              Dodopayments::Models::SubscriptionListResponse::ScheduledChange::OrHash
            )
        ).void
      end
      attr_writer :scheduled_change

      # Tax identifier provided for this subscription (if applicable)
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      # Response struct representing subscription details
      sig do
        params(
          billing: Dodopayments::BillingAddress::OrHash,
          cancel_at_next_billing_date: T::Boolean,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          metadata: T::Hash[Symbol, String],
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
          discount_cycles_remaining: T.nilable(Integer),
          discount_id: T.nilable(String),
          payment_method_id: T.nilable(String),
          product_name: T.nilable(String),
          scheduled_change:
            T.nilable(
              Dodopayments::Models::SubscriptionListResponse::ScheduledChange::OrHash
            ),
          tax_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing address details for payments
        billing:,
        # Indicates if the subscription will cancel at the next billing date
        cancel_at_next_billing_date:,
        # Timestamp when the subscription was created
        created_at:,
        # Currency used for the subscription payments
        currency:,
        # Customer details associated with the subscription
        customer:,
        # Additional custom data associated with the subscription
        metadata:,
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
        # Number of remaining discount cycles if discount is applied
        discount_cycles_remaining: nil,
        # The discount id if discount is applied
        discount_id: nil,
        # Saved payment method id used for recurring charges
        payment_method_id: nil,
        # Name of the product associated with this subscription
        product_name: nil,
        # Scheduled plan change details, if any
        scheduled_change: nil,
        # Tax identifier provided for this subscription (if applicable)
        tax_id: nil
      )
      end

      sig do
        override.returns(
          {
            billing: Dodopayments::BillingAddress,
            cancel_at_next_billing_date: T::Boolean,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            metadata: T::Hash[Symbol, String],
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
            discount_cycles_remaining: T.nilable(Integer),
            discount_id: T.nilable(String),
            payment_method_id: T.nilable(String),
            product_name: T.nilable(String),
            scheduled_change:
              T.nilable(
                Dodopayments::Models::SubscriptionListResponse::ScheduledChange
              ),
            tax_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class ScheduledChange < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::SubscriptionListResponse::ScheduledChange,
              Dodopayments::Internal::AnyHash
            )
          end

        # The scheduled plan change ID
        sig { returns(String) }
        attr_accessor :id

        # Addons included in the scheduled change
        sig do
          returns(
            T::Array[
              Dodopayments::Models::SubscriptionListResponse::ScheduledChange::Addon
            ]
          )
        end
        attr_accessor :addons

        # When this scheduled change was created
        sig { returns(Time) }
        attr_accessor :created_at

        # When the change will be applied
        sig { returns(Time) }
        attr_accessor :effective_at

        # The product ID the subscription will change to
        sig { returns(String) }
        attr_accessor :product_id

        # Quantity for the new plan
        sig { returns(Integer) }
        attr_accessor :quantity

        # Description of the product being changed to
        sig { returns(T.nilable(String)) }
        attr_accessor :product_description

        # Name of the product being changed to
        sig { returns(T.nilable(String)) }
        attr_accessor :product_name

        # Scheduled plan change details, if any
        sig do
          params(
            id: String,
            addons:
              T::Array[
                Dodopayments::Models::SubscriptionListResponse::ScheduledChange::Addon::OrHash
              ],
            created_at: Time,
            effective_at: Time,
            product_id: String,
            quantity: Integer,
            product_description: T.nilable(String),
            product_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The scheduled plan change ID
          id:,
          # Addons included in the scheduled change
          addons:,
          # When this scheduled change was created
          created_at:,
          # When the change will be applied
          effective_at:,
          # The product ID the subscription will change to
          product_id:,
          # Quantity for the new plan
          quantity:,
          # Description of the product being changed to
          product_description: nil,
          # Name of the product being changed to
          product_name: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              addons:
                T::Array[
                  Dodopayments::Models::SubscriptionListResponse::ScheduledChange::Addon
                ],
              created_at: Time,
              effective_at: Time,
              product_id: String,
              quantity: Integer,
              product_description: T.nilable(String),
              product_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Addon < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::SubscriptionListResponse::ScheduledChange::Addon,
                Dodopayments::Internal::AnyHash
              )
            end

          # The addon ID
          sig { returns(String) }
          attr_accessor :addon_id

          # Name of the addon
          sig { returns(String) }
          attr_accessor :name

          # Quantity of the addon
          sig { returns(Integer) }
          attr_accessor :quantity

          sig do
            params(addon_id: String, name: String, quantity: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # The addon ID
            addon_id:,
            # Name of the addon
            name:,
            # Quantity of the addon
            quantity:
          )
          end

          sig do
            override.returns(
              { addon_id: String, name: String, quantity: Integer }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
