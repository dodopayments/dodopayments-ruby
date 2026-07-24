# typed: strong

module Dodopayments
  module Models
    class Discount < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Discount, Dodopayments::Internal::AnyHash)
        end

      # The discount amount in **basis points** (e.g., 540 => 5.4%).
      sig { returns(Integer) }
      attr_accessor :amount

      # The business this discount belongs to.
      sig { returns(String) }
      attr_accessor :business_id

      # The discount code (up to 16 chars).
      sig { returns(String) }
      attr_accessor :code

      # Timestamp when the discount is created
      sig { returns(Time) }
      attr_accessor :created_at

      # Who may redeem this discount code.
      sig { returns(Dodopayments::Discount::CustomerEligibility::TaggedSymbol) }
      attr_accessor :customer_eligibility

      # The unique discount ID
      sig { returns(String) }
      attr_accessor :discount_id

      # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      sig { returns(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]) }
      attr_accessor :metadata

      # Whether this discount should be preserved when a subscription changes plans.
      # Default: false (discount is removed on plan change)
      sig { returns(T::Boolean) }
      attr_accessor :preserve_on_plan_change

      # List of product IDs to which this discount is restricted.
      sig { returns(T::Array[String]) }
      attr_accessor :restricted_to

      # How many times this discount has been used.
      sig { returns(Integer) }
      attr_accessor :times_used

      # The type of discount (`percentage` or `flat`).
      sig { returns(Dodopayments::DiscountType::TaggedSymbol) }
      attr_accessor :type

      # Per-currency options (flat deduction / percentage cap + minimum subtotal). Empty
      # for discounts without any configured currency options.
      sig do
        returns(T.nilable(T::Array[Dodopayments::Discount::CurrencyOption]))
      end
      attr_reader :currency_options

      sig do
        params(
          currency_options:
            T::Array[Dodopayments::Discount::CurrencyOption::OrHash]
        ).void
      end
      attr_writer :currency_options

      # Optional date/time after which discount is expired.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Name for the Discount
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Maximum number of times a single customer may redeem this discount, if any.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :per_customer_usage_limit

      # Optional date/time before which the discount is not yet active. NULL = active
      # immediately.
      sig { returns(T.nilable(Time)) }
      attr_accessor :starts_at

      # Number of subscription billing cycles this discount is valid for. If not
      # provided, the discount will be applied indefinitely to all recurring payments
      # related to the subscription.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :subscription_cycles

      # Usage limit for this discount, if any.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :usage_limit

      sig do
        params(
          amount: Integer,
          business_id: String,
          code: String,
          created_at: Time,
          customer_eligibility:
            Dodopayments::Discount::CustomerEligibility::OrSymbol,
          discount_id: String,
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          preserve_on_plan_change: T::Boolean,
          restricted_to: T::Array[String],
          times_used: Integer,
          type: Dodopayments::DiscountType::OrSymbol,
          currency_options:
            T::Array[Dodopayments::Discount::CurrencyOption::OrHash],
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          per_customer_usage_limit: T.nilable(Integer),
          starts_at: T.nilable(Time),
          subscription_cycles: T.nilable(Integer),
          usage_limit: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The discount amount in **basis points** (e.g., 540 => 5.4%).
        amount:,
        # The business this discount belongs to.
        business_id:,
        # The discount code (up to 16 chars).
        code:,
        # Timestamp when the discount is created
        created_at:,
        # Who may redeem this discount code.
        customer_eligibility:,
        # The unique discount ID
        discount_id:,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
        metadata:,
        # Whether this discount should be preserved when a subscription changes plans.
        # Default: false (discount is removed on plan change)
        preserve_on_plan_change:,
        # List of product IDs to which this discount is restricted.
        restricted_to:,
        # How many times this discount has been used.
        times_used:,
        # The type of discount (`percentage` or `flat`).
        type:,
        # Per-currency options (flat deduction / percentage cap + minimum subtotal). Empty
        # for discounts without any configured currency options.
        currency_options: nil,
        # Optional date/time after which discount is expired.
        expires_at: nil,
        # Name for the Discount
        name: nil,
        # Maximum number of times a single customer may redeem this discount, if any.
        per_customer_usage_limit: nil,
        # Optional date/time before which the discount is not yet active. NULL = active
        # immediately.
        starts_at: nil,
        # Number of subscription billing cycles this discount is valid for. If not
        # provided, the discount will be applied indefinitely to all recurring payments
        # related to the subscription.
        subscription_cycles: nil,
        # Usage limit for this discount, if any.
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
            customer_eligibility:
              Dodopayments::Discount::CustomerEligibility::TaggedSymbol,
            discount_id: String,
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            preserve_on_plan_change: T::Boolean,
            restricted_to: T::Array[String],
            times_used: Integer,
            type: Dodopayments::DiscountType::TaggedSymbol,
            currency_options: T::Array[Dodopayments::Discount::CurrencyOption],
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            per_customer_usage_limit: T.nilable(Integer),
            starts_at: T.nilable(Time),
            subscription_cycles: T.nilable(Integer),
            usage_limit: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      # Who may redeem this discount code.
      module CustomerEligibility
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::Discount::CustomerEligibility)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANY =
          T.let(:any, Dodopayments::Discount::CustomerEligibility::TaggedSymbol)
        FIRST_TIME =
          T.let(
            :first_time,
            Dodopayments::Discount::CustomerEligibility::TaggedSymbol
          )
        EXISTING =
          T.let(
            :existing,
            Dodopayments::Discount::CustomerEligibility::TaggedSymbol
          )
        SPECIFIC =
          T.let(
            :specific,
            Dodopayments::Discount::CustomerEligibility::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::Discount::CustomerEligibility::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class CurrencyOption < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Discount::CurrencyOption,
              Dodopayments::Internal::AnyHash
            )
          end

        # The currency this option applies to.
        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        # Whether this is the default row FX conversions pivot from.
        sig { returns(T::Boolean) }
        attr_accessor :is_default

        # Eligible-cart threshold in this currency's subunits (0 = no minimum).
        sig { returns(Integer) }
        attr_accessor :minimum_subtotal

        # The most this code discounts in this currency's subunits (flat deduction or
        # percentage cap).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_amount_possible

        # A per-currency discount option (response shape). `max_amount_possible` mirrors
        # the DB column of the same name.
        sig do
          params(
            currency: Dodopayments::Currency::OrSymbol,
            is_default: T::Boolean,
            minimum_subtotal: Integer,
            max_amount_possible: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # The currency this option applies to.
          currency:,
          # Whether this is the default row FX conversions pivot from.
          is_default:,
          # Eligible-cart threshold in this currency's subunits (0 = no minimum).
          minimum_subtotal:,
          # The most this code discounts in this currency's subunits (flat deduction or
          # percentage cap).
          max_amount_possible: nil
        )
        end

        sig do
          override.returns(
            {
              currency: Dodopayments::Currency::TaggedSymbol,
              is_default: T::Boolean,
              minimum_subtotal: Integer,
              max_amount_possible: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
