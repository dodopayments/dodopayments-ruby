# typed: strong

module Dodopayments
  module Models
    class CustomerDeletePaymentMethodParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerDeletePaymentMethodParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :payment_method_id

      sig do
        params(
          customer_id: String,
          payment_method_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(customer_id:, payment_method_id:, request_options: {})
      end

      sig do
        override.returns(
          {
            customer_id: String,
            payment_method_id: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
