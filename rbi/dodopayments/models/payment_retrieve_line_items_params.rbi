# typed: strong

module Dodopayments
  module Models
    class PaymentRetrieveLineItemsParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::PaymentRetrieveLineItemsParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :payment_id

      # The currency of the amounts. It must be the currency that the customer paid in.
      # Without it, the amounts are in the settlement currency.
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: Dodopayments::Currency::OrSymbol).void }
      attr_writer :currency

      sig do
        params(
          payment_id: String,
          currency: Dodopayments::Currency::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        payment_id:,
        # The currency of the amounts. It must be the currency that the customer paid in.
        # Without it, the amounts are in the settlement currency.
        currency: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            payment_id: String,
            currency: Dodopayments::Currency::OrSymbol,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
