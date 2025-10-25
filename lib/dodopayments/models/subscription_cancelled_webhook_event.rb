# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionCancelledWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::SubscriptionCancelledWebhookEvent::Data]
      required :data, -> { Dodopayments::SubscriptionCancelledWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionCancelledWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::SubscriptionCancelledWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::SubscriptionCancelledWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::SubscriptionCancelledWebhookEvent::Type] The event type

      # @see Dodopayments::Models::SubscriptionCancelledWebhookEvent#data
      class Data < Dodopayments::Models::Subscription
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::SubscriptionCancelledWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::SubscriptionCancelledWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::SubscriptionCancelledWebhookEvent::Data::PayloadType] The type of payload in the data field

        # The type of payload in the data field
        module PayloadType
          extend Dodopayments::Internal::Type::Enum

          SUBSCRIPTION = :Subscription

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::SubscriptionCancelledWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        SUBSCRIPTION_CANCELLED = :"subscription.cancelled"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
