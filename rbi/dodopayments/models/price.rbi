# typed: strong

module Dodopayments
  module Models
    # One-time price details.
    module Price
      extend Dodopayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Dodopayments::Price::OneTimePrice,
            Dodopayments::Price::RecurringPrice,
            Dodopayments::Price::UsageBasedPrice
          )
        end

      class OneTimePrice < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Price::OneTimePrice,
              Dodopayments::Internal::AnyHash
            )
          end

        # The currency in which the payment is made.
        sig { returns(Dodopayments::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Integer) }
        attr_accessor :discount

        # The payment amount, in the smallest denomination of the currency (e.g., cents
        # for USD). For example, to charge $1.00, pass `100`.
        #
        # If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
        # represents the **minimum** amount the customer must pay.
        sig { returns(Integer) }
        attr_accessor :price

        # Indicates if purchasing power parity adjustments are applied to the price.
        # Purchasing power parity feature is not available as of now.
        sig { returns(T::Boolean) }
        attr_accessor :purchasing_power_parity

        sig { returns(Symbol) }
        attr_accessor :type

        # Indicates whether the customer can pay any amount they choose. If set to `true`,
        # the [`price`](Self::price) field is the minimum amount.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :pay_what_you_want

        sig { params(pay_what_you_want: T::Boolean).void }
        attr_writer :pay_what_you_want

        # A suggested price for the user to pay. This value is only considered if
        # [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
        # ignored.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :suggested_price

        # Indicates if the price is tax inclusive.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        # One-time price details.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            discount: Integer,
            price: Integer,
            purchasing_power_parity: T::Boolean,
            pay_what_you_want: T::Boolean,
            suggested_price: T.nilable(Integer),
            tax_inclusive: T.nilable(T::Boolean),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency in which the payment is made.
          currency:,
          # Discount applied to the price, represented as a percentage (0 to 100).
          discount:,
          # The payment amount, in the smallest denomination of the currency (e.g., cents
          # for USD). For example, to charge $1.00, pass `100`.
          #
          # If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
          # represents the **minimum** amount the customer must pay.
          price:,
          # Indicates if purchasing power parity adjustments are applied to the price.
          # Purchasing power parity feature is not available as of now.
          purchasing_power_parity:,
          # Indicates whether the customer can pay any amount they choose. If set to `true`,
          # the [`price`](Self::price) field is the minimum amount.
          pay_what_you_want: nil,
          # A suggested price for the user to pay. This value is only considered if
          # [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
          # ignored.
          suggested_price: nil,
          # Indicates if the price is tax inclusive.
          tax_inclusive: nil,
          type: :one_time_price
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::OrSymbol,
              discount: Integer,
              price: Integer,
              purchasing_power_parity: T::Boolean,
              type: Symbol,
              pay_what_you_want: T::Boolean,
              suggested_price: T.nilable(Integer),
              tax_inclusive: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end
      end

      class RecurringPrice < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Price::RecurringPrice,
              Dodopayments::Internal::AnyHash
            )
          end

        # The currency in which the payment is made.
        sig { returns(Dodopayments::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Integer) }
        attr_accessor :discount

        # Number of units for the payment frequency. For example, a value of `1` with a
        # `payment_frequency_interval` of `month` represents monthly payments.
        sig { returns(Integer) }
        attr_accessor :payment_frequency_count

        # The time interval for the payment frequency (e.g., day, month, year).
        sig { returns(Dodopayments::TimeInterval::OrSymbol) }
        attr_accessor :payment_frequency_interval

        # The payment amount. Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(Integer) }
        attr_accessor :price

        # Indicates if purchasing power parity adjustments are applied to the price.
        # Purchasing power parity feature is not available as of now
        sig { returns(T::Boolean) }
        attr_accessor :purchasing_power_parity

        # Number of units for the subscription period. For example, a value of `12` with a
        # `subscription_period_interval` of `month` represents a one-year subscription.
        sig { returns(Integer) }
        attr_accessor :subscription_period_count

        # The time interval for the subscription period (e.g., day, month, year).
        sig { returns(Dodopayments::TimeInterval::OrSymbol) }
        attr_accessor :subscription_period_interval

        sig { returns(Symbol) }
        attr_accessor :type

        # Indicates if the price is tax inclusive
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        # Amount charged today for a paid trial, in the price currency's minor units.
        # Requires `trial_period_days > 0`. Omit or null for a free trial (the default).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_amount

        # Whether discount codes reduce the trial charge. Defaults to false. Only
        # meaningful when a paid trial is configured.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :trial_apply_discounts

        # Number of days for the trial period. A value of `0` indicates no trial period.
        sig { returns(T.nilable(Integer)) }
        attr_reader :trial_period_days

        sig { params(trial_period_days: Integer).void }
        attr_writer :trial_period_days

        # Recurring price details.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            discount: Integer,
            payment_frequency_count: Integer,
            payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
            price: Integer,
            purchasing_power_parity: T::Boolean,
            subscription_period_count: Integer,
            subscription_period_interval: Dodopayments::TimeInterval::OrSymbol,
            tax_inclusive: T.nilable(T::Boolean),
            trial_amount: T.nilable(Integer),
            trial_apply_discounts: T.nilable(T::Boolean),
            trial_period_days: Integer,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency in which the payment is made.
          currency:,
          # Discount applied to the price, represented as a percentage (0 to 100).
          discount:,
          # Number of units for the payment frequency. For example, a value of `1` with a
          # `payment_frequency_interval` of `month` represents monthly payments.
          payment_frequency_count:,
          # The time interval for the payment frequency (e.g., day, month, year).
          payment_frequency_interval:,
          # The payment amount. Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          price:,
          # Indicates if purchasing power parity adjustments are applied to the price.
          # Purchasing power parity feature is not available as of now
          purchasing_power_parity:,
          # Number of units for the subscription period. For example, a value of `12` with a
          # `subscription_period_interval` of `month` represents a one-year subscription.
          subscription_period_count:,
          # The time interval for the subscription period (e.g., day, month, year).
          subscription_period_interval:,
          # Indicates if the price is tax inclusive
          tax_inclusive: nil,
          # Amount charged today for a paid trial, in the price currency's minor units.
          # Requires `trial_period_days > 0`. Omit or null for a free trial (the default).
          trial_amount: nil,
          # Whether discount codes reduce the trial charge. Defaults to false. Only
          # meaningful when a paid trial is configured.
          trial_apply_discounts: nil,
          # Number of days for the trial period. A value of `0` indicates no trial period.
          trial_period_days: nil,
          type: :recurring_price
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::OrSymbol,
              discount: Integer,
              payment_frequency_count: Integer,
              payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
              price: Integer,
              purchasing_power_parity: T::Boolean,
              subscription_period_count: Integer,
              subscription_period_interval:
                Dodopayments::TimeInterval::OrSymbol,
              type: Symbol,
              tax_inclusive: T.nilable(T::Boolean),
              trial_amount: T.nilable(Integer),
              trial_apply_discounts: T.nilable(T::Boolean),
              trial_period_days: Integer
            }
          )
        end
        def to_hash
        end
      end

      class UsageBasedPrice < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Price::UsageBasedPrice,
              Dodopayments::Internal::AnyHash
            )
          end

        # The currency in which the payment is made.
        sig { returns(Dodopayments::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Integer) }
        attr_accessor :discount

        # The fixed payment amount. Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(Integer) }
        attr_accessor :fixed_price

        # Number of units for the payment frequency. For example, a value of `1` with a
        # `payment_frequency_interval` of `month` represents monthly payments.
        sig { returns(Integer) }
        attr_accessor :payment_frequency_count

        # The time interval for the payment frequency (e.g., day, month, year).
        sig { returns(Dodopayments::TimeInterval::OrSymbol) }
        attr_accessor :payment_frequency_interval

        # Indicates if purchasing power parity adjustments are applied to the price.
        # Purchasing power parity feature is not available as of now
        sig { returns(T::Boolean) }
        attr_accessor :purchasing_power_parity

        # Number of units for the subscription period. For example, a value of `12` with a
        # `subscription_period_interval` of `month` represents a one-year subscription.
        sig { returns(Integer) }
        attr_accessor :subscription_period_count

        # The time interval for the subscription period (e.g., day, month, year).
        sig { returns(Dodopayments::TimeInterval::OrSymbol) }
        attr_accessor :subscription_period_interval

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(T.nilable(T::Array[Dodopayments::AddMeterToPrice])) }
        attr_accessor :meters

        # Indicates if the price is tax inclusive
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        # Usage Based price details.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            discount: Integer,
            fixed_price: Integer,
            payment_frequency_count: Integer,
            payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
            purchasing_power_parity: T::Boolean,
            subscription_period_count: Integer,
            subscription_period_interval: Dodopayments::TimeInterval::OrSymbol,
            meters: T.nilable(T::Array[Dodopayments::AddMeterToPrice::OrHash]),
            tax_inclusive: T.nilable(T::Boolean),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency in which the payment is made.
          currency:,
          # Discount applied to the price, represented as a percentage (0 to 100).
          discount:,
          # The fixed payment amount. Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          fixed_price:,
          # Number of units for the payment frequency. For example, a value of `1` with a
          # `payment_frequency_interval` of `month` represents monthly payments.
          payment_frequency_count:,
          # The time interval for the payment frequency (e.g., day, month, year).
          payment_frequency_interval:,
          # Indicates if purchasing power parity adjustments are applied to the price.
          # Purchasing power parity feature is not available as of now
          purchasing_power_parity:,
          # Number of units for the subscription period. For example, a value of `12` with a
          # `subscription_period_interval` of `month` represents a one-year subscription.
          subscription_period_count:,
          # The time interval for the subscription period (e.g., day, month, year).
          subscription_period_interval:,
          meters: nil,
          # Indicates if the price is tax inclusive
          tax_inclusive: nil,
          type: :usage_based_price
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::OrSymbol,
              discount: Integer,
              fixed_price: Integer,
              payment_frequency_count: Integer,
              payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
              purchasing_power_parity: T::Boolean,
              subscription_period_count: Integer,
              subscription_period_interval:
                Dodopayments::TimeInterval::OrSymbol,
              type: Symbol,
              meters: T.nilable(T::Array[Dodopayments::AddMeterToPrice]),
              tax_inclusive: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end
      end

      sig { override.returns(T::Array[Dodopayments::Price::Variants]) }
      def self.variants
      end
    end
  end
end
