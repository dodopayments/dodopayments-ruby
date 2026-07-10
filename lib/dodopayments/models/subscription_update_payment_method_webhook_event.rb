# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionUpdatePaymentMethodWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, :"subscription.update_payment_method"]
      required :type, const: :"subscription.update_payment_method"

      # @!method initialize(business_id:, data:, timestamp:, type: :"subscription.update_payment_method")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Subscription] Response struct representing subscription details
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"subscription.update_payment_method"] The event type
    end
  end
end
