# frozen_string_literal: true

module Dodopayments
  module Models
    class CreditDeductedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Response for a ledger entry
      #
      #   @return [Dodopayments::Models::CreditEntitlements::CreditLedgerEntry]
      required :data, -> { Dodopayments::CreditEntitlements::CreditLedgerEntry }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::CreditDeductedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::CreditDeductedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::CreditEntitlements::CreditLedgerEntry] Response for a ledger entry
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::CreditDeductedWebhookEvent::Type] The event type

      # The event type
      #
      # @see Dodopayments::Models::CreditDeductedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        CREDIT_DEDUCTED = :"credit.deducted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
