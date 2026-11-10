# frozen_string_literal: true

module Dodopayments
  module Models
    module Invoices
      # @see Dodopayments::Resources::Invoices::Payments#retrieve_payout
      class PaymentRetrievePayoutParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute payout_id
        #
        #   @return [String]
        required :payout_id, String

        # @!attribute token
        #   The signed link token. A valid token for this record replaces the credential.
        #
        #   @return [String, nil]
        optional :token, String

        # @!method initialize(payout_id:, token: nil, request_options: {})
        #   @param payout_id [String]
        #
        #   @param token [String] The signed link token. A valid token for this record replaces the credential.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
