# typed: strong

module Dodopayments
  module Models
    class DiscountUpdateParams < Dodopayments::BaseModel
      extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # If present, update the discount amount:
      #
      #   - If `discount_type` is `percentage`, this represents **basis points** (e.g.,
      #     `540` = `5.4%`).
      #   - Otherwise, this represents **USD cents** (e.g., `100` = `$1.00`).
      #
      #   Must be at least 1 if provided.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      # If present, update the discount code (uppercase).
      sig { returns(T.nilable(String)) }
      def code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def code=(_)
      end

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

      # If present, replaces all restricted product IDs with this new set. To remove all
      #   restrictions, send empty array
      sig { returns(T.nilable(T::Array[String])) }
      def restricted_to
      end

      sig { params(_: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def restricted_to=(_)
      end

      sig { returns(T.nilable(Dodopayments::Models::DiscountType::OrSymbol)) }
      def type
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::DiscountType::OrSymbol))
          .returns(T.nilable(Dodopayments::Models::DiscountType::OrSymbol))
      end
      def type=(_)
      end

      sig { returns(T.nilable(Integer)) }
      def usage_limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def usage_limit=(_)
      end

      sig do
        params(
          amount: T.nilable(Integer),
          code: T.nilable(String),
          expires_at: T.nilable(Time),
          name: T.nilable(String),
          restricted_to: T.nilable(T::Array[String]),
          type: T.nilable(Dodopayments::Models::DiscountType::OrSymbol),
          usage_limit: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        amount: nil,
        code: nil,
        expires_at: nil,
        name: nil,
        restricted_to: nil,
        type: nil,
        usage_limit: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              amount: T.nilable(Integer),
              code: T.nilable(String),
              expires_at: T.nilable(Time),
              name: T.nilable(String),
              restricted_to: T.nilable(T::Array[String]),
              type: T.nilable(Dodopayments::Models::DiscountType::OrSymbol),
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
