# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#send_
    class InvoiceSendParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute invoice_id
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute if_match
      #
      #   @return [String]
      required :if_match, String

      # @!method initialize(invoice_id:, if_match:, request_options: {})
      #   @param invoice_id [String]
      #   @param if_match [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
