# frozen_string_literal: true

module Dodopayments
  module Resources
    class Payouts
      class Breakup
        # @return [Dodopayments::Resources::Payouts::Breakup::Details]
        attr_reader :details

        # Returns the breakdown of a payout by event type (payments, refunds, disputes,
        # fees, etc.) in the payout's currency. Each amount is proportionally allocated
        # based on USD equivalent values, ensuring the total sums exactly to the payout
        # amount.
        #
        # @overload retrieve(payout_id, request_options: {})
        #
        # @param payout_id [String] Id of the Payout to get breakup for
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Dodopayments::Models::Payouts::BreakupRetrieveResponseItem>]
        #
        # @see Dodopayments::Models::Payouts::BreakupRetrieveParams
        def retrieve(payout_id, params = {})
          @client.request(
            method: :get,
            path: ["payouts/%1$s/breakup", payout_id],
            model: Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::Payouts::BreakupRetrieveResponseItem],
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Dodopayments::Client]
        def initialize(client:)
          @client = client
          @details = Dodopayments::Resources::Payouts::Breakup::Details.new(client: client)
        end
      end
    end
  end
end
