# typed: strong

module Dodopayments
  module Models
    class InvoiceRetryParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceRetryParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(String) }
      attr_accessor :if_match

      sig do
        params(
          invoice_id: String,
          if_match: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(invoice_id:, if_match:, request_options: {})
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            if_match: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
