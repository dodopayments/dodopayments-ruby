# frozen_string_literal: true

module Dodopayments
  module Models
    class DisputeChallengedWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, :"dispute.challenged"]
      required :type, const: :"dispute.challenged"

      # @!method initialize(business_id:, data:, timestamp:, type: :"dispute.challenged")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Dispute]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"dispute.challenged"] The event type
    end
  end
end
