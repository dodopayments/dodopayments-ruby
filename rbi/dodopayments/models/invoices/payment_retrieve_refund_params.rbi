# typed: strong

module Dodopayments
  module Models
    module Invoices
      class PaymentRetrieveRefundParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Invoices::PaymentRetrieveRefundParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :refund_id

        sig do
          params(
            refund_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(refund_id:, request_options: {})
        end

        sig do
          override.returns(
            { refund_id: String, request_options: Dodopayments::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
