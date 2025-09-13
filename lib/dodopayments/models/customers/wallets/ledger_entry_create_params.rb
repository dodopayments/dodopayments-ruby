# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      module Wallets
        # @see Dodopayments::Resources::Customers::Wallets::LedgerEntries#create
        class LedgerEntryCreateParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute currency
          #   Currency of the wallet to adjust
          #
          #   @return [Symbol, Dodopayments::Models::Currency]
          required :currency, enum: -> { Dodopayments::Currency }

          # @!attribute entry_type
          #   Type of ledger entry - credit or debit
          #
          #   @return [Symbol, Dodopayments::Models::Customers::Wallets::LedgerEntryCreateParams::EntryType]
          required :entry_type, enum: -> { Dodopayments::Customers::Wallets::LedgerEntryCreateParams::EntryType }

          # @!attribute idempotency_key
          #   Optional idempotency key to prevent duplicate entries
          #
          #   @return [String, nil]
          optional :idempotency_key, String, nil?: true

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!method initialize(amount:, currency:, entry_type:, idempotency_key: nil, reason: nil, request_options: {})
          #   @param amount [Integer]
          #
          #   @param currency [Symbol, Dodopayments::Models::Currency] Currency of the wallet to adjust
          #
          #   @param entry_type [Symbol, Dodopayments::Models::Customers::Wallets::LedgerEntryCreateParams::EntryType] Type of ledger entry - credit or debit
          #
          #   @param idempotency_key [String, nil] Optional idempotency key to prevent duplicate entries
          #
          #   @param reason [String, nil]
          #
          #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

          # Type of ledger entry - credit or debit
          module EntryType
            extend Dodopayments::Internal::Type::Enum

            CREDIT = :credit
            DEBIT = :debit

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
