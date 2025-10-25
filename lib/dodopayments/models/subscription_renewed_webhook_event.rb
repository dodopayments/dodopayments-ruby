# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionRenewedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::SubscriptionRenewedWebhookEvent::Data]
      required :data, -> { Dodopayments::SubscriptionRenewedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::SubscriptionRenewedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::SubscriptionRenewedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::SubscriptionRenewedWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::SubscriptionRenewedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::SubscriptionRenewedWebhookEvent#data
      class Data < Dodopayments::Models::Subscription
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::SubscriptionRenewedWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::SubscriptionRenewedWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::SubscriptionRenewedWebhookEvent::Data::PayloadType] The type of payload in the data field

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
      # @see Dodopayments::Models::SubscriptionRenewedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        SUBSCRIPTION_RENEWED = :"subscription.renewed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
