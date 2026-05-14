# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionActiveWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Response struct representing subscription details
      #
      #   @return [Dodopayments::Models::Subscription]
      required :data, -> { Dodopayments::Subscription }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"subscription.active"]
      required :type, const: :"subscription.active"

      # @!method initialize(business_id:, data:, timestamp:, type: :"subscription.active")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Subscription] Response struct representing subscription details
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"subscription.active"] The event type
    end
  end
end
