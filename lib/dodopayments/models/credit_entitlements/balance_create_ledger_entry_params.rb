# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      # @see Dodopayments::Resources::CreditEntitlements::Balances#create_ledger_entry
      class BalanceCreateLedgerEntryParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute amount
        #   Amount to credit or debit
        #
        #   @return [String]
        required :amount, String

        # @!attribute entry_type
        #   Entry type: credit or debit
        #
        #   @return [Symbol, Dodopayments::Models::CreditEntitlements::LedgerEntryType]
        required :entry_type, enum: -> { Dodopayments::CreditEntitlements::LedgerEntryType }

        # @!attribute expires_at
        #   Expiration for credited amount (only for credit type)
        #
        #   @return [Time, nil]
        optional :expires_at, Time, nil?: true

        # @!attribute idempotency_key
        #   Idempotency key to prevent duplicate entries
        #
        #   @return [String, nil]
        optional :idempotency_key, String, nil?: true

        # @!attribute metadata
        #   Optional metadata (max 50 key-value pairs, key max 40 chars, value max 500
        #   chars)
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

        # @!attribute reason
        #   Human-readable reason for the entry
        #
        #   @return [String, nil]
        optional :reason, String, nil?: true

        # @!method initialize(credit_entitlement_id:, amount:, entry_type:, expires_at: nil, idempotency_key: nil, metadata: nil, reason: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::CreditEntitlements::BalanceCreateLedgerEntryParams} for
        #   more details.
        #
        #   @param credit_entitlement_id [String]
        #
        #   @param amount [String] Amount to credit or debit
        #
        #   @param entry_type [Symbol, Dodopayments::Models::CreditEntitlements::LedgerEntryType] Entry type: credit or debit
        #
        #   @param expires_at [Time, nil] Expiration for credited amount (only for credit type)
        #
        #   @param idempotency_key [String, nil] Idempotency key to prevent duplicate entries
        #
        #   @param metadata [Hash{Symbol=>String}, nil] Optional metadata (max 50 key-value pairs, key max 40 chars, value max 500 chars
        #
        #   @param reason [String, nil] Human-readable reason for the entry
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
