# typed: strong

module Dodopayments
  module Models
    class InvoicePreviewExistingParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoicePreviewExistingParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :invoice_id

      # The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      # draft mark. `email` returns the HTML of the invoice email. A preview saves no
      # row.
      sig do
        returns(
          T.nilable(
            Dodopayments::InvoicePreviewExistingParams::Format::OrSymbol
          )
        )
      end
      attr_reader :format_

      sig do
        params(
          format_: Dodopayments::InvoicePreviewExistingParams::Format::OrSymbol
        ).void
      end
      attr_writer :format_

      sig do
        params(
          invoice_id: String,
          format_: Dodopayments::InvoicePreviewExistingParams::Format::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        invoice_id:,
        # The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
        # draft mark. `email` returns the HTML of the invoice email. A preview saves no
        # row.
        format_: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            format_:
              Dodopayments::InvoicePreviewExistingParams::Format::OrSymbol,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      # draft mark. `email` returns the HTML of the invoice email. A preview saves no
      # row.
      module Format
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::InvoicePreviewExistingParams::Format)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        JSON =
          T.let(
            :json,
            Dodopayments::InvoicePreviewExistingParams::Format::TaggedSymbol
          )
        PDF =
          T.let(
            :pdf,
            Dodopayments::InvoicePreviewExistingParams::Format::TaggedSymbol
          )
        EMAIL =
          T.let(
            :email,
            Dodopayments::InvoicePreviewExistingParams::Format::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::InvoicePreviewExistingParams::Format::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
