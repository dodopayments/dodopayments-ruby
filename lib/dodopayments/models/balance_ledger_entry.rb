# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Balances#retrieve_ledger
    class BalanceLedgerEntry < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute event_type
      #
      #   @return [Symbol, Dodopayments::Models::BalanceLedgerEntry::EventType]
      required :event_type, enum: -> { Dodopayments::BalanceLedgerEntry::EventType }

      # @!attribute is_credit
      #
      #   @return [Boolean]
      required :is_credit, Dodopayments::Internal::Type::Boolean

      # @!attribute usd_equivalent_amount
      #
      #   @return [Integer]
      required :usd_equivalent_amount, Integer

      # @!attribute after_balance
      #
      #   @return [Integer, nil]
      optional :after_balance, Integer, nil?: true

      # @!attribute before_balance
      #
      #   @return [Integer, nil]
      optional :before_balance, Integer, nil?: true

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute reference_object_id
      #
      #   @return [String, nil]
      optional :reference_object_id, String, nil?: true

      # @!method initialize(id:, amount:, business_id:, created_at:, currency:, event_type:, is_credit:, usd_equivalent_amount:, after_balance: nil, before_balance: nil, description: nil, reference_object_id: nil)
      #   @param id [String]
      #   @param amount [Integer]
      #   @param business_id [String]
      #   @param created_at [Time]
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #   @param event_type [Symbol, Dodopayments::Models::BalanceLedgerEntry::EventType]
      #   @param is_credit [Boolean]
      #   @param usd_equivalent_amount [Integer]
      #   @param after_balance [Integer, nil]
      #   @param before_balance [Integer, nil]
      #   @param description [String, nil]
      #   @param reference_object_id [String, nil]

      # @see Dodopayments::Models::BalanceLedgerEntry#event_type
      module EventType
        extend Dodopayments::Internal::Type::Enum

        PAYMENT = :payment
        REFUND = :refund
        REFUND_REVERSAL = :refund_reversal
        DISPUTE = :dispute
        DISPUTE_REVERSAL = :dispute_reversal
        TAX = :tax
        TAX_REVERSAL = :tax_reversal
        PAYMENT_FEES = :payment_fees
        REFUND_FEES = :refund_fees
        REFUND_FEES_REVERSAL = :refund_fees_reversal
        DISPUTE_FEES = :dispute_fees
        PAYOUT = :payout
        PAYOUT_FEES = :payout_fees
        PAYOUT_REVERSAL = :payout_reversal
        PAYOUT_FEES_REVERSAL = :payout_fees_reversal
        DODO_CREDITS = :dodo_credits
        ADJUSTMENT = :adjustment
        CURRENCY_CONVERSION = :currency_conversion

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
