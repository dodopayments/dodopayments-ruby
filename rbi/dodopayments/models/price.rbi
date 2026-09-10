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

        # The payment amount, in the smallest denomination of the currency (e.g., cents
        # for USD). For example, to charge $1.00, pass `100`.
        #
        # If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
        # represents the **minimum** amount the customer must pay.
        sig { returns(Integer) }
        attr_accessor :price

        sig { returns(Symbol) }
        attr_accessor :type

        # Deprecated: use `discount_bps` instead.
        #
        # Discount applied to the price, represented as a percentage (0 to 100). A
        # response rounds this value to the nearest whole percent. Defaults to `0`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :discount

        sig { params(discount: Integer).void }
        attr_writer :discount

        # Discount applied to the price, in basis points. 100 basis points make one
        # percent, so `1250` is a discount of 12.5%.
        #
        # Use this field for a discount with a fraction of a percent. A request that sends
        # this field ignores `discount`. A value of `0` gives no discount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_bps

        # Indicates whether the customer can pay any amount they choose. If set to `true`,
        # the [`price`](Self::price) field is the minimum amount.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :pay_what_you_want

        sig { params(pay_what_you_want: T::Boolean).void }
        attr_writer :pay_what_you_want

        # Opts this price in to purchasing power parity. The business must also enable
        # purchasing power parity. The discount percentage per country is always
        # business-wide. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :purchasing_power_parity

        sig { params(purchasing_power_parity: T::Boolean).void }
        attr_writer :purchasing_power_parity

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
            price: Integer,
            discount: Integer,
            discount_bps: T.nilable(Integer),
            pay_what_you_want: T::Boolean,
            purchasing_power_parity: T::Boolean,
            suggested_price: T.nilable(Integer),
            tax_inclusive: T.nilable(T::Boolean),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency in which the payment is made.
          currency:,
          # The payment amount, in the smallest denomination of the currency (e.g., cents
          # for USD). For example, to charge $1.00, pass `100`.
          #
          # If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
          # represents the **minimum** amount the customer must pay.
          price:,
          # Deprecated: use `discount_bps` instead.
          #
          # Discount applied to the price, represented as a percentage (0 to 100). A
          # response rounds this value to the nearest whole percent. Defaults to `0`.
          discount: nil,
          # Discount applied to the price, in basis points. 100 basis points make one
          # percent, so `1250` is a discount of 12.5%.
          #
          # Use this field for a discount with a fraction of a percent. A request that sends
          # this field ignores `discount`. A value of `0` gives no discount.
          discount_bps: nil,
          # Indicates whether the customer can pay any amount they choose. If set to `true`,
          # the [`price`](Self::price) field is the minimum amount.
          pay_what_you_want: nil,
          # Opts this price in to purchasing power parity. The business must also enable
          # purchasing power parity. The discount percentage per country is always
          # business-wide. Defaults to `false`.
          purchasing_power_parity: nil,
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
              price: Integer,
              type: Symbol,
              discount: Integer,
              discount_bps: T.nilable(Integer),
              pay_what_you_want: T::Boolean,
              purchasing_power_parity: T::Boolean,
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

        # Number of units for the subscription period. For example, a value of `12` with a
        # `subscription_period_interval` of `month` represents a one-year subscription.
        sig { returns(Integer) }
        attr_accessor :subscription_period_count

        # The time interval for the subscription period (e.g., day, month, year).
        sig { returns(Dodopayments::TimeInterval::OrSymbol) }
        attr_accessor :subscription_period_interval

        sig { returns(Symbol) }
        attr_accessor :type

        # Deprecated: use `discount_bps` instead.
        #
        # Discount applied to the price, represented as a percentage (0 to 100). A
        # response rounds this value to the nearest whole percent. Defaults to `0`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :discount

        sig { params(discount: Integer).void }
        attr_writer :discount

        # Discount applied to the price, in basis points. 100 basis points make one
        # percent, so `1250` is a discount of 12.5%.
        #
        # Use this field for a discount with a fraction of a percent. A request that sends
        # this field ignores `discount`. A value of `0` gives no discount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_bps

        # Opts this price in to purchasing power parity. The business must also enable
        # purchasing power parity. The discount percentage per country is always
        # business-wide. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :purchasing_power_parity

        sig { params(purchasing_power_parity: T::Boolean).void }
        attr_writer :purchasing_power_parity

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

        # Let a customer start a free trial with no card. Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :trial_payment_method_optional

        sig { params(trial_payment_method_optional: T::Boolean).void }
        attr_writer :trial_payment_method_optional

        # Number of days for the trial period. A value of `0` indicates no trial period.
        sig { returns(T.nilable(Integer)) }
        attr_reader :trial_period_days

        sig { params(trial_period_days: Integer).void }
        attr_writer :trial_period_days

        # Let a customer start a subscription with no card, when the amount due today is
        # `0` (a native `0` price, or a 100% discount). Defaults to false.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :zero_amount_payment_method_optional

        sig { params(zero_amount_payment_method_optional: T::Boolean).void }
        attr_writer :zero_amount_payment_method_optional

        # Recurring price details.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            payment_frequency_count: Integer,
            payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
            price: Integer,
            subscription_period_count: Integer,
            subscription_period_interval: Dodopayments::TimeInterval::OrSymbol,
            discount: Integer,
            discount_bps: T.nilable(Integer),
            purchasing_power_parity: T::Boolean,
            tax_inclusive: T.nilable(T::Boolean),
            trial_amount: T.nilable(Integer),
            trial_apply_discounts: T.nilable(T::Boolean),
            trial_payment_method_optional: T::Boolean,
            trial_period_days: Integer,
            zero_amount_payment_method_optional: T::Boolean,
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency in which the payment is made.
          currency:,
          # Number of units for the payment frequency. For example, a value of `1` with a
          # `payment_frequency_interval` of `month` represents monthly payments.
          payment_frequency_count:,
          # The time interval for the payment frequency (e.g., day, month, year).
          payment_frequency_interval:,
          # The payment amount. Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          price:,
          # Number of units for the subscription period. For example, a value of `12` with a
          # `subscription_period_interval` of `month` represents a one-year subscription.
          subscription_period_count:,
          # The time interval for the subscription period (e.g., day, month, year).
          subscription_period_interval:,
          # Deprecated: use `discount_bps` instead.
          #
          # Discount applied to the price, represented as a percentage (0 to 100). A
          # response rounds this value to the nearest whole percent. Defaults to `0`.
          discount: nil,
          # Discount applied to the price, in basis points. 100 basis points make one
          # percent, so `1250` is a discount of 12.5%.
          #
          # Use this field for a discount with a fraction of a percent. A request that sends
          # this field ignores `discount`. A value of `0` gives no discount.
          discount_bps: nil,
          # Opts this price in to purchasing power parity. The business must also enable
          # purchasing power parity. The discount percentage per country is always
          # business-wide. Defaults to `false`.
          purchasing_power_parity: nil,
          # Indicates if the price is tax inclusive
          tax_inclusive: nil,
          # Amount charged today for a paid trial, in the price currency's minor units.
          # Requires `trial_period_days > 0`. Omit or null for a free trial (the default).
          trial_amount: nil,
          # Whether discount codes reduce the trial charge. Defaults to false. Only
          # meaningful when a paid trial is configured.
          trial_apply_discounts: nil,
          # Let a customer start a free trial with no card. Defaults to false.
          trial_payment_method_optional: nil,
          # Number of days for the trial period. A value of `0` indicates no trial period.
          trial_period_days: nil,
          # Let a customer start a subscription with no card, when the amount due today is
          # `0` (a native `0` price, or a 100% discount). Defaults to false.
          zero_amount_payment_method_optional: nil,
          type: :recurring_price
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::OrSymbol,
              payment_frequency_count: Integer,
              payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
              price: Integer,
              subscription_period_count: Integer,
              subscription_period_interval:
                Dodopayments::TimeInterval::OrSymbol,
              type: Symbol,
              discount: Integer,
              discount_bps: T.nilable(Integer),
              purchasing_power_parity: T::Boolean,
              tax_inclusive: T.nilable(T::Boolean),
              trial_amount: T.nilable(Integer),
              trial_apply_discounts: T.nilable(T::Boolean),
              trial_payment_method_optional: T::Boolean,
              trial_period_days: Integer,
              zero_amount_payment_method_optional: T::Boolean
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

        # Number of units for the subscription period. For example, a value of `12` with a
        # `subscription_period_interval` of `month` represents a one-year subscription.
        sig { returns(Integer) }
        attr_accessor :subscription_period_count

        # The time interval for the subscription period (e.g., day, month, year).
        sig { returns(Dodopayments::TimeInterval::OrSymbol) }
        attr_accessor :subscription_period_interval

        sig { returns(Symbol) }
        attr_accessor :type

        # Deprecated: use `discount_bps` instead.
        #
        # Discount applied to the price, represented as a percentage (0 to 100). A
        # response rounds this value to the nearest whole percent. Defaults to `0`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :discount

        sig { params(discount: Integer).void }
        attr_writer :discount

        # Discount applied to the price, in basis points. 100 basis points make one
        # percent, so `1250` is a discount of 12.5%.
        #
        # Use this field for a discount with a fraction of a percent. A request that sends
        # this field ignores `discount`. A value of `0` gives no discount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :discount_bps

        sig { returns(T.nilable(T::Array[Dodopayments::AddMeterToPrice])) }
        attr_accessor :meters

        # Opts this price in to purchasing power parity. The business must also enable
        # purchasing power parity. The discount percentage per country is always
        # business-wide. Applies to the fixed fee only, never to metered usage. Defaults
        # to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :purchasing_power_parity

        sig { params(purchasing_power_parity: T::Boolean).void }
        attr_writer :purchasing_power_parity

        # Indicates if the price is tax inclusive
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        # Usage Based price details.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            fixed_price: Integer,
            payment_frequency_count: Integer,
            payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
            subscription_period_count: Integer,
            subscription_period_interval: Dodopayments::TimeInterval::OrSymbol,
            discount: Integer,
            discount_bps: T.nilable(Integer),
            meters: T.nilable(T::Array[Dodopayments::AddMeterToPrice::OrHash]),
            purchasing_power_parity: T::Boolean,
            tax_inclusive: T.nilable(T::Boolean),
            type: Symbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency in which the payment is made.
          currency:,
          # The fixed payment amount. Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          fixed_price:,
          # Number of units for the payment frequency. For example, a value of `1` with a
          # `payment_frequency_interval` of `month` represents monthly payments.
          payment_frequency_count:,
          # The time interval for the payment frequency (e.g., day, month, year).
          payment_frequency_interval:,
          # Number of units for the subscription period. For example, a value of `12` with a
          # `subscription_period_interval` of `month` represents a one-year subscription.
          subscription_period_count:,
          # The time interval for the subscription period (e.g., day, month, year).
          subscription_period_interval:,
          # Deprecated: use `discount_bps` instead.
          #
          # Discount applied to the price, represented as a percentage (0 to 100). A
          # response rounds this value to the nearest whole percent. Defaults to `0`.
          discount: nil,
          # Discount applied to the price, in basis points. 100 basis points make one
          # percent, so `1250` is a discount of 12.5%.
          #
          # Use this field for a discount with a fraction of a percent. A request that sends
          # this field ignores `discount`. A value of `0` gives no discount.
          discount_bps: nil,
          meters: nil,
          # Opts this price in to purchasing power parity. The business must also enable
          # purchasing power parity. The discount percentage per country is always
          # business-wide. Applies to the fixed fee only, never to metered usage. Defaults
          # to `false`.
          purchasing_power_parity: nil,
          # Indicates if the price is tax inclusive
          tax_inclusive: nil,
          type: :usage_based_price
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::OrSymbol,
              fixed_price: Integer,
              payment_frequency_count: Integer,
              payment_frequency_interval: Dodopayments::TimeInterval::OrSymbol,
              subscription_period_count: Integer,
              subscription_period_interval:
                Dodopayments::TimeInterval::OrSymbol,
              type: Symbol,
              discount: Integer,
              discount_bps: T.nilable(Integer),
              meters: T.nilable(T::Array[Dodopayments::AddMeterToPrice]),
              purchasing_power_parity: T::Boolean,
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
