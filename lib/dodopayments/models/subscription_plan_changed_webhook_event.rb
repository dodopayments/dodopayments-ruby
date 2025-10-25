# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionPlanChangedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::SubscriptionPlanChangedWebhookEvent::Data]
      required :data, -> { Dodopayments::SubscriptionPlanChangedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::SubscriptionPlanChangedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::SubscriptionPlanChangedWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::SubscriptionPlanChangedWebhookEvent#data
      class Data < Dodopayments::Models::Subscription
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::SubscriptionPlanChangedWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::SubscriptionPlanChangedWebhookEvent::Data::PayloadType] The type of payload in the data field

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
      # @see Dodopayments::Models::SubscriptionPlanChangedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        SUBSCRIPTION_PLAN_CHANGED = :"subscription.plan_changed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
