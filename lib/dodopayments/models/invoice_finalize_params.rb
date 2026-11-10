# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Invoices#finalize
    class InvoiceFinalizeParams < Dodopayments::Internal::Type::BaseModel
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

      # @!attribute cc_emails
      #   10 addresses or fewer.
      #
      #   @return [Array<String>, nil]
      optional :cc_emails, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute customer_email
      #
      #   @return [String, nil]
      optional :customer_email, String, nil?: true

      # @!attribute send_
      #   `true` sends the invoice email after finalise.
      #
      #   @return [Boolean, nil]
      optional :send_, Dodopayments::Internal::Type::Boolean, api_name: :send

      # @!method initialize(invoice_id:, if_match:, cc_emails: nil, customer_email: nil, send_: nil, request_options: {})
      #   @param invoice_id [String]
      #
      #   @param if_match [String]
      #
      #   @param cc_emails [Array<String>, nil] 10 addresses or fewer.
      #
      #   @param customer_email [String, nil]
      #
      #   @param send_ [Boolean] `true` sends the invoice email after finalise.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
