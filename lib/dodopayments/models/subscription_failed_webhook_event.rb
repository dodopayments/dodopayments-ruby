# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Subscription payload sent on a webhook. It carries every field of
      #   `SubscriptionResponse`, plus the grace-period deadline.
      #
      #   @return [Dodopayments::Models::SubscriptionFailedWebhookEvent::Data]
      required :data, -> { Dodopayments::SubscriptionFailedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"subscription.failed"]
      required :type, const: :"subscription.failed"

      # @!method initialize(business_id:, data:, timestamp:, type: :"subscription.failed")
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionFailedWebhookEvent} for more details.
      #
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::SubscriptionFailedWebhookEvent::Data] Subscription payload sent on a webhook. It carries every field of
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"subscription.failed"] The event type

      # @see Dodopayments::Models::SubscriptionFailedWebhookEvent#data
      class Data < Dodopayments::Models::Subscription
        # @!attribute past_due_ends_at
        #   Time when the grace period ends. The subscription moves to `on_hold` or to
        #   `cancelled` at this time.
        #
        #   Read in the same query as the rest of the payload, so it always comes from the
        #   row snapshot that produced `status`. It is set whenever the subscription sits in
        #   a window at that moment. A delayed event of another type therefore carries the
        #   deadline too, next to a `past_due` status.
        #
        #   @return [Time, nil]
        optional :past_due_ends_at, Time, nil?: true

        # @!method initialize(past_due_ends_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::SubscriptionFailedWebhookEvent::Data} for more details.
        #
        #   Subscription payload sent on a webhook. It carries every field of
        #   `SubscriptionResponse`, plus the grace-period deadline.
        #
        #   @param past_due_ends_at [Time, nil] Time when the grace period ends. The subscription moves to `on_hold` or
      end
    end
  end
end
