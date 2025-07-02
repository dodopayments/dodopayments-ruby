# frozen_string_literal: true

module Dodopayments
  module Models
    # One-time price details.
    module Price
      extend Dodopayments::Internal::Type::Union

      # One-time price details.
      variant -> { Dodopayments::Price::OneTimePrice }

      # Recurring price details.
      variant -> { Dodopayments::Price::RecurringPrice }

      class OneTimePrice < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency in which the payment is made.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute discount
        #   Discount applied to the price, represented as a percentage (0 to 100).
        #
        #   @return [Float]
        required :discount, Float

        # @!attribute price
        #   The payment amount, in the smallest denomination of the currency (e.g., cents
        #   for USD). For example, to charge $1.00, pass `100`.
        #
        #   If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
        #   represents the **minimum** amount the customer must pay.
        #
        #   @return [Integer]
        required :price, Integer

        # @!attribute purchasing_power_parity
        #   Indicates if purchasing power parity adjustments are applied to the price.
        #   Purchasing power parity feature is not available as of now.
        #
        #   @return [Boolean]
        required :purchasing_power_parity, Dodopayments::Internal::Type::Boolean

        # @!attribute type
        #
        #   @return [Symbol, Dodopayments::Models::Price::OneTimePrice::Type]
        required :type, enum: -> { Dodopayments::Price::OneTimePrice::Type }

        # @!attribute pay_what_you_want
        #   Indicates whether the customer can pay any amount they choose. If set to `true`,
        #   the [`price`](Self::price) field is the minimum amount.
        #
        #   @return [Boolean, nil]
        optional :pay_what_you_want, Dodopayments::Internal::Type::Boolean

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

        # @!method initialize(currency:, discount:, price:, purchasing_power_parity:, type:, pay_what_you_want: nil, suggested_price: nil, tax_inclusive: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Price::OneTimePrice} for more details.
        #
        #   One-time price details.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency in which the payment is made.
        #
        #   @param discount [Float] Discount applied to the price, represented as a percentage (0 to 100).
        #
        #   @param price [Integer] The payment amount, in the smallest denomination of the currency (e.g., cents fo
        #
        #   @param purchasing_power_parity [Boolean] Indicates if purchasing power parity adjustments are applied to the price.
        #
        #   @param type [Symbol, Dodopayments::Models::Price::OneTimePrice::Type]
        #
        #   @param pay_what_you_want [Boolean] Indicates whether the customer can pay any amount they choose.
        #
        #   @param suggested_price [Integer, nil] A suggested price for the user to pay. This value is only considered if
        #
        #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive.

        # @see Dodopayments::Models::Price::OneTimePrice#type
        module Type
          extend Dodopayments::Internal::Type::Enum

          ONE_TIME_PRICE = :one_time_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class RecurringPrice < Dodopayments::Internal::Type::BaseModel
        # @!attribute currency
        #   The currency in which the payment is made.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute discount
        #   Discount applied to the price, represented as a percentage (0 to 100).
        #
        #   @return [Float]
        required :discount, Float

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

        # @!attribute purchasing_power_parity
        #   Indicates if purchasing power parity adjustments are applied to the price.
        #   Purchasing power parity feature is not available as of now
        #
        #   @return [Boolean]
        required :purchasing_power_parity, Dodopayments::Internal::Type::Boolean

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
        #   @return [Symbol, Dodopayments::Models::Price::RecurringPrice::Type]
        required :type, enum: -> { Dodopayments::Price::RecurringPrice::Type }

        # @!attribute tax_inclusive
        #   Indicates if the price is tax inclusive
        #
        #   @return [Boolean, nil]
        optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute trial_period_days
        #   Number of days for the trial period. A value of `0` indicates no trial period.
        #
        #   @return [Integer, nil]
        optional :trial_period_days, Integer

        # @!method initialize(currency:, discount:, payment_frequency_count:, payment_frequency_interval:, price:, purchasing_power_parity:, subscription_period_count:, subscription_period_interval:, type:, tax_inclusive: nil, trial_period_days: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Price::RecurringPrice} for more details.
        #
        #   Recurring price details.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] The currency in which the payment is made.
        #
        #   @param discount [Float] Discount applied to the price, represented as a percentage (0 to 100).
        #
        #   @param payment_frequency_count [Integer] Number of units for the payment frequency.
        #
        #   @param payment_frequency_interval [Symbol, Dodopayments::Models::TimeInterval] The time interval for the payment frequency (e.g., day, month, year).
        #
        #   @param price [Integer] The payment amount. Represented in the lowest denomination of the currency (e.g.
        #
        #   @param purchasing_power_parity [Boolean] Indicates if purchasing power parity adjustments are applied to the price.
        #
        #   @param subscription_period_count [Integer] Number of units for the subscription period.
        #
        #   @param subscription_period_interval [Symbol, Dodopayments::Models::TimeInterval] The time interval for the subscription period (e.g., day, month, year).
        #
        #   @param type [Symbol, Dodopayments::Models::Price::RecurringPrice::Type]
        #
        #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive
        #
        #   @param trial_period_days [Integer] Number of days for the trial period. A value of `0` indicates no trial period.

        # @see Dodopayments::Models::Price::RecurringPrice#type
        module Type
          extend Dodopayments::Internal::Type::Enum

          RECURRING_PRICE = :recurring_price

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)]
    end
  end
end
