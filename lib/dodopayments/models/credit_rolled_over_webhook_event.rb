# frozen_string_literal: true

module Dodopayments
  module Models
    class CreditRolledOverWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, :"credit.rolled_over"]
      required :type, const: :"credit.rolled_over"

      # @!method initialize(business_id:, data:, timestamp:, type: :"credit.rolled_over")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::CreditEntitlements::CreditLedgerEntry] Response for a ledger entry
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"credit.rolled_over"] The event type
    end
  end
end
