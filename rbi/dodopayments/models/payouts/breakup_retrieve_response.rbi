# typed: strong

module Dodopayments
  module Models
    module Payouts
      class BreakupRetrieveResponseItem < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::Payouts::BreakupRetrieveResponseItem,
              Dodopayments::Internal::AnyHash
            )
          end

        # The type of balance ledger event (e.g., "payment", "refund", "dispute",
        # "payment_fees").
        sig { returns(String) }
        attr_accessor :event_type

        # Total amount for this event type in the payout's currency (in smallest currency
        # unit, e.g., cents).
        sig { returns(Integer) }
        attr_accessor :total

        # Payout breakup aggregated by event type, with amounts in the payout's currency.
        sig do
          params(event_type: String, total: Integer).returns(T.attached_class)
        end
        def self.new(
          # The type of balance ledger event (e.g., "payment", "refund", "dispute",
          # "payment_fees").
          event_type:,
          # Total amount for this event type in the payout's currency (in smallest currency
          # unit, e.g., cents).
          total:
        )
        end

        sig { override.returns({ event_type: String, total: Integer }) }
        def to_hash
        end
      end

      BreakupRetrieveResponse =
        T.let(
          Dodopayments::Internal::Type::ArrayOf[
            Dodopayments::Models::Payouts::BreakupRetrieveResponseItem
          ],
          Dodopayments::Internal::Type::Converter
        )
    end
  end
end
