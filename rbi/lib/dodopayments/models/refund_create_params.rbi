# typed: strong

module Dodopayments
  module Models
    class RefundCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # The unique identifier of the payment to be refunded.
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      # The amount to be refunded. Must be non-negative. Optional. Partial refunds are
      #   currently disabled.
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      # The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      sig { returns(T.nilable(String)) }
      def reason
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_)
      end

      sig do
        params(
          payment_id: String,
          amount: T.nilable(Integer),
          reason: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(payment_id:, amount: nil, reason: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              payment_id: String,
              amount: T.nilable(Integer),
              reason: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
