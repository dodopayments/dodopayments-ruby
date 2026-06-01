# typed: strong

module Dodopayments
  module Models
    class DiscountDetail < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::DiscountDetail, Dodopayments::Internal::AnyHash)
        end

      # The discount amount in **basis points** (e.g., 540 => 5.4%).
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
        # The discount amount in **basis points** (e.g., 540 => 5.4%).
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
