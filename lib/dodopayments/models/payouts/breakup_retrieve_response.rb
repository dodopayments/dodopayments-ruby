# frozen_string_literal: true

module Dodopayments
  module Models
    module Payouts
      class BreakupRetrieveResponseItem < Dodopayments::Internal::Type::BaseModel
        # @!attribute event_type
        #   The type of balance ledger event (e.g., "payment", "refund", "dispute",
        #   "payment_fees").
        #
        #   @return [String]
        required :event_type, String

        # @!attribute total
        #   Total amount for this event type in the payout's currency (in smallest currency
        #   unit, e.g., cents).
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(event_type:, total:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Payouts::BreakupRetrieveResponseItem} for more details.
        #
        #   Payout breakup aggregated by event type, with amounts in the payout's currency.
        #
        #   @param event_type [String] The type of balance ledger event (e.g., "payment", "refund", "dispute", "payment
        #
        #   @param total [Integer] Total amount for this event type in the payout's currency (in smallest currency
      end

      # @type [Dodopayments::Internal::Type::Converter]
      BreakupRetrieveResponse =
        Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::Models::Payouts::BreakupRetrieveResponseItem }]
    end
  end
end
