# frozen_string_literal: true

module Dodopayments
  module Models
    class CreditManualAdjustmentWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, :"credit.manual_adjustment"]
      required :type, const: :"credit.manual_adjustment"

      # @!method initialize(business_id:, data:, timestamp:, type: :"credit.manual_adjustment")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::CreditEntitlements::CreditLedgerEntry] Response for a ledger entry
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"credit.manual_adjustment"] The event type
    end
  end
end
