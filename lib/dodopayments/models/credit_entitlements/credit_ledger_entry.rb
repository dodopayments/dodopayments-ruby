# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#list_ledger
      class CreditLedgerEntry < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #
        #   @return [String]
        required :amount, String

        # @!attribute balance_after
        #
        #   @return [String]
        required :balance_after, String

        # @!attribute balance_before
        #
        #   @return [String]
        required :balance_before, String

        # @!attribute business_id
        #
        #   @return [String]
        required :business_id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute is_credit
        #
        #   @return [Boolean]
        required :is_credit, Dodopayments::Internal::Type::Boolean

        # @!attribute overage_after
        #
        #   @return [String]
        required :overage_after, String

        # @!attribute overage_before
        #
        #   @return [String]
        required :overage_before, String

        # @!attribute transaction_type
        #
        #   @return [Symbol, Dodopayments::Models::CreditEntitlements::CreditLedgerEntry::TransactionType]
        required :transaction_type,
                 enum: -> { Dodopayments::CreditEntitlements::CreditLedgerEntry::TransactionType }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!attribute grant_id
        #
        #   @return [String, nil]
        optional :grant_id, String, nil?: true

        # @!attribute reference_id
        #
        #   @return [String, nil]
        optional :reference_id, String, nil?: true

        # @!attribute reference_type
        #
        #   @return [String, nil]
        optional :reference_type, String, nil?: true

        # @!method initialize(id:, amount:, balance_after:, balance_before:, business_id:, created_at:, credit_entitlement_id:, customer_id:, is_credit:, overage_after:, overage_before:, transaction_type:, description: nil, grant_id: nil, reference_id: nil, reference_type: nil)
        #   Response for a ledger entry
        #
        #   @param id [String]
        #   @param amount [String]
        #   @param balance_after [String]
        #   @param balance_before [String]
        #   @param business_id [String]
        #   @param created_at [Time]
        #   @param credit_entitlement_id [String]
        #   @param customer_id [String]
        #   @param is_credit [Boolean]
        #   @param overage_after [String]
        #   @param overage_before [String]
        #   @param transaction_type [Symbol, Dodopayments::Models::CreditEntitlements::CreditLedgerEntry::TransactionType]
        #   @param description [String, nil]
        #   @param grant_id [String, nil]
        #   @param reference_id [String, nil]
        #   @param reference_type [String, nil]

        # @see Dodopayments::Models::CreditEntitlements::CreditLedgerEntry#transaction_type
        module TransactionType
          extend Dodopayments::Internal::Type::Enum

          CREDIT_ADDED = :credit_added
          CREDIT_DEDUCTED = :credit_deducted
          CREDIT_EXPIRED = :credit_expired
          CREDIT_ROLLED_OVER = :credit_rolled_over
          ROLLOVER_FORFEITED = :rollover_forfeited
          OVERAGE_CHARGED = :overage_charged
          OVERAGE_RESET = :overage_reset
          AUTO_TOP_UP = :auto_top_up
          MANUAL_ADJUSTMENT = :manual_adjustment
          REFUND = :refund

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
