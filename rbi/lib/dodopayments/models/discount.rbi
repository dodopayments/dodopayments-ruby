# typed: strong

module Dodopayments
  module Models
    class Discount < Dodopayments::Internal::Type::BaseModel
      # The discount amount.
      #
      #   - If `discount_type` is `percentage`, this is in **basis points** (e.g., 540 =>
      #     5.4%).
      #   - Otherwise, this is **USD cents** (e.g., 100 => `$1.00`).
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      # The business this discount belongs to.
      sig { returns(String) }
      def business_id
      end

      sig { params(_: String).returns(String) }
      def business_id=(_)
      end

      # The discount code (up to 16 chars).
      sig { returns(String) }
      def code
      end

      sig { params(_: String).returns(String) }
      def code=(_)
      end

      # Timestamp when the discount is created
      sig { returns(Time) }
      def created_at
      end

      sig { params(_: Time).returns(Time) }
      def created_at=(_)
      end

      # The unique discount ID
      sig { returns(String) }
      def discount_id
      end

      sig { params(_: String).returns(String) }
      def discount_id=(_)
      end

      # List of product IDs to which this discount is restricted.
      sig { returns(T::Array[String]) }
      def restricted_to
      end

      sig { params(_: T::Array[String]).returns(T::Array[String]) }
      def restricted_to=(_)
      end

      # How many times this discount has been used.
      sig { returns(Integer) }
      def times_used
      end

      sig { params(_: Integer).returns(Integer) }
      def times_used=(_)
      end

      sig { returns(Dodopayments::Models::DiscountType::TaggedSymbol) }
      def type
      end

      sig do
        params(_: Dodopayments::Models::DiscountType::TaggedSymbol)
          .returns(Dodopayments::Models::DiscountType::TaggedSymbol)
      end
      def type=(_)
      end

      # Optional date/time after which discount is expired.
      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expires_at=(_)
      end

      # Name for the Discount
      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      # Usage limit for this discount, if any.
      sig { returns(T.nilable(Integer)) }
      def usage_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def usage_limit=(_)
      end

      sig do
        params(
          amount: Integer,
          business_id: String,
          code: String,
          created_at: Time,
          discount_id: String,
          restricted_to: T::Array[String],
          times_used: Integer,
          type: Dodopayments::Models::DiscountType::TaggedSymbol,
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          usage_limit: T.nilable(Integer)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        business_id:,
        code:,
        created_at:,
        discount_id:,
        restricted_to:,
        times_used:,
        type:,
        expires_at: nil,
        name: nil,
        usage_limit: nil
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              business_id: String,
              code: String,
              created_at: Time,
              discount_id: String,
              restricted_to: T::Array[String],
              times_used: Integer,
              type: Dodopayments::Models::DiscountType::TaggedSymbol,
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
