# typed: strong

module Dodopayments
  module Models
    module Price
      extend Dodopayments::Internal::Type::Union

      class OneTimePrice < Dodopayments::Internal::Type::BaseModel
        sig { returns(Dodopayments::Models::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Float) }
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

        sig do
          params(
            currency: Dodopayments::Models::Currency::OrSymbol,
            discount: Float,
            price: Integer,
            purchasing_power_parity: T::Boolean,
            pay_what_you_want: T::Boolean,
            suggested_price: T.nilable(Integer),
            tax_inclusive: T.nilable(T::Boolean),
            type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
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
        ); end
        sig do
          override
            .returns(
              {
                currency: Dodopayments::Models::Currency::OrSymbol,
                discount: Float,
                price: Integer,
                purchasing_power_parity: T::Boolean,
                type: Symbol,
                pay_what_you_want: T::Boolean,
                suggested_price: T.nilable(Integer),
                tax_inclusive: T.nilable(T::Boolean)
              }
            )
        end
        def to_hash; end
      end

      class RecurringPrice < Dodopayments::Internal::Type::BaseModel
        sig { returns(Dodopayments::Models::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Float) }
        attr_accessor :discount

        # Number of units for the payment frequency. For example, a value of `1` with a
        # `payment_frequency_interval` of `month` represents monthly payments.
        sig { returns(Integer) }
        attr_accessor :payment_frequency_count

        sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
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

        sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
        attr_accessor :subscription_period_interval

        sig { returns(Symbol) }
        attr_accessor :type

        # Indicates if the price is tax inclusive
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        # Number of days for the trial period. A value of `0` indicates no trial period.
        sig { returns(T.nilable(Integer)) }
        attr_reader :trial_period_days

        sig { params(trial_period_days: Integer).void }
        attr_writer :trial_period_days

        sig do
          params(
            currency: Dodopayments::Models::Currency::OrSymbol,
            discount: Float,
            payment_frequency_count: Integer,
            payment_frequency_interval: Dodopayments::Models::TimeInterval::OrSymbol,
            price: Integer,
            purchasing_power_parity: T::Boolean,
            subscription_period_count: Integer,
            subscription_period_interval: Dodopayments::Models::TimeInterval::OrSymbol,
            tax_inclusive: T.nilable(T::Boolean),
            trial_period_days: Integer,
            type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          currency:,
          # Discount applied to the price, represented as a percentage (0 to 100).
          discount:,
          # Number of units for the payment frequency. For example, a value of `1` with a
          # `payment_frequency_interval` of `month` represents monthly payments.
          payment_frequency_count:,
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
          subscription_period_interval:,
          # Indicates if the price is tax inclusive
          tax_inclusive: nil,
          # Number of days for the trial period. A value of `0` indicates no trial period.
          trial_period_days: nil,
          type: :recurring_price
        ); end
        sig do
          override
            .returns(
              {
                currency: Dodopayments::Models::Currency::OrSymbol,
                discount: Float,
                payment_frequency_count: Integer,
                payment_frequency_interval: Dodopayments::Models::TimeInterval::OrSymbol,
                price: Integer,
                purchasing_power_parity: T::Boolean,
                subscription_period_count: Integer,
                subscription_period_interval: Dodopayments::Models::TimeInterval::OrSymbol,
                type: Symbol,
                tax_inclusive: T.nilable(T::Boolean),
                trial_period_days: Integer
              }
            )
        end
        def to_hash; end
      end

      sig { override.returns([Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]) }
      def self.variants; end
    end
  end
end
