# typed: strong

module Dodopayments
  module Models
    class InvoiceAddNoteParams < Dodopayments::Models::Blocklist::Customers::NoteRequest
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceAddNoteParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      sig do
        params(
          invoice_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(invoice_id:, request_options: {})
      end

      sig do
        override.returns(
          { invoice_id: String, request_options: Dodopayments::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
