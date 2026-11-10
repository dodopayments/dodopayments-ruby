# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#preview_existing
    class InvoicePreviewExistingParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute format_
      #   The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      #   draft mark. `email` returns the HTML of the invoice email. A preview saves no
      #   row.
      #
      #   @return [Symbol, Dodopayments::Models::InvoicePreviewExistingParams::Format, nil]
      optional :format_, enum: -> { Dodopayments::InvoicePreviewExistingParams::Format }

      # @!method initialize(invoice_id:, format_: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::InvoicePreviewExistingParams} for more details.
      #
      #   @param invoice_id [String]
      #
      #   @param format_ [Symbol, Dodopayments::Models::InvoicePreviewExistingParams::Format] The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # The preview body. `json` returns the invoice JSON. `pdf` returns the PDF with a
      # draft mark. `email` returns the HTML of the invoice email. A preview saves no
      # row.
      module Format
        extend Dodopayments::Internal::Type::Enum

        JSON = :json
        PDF = :pdf
        EMAIL = :email

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
