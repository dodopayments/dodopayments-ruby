# typed: strong

module Dodopayments
  module Models
    class DiscountCreateParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # The discount amount.
      #
      #   - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
      #     example, `100` means `$1.00`. Only USD is allowed.
      #   - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
      #     example, `540` means `5.4%`.
      #
      #   Must be at least 1.
      sig { returns(Integer) }
      def amount
      end

      sig { params(_: Integer).returns(Integer) }
      def amount=(_)
      end

      sig { returns(Dodopayments::Models::DiscountType::OrSymbol) }
      def type
      end

      sig do
        params(_: Dodopayments::Models::DiscountType::OrSymbol)
          .returns(Dodopayments::Models::DiscountType::OrSymbol)
      end
      def type=(_)
      end

      # Optionally supply a code (will be uppercased).
      #
      #   - Must be at least 3 characters if provided.
      #   - If omitted, a random 16-character code is generated.
      sig { returns(T.nilable(String)) }
      def code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def code=(_)
      end

      # When the discount expires, if ever.
      sig { returns(T.nilable(Time)) }
      def expires_at
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def expires_at=(_)
      end

      sig { returns(T.nilable(String)) }
      def name
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def name=(_)
      end

      # List of product IDs to restrict usage (if any).
      sig { returns(T.nilable(T::Array[String])) }
      def restricted_to
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def restricted_to=(_)
      end

      # How many times this discount can be used (if any). Must be >= 1 if provided.
      sig { returns(T.nilable(Integer)) }
      def usage_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def usage_limit=(_)
      end

      sig do
        params(
          amount: Integer,
          type: Dodopayments::Models::DiscountType::OrSymbol,
          code: T.nilable(String),
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          restricted_to: T.nilable(T::Array[String]),
          usage_limit: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount:,
        type:,
        code: nil,
        expires_at: nil,
        name: nil,
        restricted_to: nil,
        usage_limit: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: Integer,
              type: Dodopayments::Models::DiscountType::OrSymbol,
              code: T.nilable(String),
              expires_at: T.nilable(Time),
              name: T.nilable(String),
              restricted_to: T.nilable(T::Array[String]),
              usage_limit: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
