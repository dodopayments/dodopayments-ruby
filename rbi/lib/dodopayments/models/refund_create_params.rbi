# typed: strong

module Dodopayments
  module Models
    class RefundCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # The unique identifier of the payment to be refunded.
      sig { returns(String) }
      attr_accessor :payment_id

      # The reason for the refund, if any. Maximum length is 3000 characters. Optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      sig do
        params(
          payment_id: String,
          reason: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(payment_id:, reason: nil, request_options: {}); end

      sig do
        override
          .returns({
                     payment_id: String,
                     reason: T.nilable(String),
                     request_options: Dodopayments::RequestOptions
                   })
      end
      def to_hash; end
    end
  end
end
