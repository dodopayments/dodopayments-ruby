# frozen_string_literal: true

module Dodopayments
  module Models
    module Invoices
      # @see Dodopayments::Resources::Invoices::Payments#retrieve
      class PaymentRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute payment_id
        #
        #   @return [String]
        required :payment_id, String

        # @!attribute token
        #   The signed link token. If the business asks for a credential on its invoice
        #   links, a valid token for this record replaces the credential.
        #
        #   @return [String, nil]
        optional :token, String

        # @!method initialize(payment_id:, token: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Invoices::PaymentRetrieveParams} for more details.
        #
        #   @param payment_id [String]
        #
        #   @param token [String] The signed link token. If the business asks for a credential on its invoice link
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
