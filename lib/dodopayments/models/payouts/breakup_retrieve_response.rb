# frozen_string_literal: true

module Dodopayments
  module Models
    module Payouts
      class BreakupRetrieveResponseItem < Dodopayments::Internal::Type::BaseModel
        # @!attribute event_type
        #   The type of balance ledger event (e.g., "payment", "refund", "dispute",
        #   "payment_fees"), or `unattributed` for the payout amount the entries do not
        #   account for.
        #
        #   @return [String]
        required :event_type, String

        # @!attribute total
        #   Total amount for this event type in the payout's currency, in that currency's
        #   smallest unit (cents for USD, yen for JPY, fils for KWD).
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(event_type:, total:)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Payouts::BreakupRetrieveResponseItem} for more details.
        #
        #   Payout breakup aggregated by event type, with amounts in the payout's currency.
        #
        #   The rows sum to the payout amount. The last row can be `unattributed`, which is
        #   not a ledger event type. It holds the payout amount less the entries that fund
        #   it, and it takes either sign:
        #
        #   - Positive: the entries come to less than the payout, so the payout drew on the
        #     balance an earlier cycle left over. A cycle of refunds and disputes produces a
        #     large positive value.
        #   - Negative: the entries come to more than the payout, and the remainder funds a
        #     later payout. This is the common case, for two reasons. The walk that claims
        #     the entries stops at the first one that reaches its target, so it passes the
        #     target by part of an entry. The target is also the gross debit, which holds
        #     the payout fee, and the fee is not a line here.
        #
        #   The row is absent when the two are equal.
        #
        #   @param event_type [String] The type of balance ledger event (e.g., "payment", "refund", "dispute", "payment
        #
        #   @param total [Integer] Total amount for this event type in the payout's currency, in that currency's sm
      end

      # @type [Dodopayments::Internal::Type::Converter]
      BreakupRetrieveResponse =
        Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::Models::Payouts::BreakupRetrieveResponseItem }]
    end
  end
end
