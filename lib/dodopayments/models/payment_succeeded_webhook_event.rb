# frozen_string_literal: true

module Dodopayments
  module Models
    class PaymentSucceededWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::PaymentSucceededWebhookEvent::Data]
      required :data, -> { Dodopayments::PaymentSucceededWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::PaymentSucceededWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::PaymentSucceededWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::PaymentSucceededWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::PaymentSucceededWebhookEvent::Type] The event type

      # @see Dodopayments::Models::PaymentSucceededWebhookEvent#data
      class Data < Dodopayments::Models::Payment
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::PaymentSucceededWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::PaymentSucceededWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::PaymentSucceededWebhookEvent::Data::PayloadType] The type of payload in the data field

        # The type of payload in the data field
        module PayloadType
          extend Dodopayments::Internal::Type::Enum

          PAYMENT = :Payment

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::PaymentSucceededWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        PAYMENT_SUCCEEDED = :"payment.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
