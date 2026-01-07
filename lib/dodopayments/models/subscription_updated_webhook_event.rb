# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionUpdatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, Dodopayments::Models::SubscriptionUpdatedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::SubscriptionUpdatedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Subscription] Response struct representing subscription details
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::SubscriptionUpdatedWebhookEvent::Type] The event type

      # The event type
      #
      # @see Dodopayments::Models::SubscriptionUpdatedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        SUBSCRIPTION_UPDATED = :"subscription.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
