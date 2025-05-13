# typed: strong

module Dodopayments
  module Models
    class Discount < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Discount, Dodopayments::Internal::AnyHash)
        end

      # The discount amount.
      #
      # - If `discount_type` is `percentage`, this is in **basis points** (e.g., 540 =>
      #   5.4%).
      # - Otherwise, this is **USD cents** (e.g., 100 => `$1.00`).
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

      # The unique discount ID
      sig { returns(String) }
      attr_accessor :discount_id

      # List of product IDs to which this discount is restricted.
      sig { returns(T::Array[String]) }
      attr_accessor :restricted_to

      # How many times this discount has been used.
      sig { returns(Integer) }
      attr_accessor :times_used

      sig { returns(Dodopayments::DiscountType::TaggedSymbol) }
      attr_accessor :type

      # Optional date/time after which discount is expired.
      sig { returns(T.nilable(Time)) }
      attr_accessor :expires_at

      # Name for the Discount
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Usage limit for this discount, if any.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :usage_limit

      sig do
        params(
          amount: Integer,
          business_id: String,
          code: String,
          created_at: Time,
          discount_id: String,
          restricted_to: T::Array[String],
          times_used: Integer,
          type: Dodopayments::DiscountType::OrSymbol,
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          usage_limit: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The discount amount.
        #
        # - If `discount_type` is `percentage`, this is in **basis points** (e.g., 540 =>
        #   5.4%).
        # - Otherwise, this is **USD cents** (e.g., 100 => `$1.00`).
        amount:,
        # The business this discount belongs to.
        business_id:,
        # The discount code (up to 16 chars).
        code:,
        # Timestamp when the discount is created
        created_at:,
        # The unique discount ID
        discount_id:,
        # List of product IDs to which this discount is restricted.
        restricted_to:,
        # How many times this discount has been used.
        times_used:,
        type:,
        # Optional date/time after which discount is expired.
        expires_at: nil,
        # Name for the Discount
        name: nil,
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
            discount_id: String,
            restricted_to: T::Array[String],
            times_used: Integer,
            type: Dodopayments::DiscountType::TaggedSymbol,
            expires_at: T.nilable(Time),
            name: T.nilable(String),
            usage_limit: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
