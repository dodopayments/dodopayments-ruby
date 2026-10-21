# frozen_string_literal: true

module Dodopayments
  module Models
    module Invoices
      # @see Dodopayments::Resources::Invoices::Payments#retrieve_refund
      class PaymentRetrieveRefundParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute refund_id
        #
        #   @return [String]
        required :refund_id, String

        # @!attribute token
        #   The signed link token. If the business asks for a credential on its invoice
        #   links, a valid token for this record replaces the credential.
        #
        #   @return [String, nil]
        optional :token, String

        # @!method initialize(refund_id:, token: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Invoices::PaymentRetrieveRefundParams} for more details.
        #
        #   @param refund_id [String]
        #
        #   @param token [String] The signed link token. If the business asks for a credential on its invoice link
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
