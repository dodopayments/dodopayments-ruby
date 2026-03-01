# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#create_ledger_entry
      class BalanceCreateLedgerEntryResponse < Dodopayments::Internal::Type::BaseModel
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

        # @!attribute entry_type
        #
        #   @return [Symbol, Dodopayments::Models::CreditEntitlements::LedgerEntryType]
        required :entry_type, enum: -> { Dodopayments::CreditEntitlements::LedgerEntryType }

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

        # @!attribute grant_id
        #
        #   @return [String, nil]
        optional :grant_id, String, nil?: true

        # @!attribute reason
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(id:, amount:, balance_after:, balance_before:, created_at:, credit_entitlement_id:, customer_id:, entry_type:, is_credit:, overage_after:, overage_before:, grant_id: nil, reason: nil)
        #   Response for creating a ledger entry
        #
        #   @param id [String]
        #   @param amount [String]
        #   @param balance_after [String]
        #   @param balance_before [String]
        #   @param created_at [Time]
        #   @param credit_entitlement_id [String]
        #   @param customer_id [String]
        #   @param entry_type [Symbol, Dodopayments::Models::CreditEntitlements::LedgerEntryType]
        #   @param is_credit [Boolean]
        #   @param overage_after [String]
        #   @param overage_before [String]
        #   @param grant_id [String, nil]
        #   @param reason [String, nil]
      end
    end
  end
end
