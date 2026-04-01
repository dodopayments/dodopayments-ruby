# frozen_string_literal: true

module Dodopayments
  module Models
    module Payouts
      # @see Dodopayments::Resources::Payouts::Breakup#retrieve
      class BreakupRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute payout_id
        #
        #   @return [String]
        required :payout_id, String

        # @!method initialize(payout_id:, request_options: {})
        #   @param payout_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
