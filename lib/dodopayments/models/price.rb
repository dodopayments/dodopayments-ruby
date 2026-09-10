# frozen_string_literal: true

module Dodopayments
  module Models
    # One-time price details.
    module Price
      extend Dodopayments::Internal::Type::Union

      discriminator :type

      # One-time price details.
      variant :one_time_price, -> { Dodopayments::Price::OneTimePrice }

      # Recurring price details.
      variant :recurring_price, -> { Dodopayments::Price::RecurringPrice }

      # Usage Based price details.
      variant :usage_based_price, -> { Dodopayments::Price::UsageBasedPrice }

      class OneTimePrice < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency in which the payment is made.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute price
        #   The payment amount, in the smallest denomination of the currency (e.g., cents
        #   for USD). For example, to charge $1.00, pass `100`.
        #
        #   If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
        #   represents the **minimum** amount the customer must pay.
        #
        #   @return [Integer]
        required :price, Integer

        # @!attribute type
        #
        #   @return [Symbol, :one_time_price]
        required :type, const: :one_time_price

        # @!attribute discount
        #   @deprecated
        #
        #   Deprecated: use `discount_bps` instead.
        #
        #   Discount applied to the price, represented as a percentage (0 to 100). A
        #   response rounds this value to the nearest whole percent. Defaults to `0`.
        #
        #   @return [Integer, nil]
        optional :discount, Integer

        # @!attribute discount_bps
        #   Discount applied to the price, in basis points. 100 basis points make one
        #   percent, so `1250` is a discount of 12.5%.
        #
        #   Use this field for a discount with a fraction of a percent. A request that sends
        #   this field ignores `discount`. A value of `0` gives no discount.
        #
        #   @return [Integer, nil]
        optional :discount_bps, Integer, nil?: true

        # @!attribute pay_what_you_want
        #   Indicates whether the customer can pay any amount they choose. If set to `true`,
        #   the [`price`](Self::price) field is the minimum amount.
        #
        #   @return [Boolean, nil]
        optional :pay_what_you_want, Dodopayments::Internal::Type::Boolean

        # @!attribute purchasing_power_parity
        #   Opts this price in to purchasing power parity. The business must also enable
        #   purchasing power parity. The discount percentage per country is always
        #   business-wide. Defaults to `false`.
        #
        #   @return [Boolean, nil]
        optional :purchasing_power_parity, Dodopayments::Internal::Type::Boolean

        # @!attribute suggested_price
        #   A suggested price for the user to pay. This value is only considered if
        #   [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
        #   ignored.
        #
        #   @return [Integer, nil]
        optional :suggested_price, Integer, nil?: true

        # @!attribute tax_inclusive
        #   Indicates if the price is tax inclusive.
        #
        #   @return [Boolean, nil]
        optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(currency:, price:, discount: nil, discount_bps: nil, pay_what_you_want: nil, purchasing_power_parity: nil, suggested_price: nil, tax_inclusive: nil, type: :one_time_price)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Price::OneTimePrice} for more details.
        #
        #   One-time price details.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency in which the payment is made.
        #
        #   @param price [Integer] The payment amount, in the smallest denomination of the currency (e.g., cents fo
        #
        #   @param discount [Integer] Deprecated: use `discount_bps` instead.
        #
        #   @param discount_bps [Integer, nil] Discount applied to the price, in basis points. 100 basis points make
        #
        #   @param pay_what_you_want [Boolean] Indicates whether the customer can pay any amount they choose.
        #
        #   @param purchasing_power_parity [Boolean] Opts this price in to purchasing power parity. The business must also
        #
        #   @param suggested_price [Integer, nil] A suggested price for the user to pay. This value is only considered if
        #
        #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive.
        #
        #   @param type [Symbol, :one_time_price]
      end

      class RecurringPrice < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency in which the payment is made.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute payment_frequency_count
        #   Number of units for the payment frequency. For example, a value of `1` with a
        #   `payment_frequency_interval` of `month` represents monthly payments.
        #
        #   @return [Integer]
        required :payment_frequency_count, Integer

        # @!attribute payment_frequency_interval
        #   The time interval for the payment frequency (e.g., day, month, year).
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval]
        required :payment_frequency_interval, enum: -> { Dodopayments::TimeInterval }

        # @!attribute price
        #   The payment amount. Represented in the lowest denomination of the currency
        #   (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        #
        #   @return [Integer]
        required :price, Integer

        # @!attribute subscription_period_count
        #   Number of units for the subscription period. For example, a value of `12` with a
        #   `subscription_period_interval` of `month` represents a one-year subscription.
        #
        #   @return [Integer]
        required :subscription_period_count, Integer

        # @!attribute subscription_period_interval
        #   The time interval for the subscription period (e.g., day, month, year).
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval]
        required :subscription_period_interval, enum: -> { Dodopayments::TimeInterval }

        # @!attribute type
        #
        #   @return [Symbol, :recurring_price]
        required :type, const: :recurring_price

        # @!attribute discount
        #   @deprecated
        #
        #   Deprecated: use `discount_bps` instead.
        #
        #   Discount applied to the price, represented as a percentage (0 to 100). A
        #   response rounds this value to the nearest whole percent. Defaults to `0`.
        #
        #   @return [Integer, nil]
        optional :discount, Integer

        # @!attribute discount_bps
        #   Discount applied to the price, in basis points. 100 basis points make one
        #   percent, so `1250` is a discount of 12.5%.
        #
        #   Use this field for a discount with a fraction of a percent. A request that sends
        #   this field ignores `discount`. A value of `0` gives no discount.
        #
        #   @return [Integer, nil]
        optional :discount_bps, Integer, nil?: true

        # @!attribute purchasing_power_parity
        #   Opts this price in to purchasing power parity. The business must also enable
        #   purchasing power parity. The discount percentage per country is always
        #   business-wide. Defaults to `false`.
        #
        #   @return [Boolean, nil]
        optional :purchasing_power_parity, Dodopayments::Internal::Type::Boolean

        # @!attribute tax_inclusive
        #   Indicates if the price is tax inclusive
        #
        #   @return [Boolean, nil]
        optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute trial_amount
        #   Amount charged today for a paid trial, in the price currency's minor units.
        #   Requires `trial_period_days > 0`. Omit or null for a free trial (the default).
        #
        #   @return [Integer, nil]
        optional :trial_amount, Integer, nil?: true

        # @!attribute trial_apply_discounts
        #   Whether discount codes reduce the trial charge. Defaults to false. Only
        #   meaningful when a paid trial is configured.
        #
        #   @return [Boolean, nil]
        optional :trial_apply_discounts, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute trial_payment_method_optional
        #   Let a customer start a free trial with no card. Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :trial_payment_method_optional, Dodopayments::Internal::Type::Boolean

        # @!attribute trial_period_days
        #   Number of days for the trial period. A value of `0` indicates no trial period.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer

        # @!attribute zero_amount_payment_method_optional
        #   Let a customer start a subscription with no card, when the amount due today is
        #   `0` (a native `0` price, or a 100% discount). Defaults to false.
        #
        #   @return [Boolean, nil]
        optional :zero_amount_payment_method_optional, Dodopayments::Internal::Type::Boolean

        # @!method initialize(currency:, payment_frequency_count:, payment_frequency_interval:, price:, subscription_period_count:, subscription_period_interval:, discount: nil, discount_bps: nil, purchasing_power_parity: nil, tax_inclusive: nil, trial_amount: nil, trial_apply_discounts: nil, trial_payment_method_optional: nil, trial_period_days: nil, zero_amount_payment_method_optional: nil, type: :recurring_price)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Price::RecurringPrice} for more details.
        #
        #   Recurring price details.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency in which the payment is made.
        #
        #   @param payment_frequency_count [Integer] Number of units for the payment frequency.
        #
        #   @param payment_frequency_interval [Symbol, Dodopayments::Models::TimeInterval] The time interval for the payment frequency (e.g., day, month, year).
        #
        #   @param price [Integer] The payment amount. Represented in the lowest denomination of the currency (e.g.
        #
        #   @param subscription_period_count [Integer] Number of units for the subscription period.
        #
        #   @param subscription_period_interval [Symbol, Dodopayments::Models::TimeInterval] The time interval for the subscription period (e.g., day, month, year).
        #
        #   @param discount [Integer] Deprecated: use `discount_bps` instead.
        #
        #   @param discount_bps [Integer, nil] Discount applied to the price, in basis points. 100 basis points make
        #
        #   @param purchasing_power_parity [Boolean] Opts this price in to purchasing power parity. The business must also
        #
        #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive
        #
        #   @param trial_amount [Integer, nil] Amount charged today for a paid trial, in the price currency's minor units.
        #
        #   @param trial_apply_discounts [Boolean, nil] Whether discount codes reduce the trial charge. Defaults to false. Only meaningf
        #
        #   @param trial_payment_method_optional [Boolean] Let a customer start a free trial with no card. Defaults to false.
        #
        #   @param trial_period_days [Integer] Number of days for the trial period. A value of `0` indicates no trial period.
        #
        #   @param zero_amount_payment_method_optional [Boolean] Let a customer start a subscription with no card, when the amount due
        #
        #   @param type [Symbol, :recurring_price]
      end

      class UsageBasedPrice < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency in which the payment is made.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute fixed_price
        #   The fixed payment amount. Represented in the lowest denomination of the currency
        #   (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        #
        #   @return [Integer]
        required :fixed_price, Integer

        # @!attribute payment_frequency_count
        #   Number of units for the payment frequency. For example, a value of `1` with a
        #   `payment_frequency_interval` of `month` represents monthly payments.
        #
        #   @return [Integer]
        required :payment_frequency_count, Integer

        # @!attribute payment_frequency_interval
        #   The time interval for the payment frequency (e.g., day, month, year).
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval]
        required :payment_frequency_interval, enum: -> { Dodopayments::TimeInterval }

        # @!attribute subscription_period_count
        #   Number of units for the subscription period. For example, a value of `12` with a
        #   `subscription_period_interval` of `month` represents a one-year subscription.
        #
        #   @return [Integer]
        required :subscription_period_count, Integer

        # @!attribute subscription_period_interval
        #   The time interval for the subscription period (e.g., day, month, year).
        #
        #   @return [Symbol, Dodopayments::Models::TimeInterval]
        required :subscription_period_interval, enum: -> { Dodopayments::TimeInterval }

        # @!attribute type
        #
        #   @return [Symbol, :usage_based_price]
        required :type, const: :usage_based_price

        # @!attribute discount
        #   @deprecated
        #
        #   Deprecated: use `discount_bps` instead.
        #
        #   Discount applied to the price, represented as a percentage (0 to 100). A
        #   response rounds this value to the nearest whole percent. Defaults to `0`.
        #
        #   @return [Integer, nil]
        optional :discount, Integer

        # @!attribute discount_bps
        #   Discount applied to the price, in basis points. 100 basis points make one
        #   percent, so `1250` is a discount of 12.5%.
        #
        #   Use this field for a discount with a fraction of a percent. A request that sends
        #   this field ignores `discount`. A value of `0` gives no discount.
        #
        #   @return [Integer, nil]
        optional :discount_bps, Integer, nil?: true

        # @!attribute meters
        #
        #   @return [Array<Dodopayments::Models::AddMeterToPrice>, nil]
        optional :meters,
                 -> {
                   Dodopayments::Internal::Type::ArrayOf[Dodopayments::AddMeterToPrice]
                 },
                 nil?: true

        # @!attribute purchasing_power_parity
        #   Opts this price in to purchasing power parity. The business must also enable
        #   purchasing power parity. The discount percentage per country is always
        #   business-wide. Applies to the fixed fee only, never to metered usage. Defaults
        #   to `false`.
        #
        #   @return [Boolean, nil]
        optional :purchasing_power_parity, Dodopayments::Internal::Type::Boolean

        # @!attribute tax_inclusive
        #   Indicates if the price is tax inclusive
        #
        #   @return [Boolean, nil]
        optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(currency:, fixed_price:, payment_frequency_count:, payment_frequency_interval:, subscription_period_count:, subscription_period_interval:, discount: nil, discount_bps: nil, meters: nil, purchasing_power_parity: nil, tax_inclusive: nil, type: :usage_based_price)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Price::UsageBasedPrice} for more details.
        #
        #   Usage Based price details.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency in which the payment is made.
        #
        #   @param fixed_price [Integer] The fixed payment amount. Represented in the lowest denomination of the currency
        #
        #   @param payment_frequency_count [Integer] Number of units for the payment frequency.
        #
        #   @param payment_frequency_interval [Symbol, Dodopayments::Models::TimeInterval] The time interval for the payment frequency (e.g., day, month, year).
        #
        #   @param subscription_period_count [Integer] Number of units for the subscription period.
        #
        #   @param subscription_period_interval [Symbol, Dodopayments::Models::TimeInterval] The time interval for the subscription period (e.g., day, month, year).
        #
        #   @param discount [Integer] Deprecated: use `discount_bps` instead.
        #
        #   @param discount_bps [Integer, nil] Discount applied to the price, in basis points. 100 basis points make
        #
        #   @param meters [Array<Dodopayments::Models::AddMeterToPrice>, nil]
        #
        #   @param purchasing_power_parity [Boolean] Opts this price in to purchasing power parity. The business must also
        #
        #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive
        #
        #   @param type [Symbol, :usage_based_price]
      end

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice)]
    end
  end
end
