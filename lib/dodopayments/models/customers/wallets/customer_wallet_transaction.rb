# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      module Wallets
        # @see Dodopayments::Resources::Customers::Wallets::LedgerEntries#list
        class CustomerWalletTransaction < Dodopayments::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute after_balance
          #
          #   @return [Integer]
          required :after_balance, Integer

          # @!attribute amount
          #
          #   @return [Integer]
          required :amount, Integer

          # @!attribute before_balance
          #
          #   @return [Integer]
          required :before_balance, Integer

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

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute event_type
          #
          #   @return [Symbol, Dodopayments::Models::Customers::Wallets::CustomerWalletTransaction::EventType]
          required :event_type, enum: -> { Dodopayments::Customers::Wallets::CustomerWalletTransaction::EventType }

          # @!attribute is_credit
          #
          #   @return [Boolean]
          required :is_credit, Dodopayments::Internal::Type::Boolean

          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute reference_object_id
          #
          #   @return [String, nil]
          optional :reference_object_id, String, nil?: true

          # @!method initialize(id:, after_balance:, amount:, before_balance:, business_id:, created_at:, currency:, customer_id:, event_type:, is_credit:, reason: nil, reference_object_id: nil)
          #   @param id [String]
          #   @param after_balance [Integer]
          #   @param amount [Integer]
          #   @param before_balance [Integer]
          #   @param business_id [String]
          #   @param created_at [Time]
          #   @param currency [Symbol, Dodopayments::Models::Currency]
          #   @param customer_id [String]
          #   @param event_type [Symbol, Dodopayments::Models::Customers::Wallets::CustomerWalletTransaction::EventType]
          #   @param is_credit [Boolean]
          #   @param reason [String, nil]
          #   @param reference_object_id [String, nil]

          # @see Dodopayments::Models::Customers::Wallets::CustomerWalletTransaction#event_type
          module EventType
            extend Dodopayments::Internal::Type::Enum

            PAYMENT = :payment
            PAYMENT_REVERSAL = :payment_reversal
            REFUND = :refund
            REFUND_REVERSAL = :refund_reversal
            DISPUTE = :dispute
            DISPUTE_REVERSAL = :dispute_reversal
            MERCHANT_ADJUSTMENT = :merchant_adjustment

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
