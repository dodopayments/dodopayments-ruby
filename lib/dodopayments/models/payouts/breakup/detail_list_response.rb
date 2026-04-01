# frozen_string_literal: true

module Dodopayments
  module Models
    module Payouts
      module Breakup
        # @see Dodopayments::Resources::Payouts::Breakup::Details#list
        class DetailListResponse < Dodopayments::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier of the balance ledger entry.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   Timestamp when this entry was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute event_type
          #   The type of balance ledger event (e.g., "payment", "refund", "dispute",
          #   "payment_fees").
          #
          #   @return [String]
          required :event_type, String

          # @!attribute original_amount
          #   Original amount in the original currency (in smallest currency unit, e.g.,
          #   cents).
          #
          #   @return [Integer]
          required :original_amount, Integer

          # @!attribute original_currency
          #   Original currency as ISO 4217 code (e.g., "USD", "EUR").
          #
          #   @return [String]
          required :original_currency, String

          # @!attribute payout_currency_amount
          #   Amount in the payout's currency (in smallest currency unit). Uses cumulative
          #   rounding to ensure sum matches payout total exactly.
          #
          #   @return [Integer]
          required :payout_currency_amount, Integer

          # @!attribute usd_equivalent_amount
          #   USD equivalent of the original amount (in cents).
          #
          #   @return [Integer]
          required :usd_equivalent_amount, Integer

          # @!attribute description
          #   Human-readable description of the transaction.
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute reference_object_id
          #   ID of the related object (e.g., payment ID, refund ID) if applicable.
          #
          #   @return [String, nil]
          optional :reference_object_id, String, nil?: true

          # @!method initialize(id:, created_at:, event_type:, original_amount:, original_currency:, payout_currency_amount:, usd_equivalent_amount:, description: nil, reference_object_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::Payouts::Breakup::DetailListResponse} for more details.
          #
          #   Individual balance ledger entry for a payout, with amounts pro-rated into the
          #   payout's currency.
          #
          #   @param id [String] Unique identifier of the balance ledger entry.
          #
          #   @param created_at [Time] Timestamp when this entry was created.
          #
          #   @param event_type [String] The type of balance ledger event (e.g., "payment", "refund", "dispute", "payment
          #
          #   @param original_amount [Integer] Original amount in the original currency (in smallest currency unit, e.g., cents
          #
          #   @param original_currency [String] Original currency as ISO 4217 code (e.g., "USD", "EUR").
          #
          #   @param payout_currency_amount [Integer] Amount in the payout's currency (in smallest currency unit). Uses cumulative rou
          #
          #   @param usd_equivalent_amount [Integer] USD equivalent of the original amount (in cents).
          #
          #   @param description [String, nil] Human-readable description of the transaction.
          #
          #   @param reference_object_id [String, nil] ID of the related object (e.g., payment ID, refund ID) if applicable.
        end
      end
    end
  end
end
