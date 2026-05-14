# frozen_string_literal: true

module Dodopayments
  module Models
    class DisputeCancelledWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #
      #   @return [Dodopayments::Models::Dispute]
      required :data, -> { Dodopayments::Dispute }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"dispute.cancelled"]
      required :type, const: :"dispute.cancelled"

      # @!method initialize(business_id:, data:, timestamp:, type: :"dispute.cancelled")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Dispute]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"dispute.cancelled"] The event type
    end
  end
end
