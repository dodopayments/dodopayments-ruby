# frozen_string_literal: true

module Dodopayments
  module Models
    class RefundSucceededWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::RefundSucceededWebhookEvent::Data]
      required :data, -> { Dodopayments::RefundSucceededWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::RefundSucceededWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::RefundSucceededWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::RefundSucceededWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::RefundSucceededWebhookEvent::Type] The event type

      # @see Dodopayments::Models::RefundSucceededWebhookEvent#data
      class Data < Dodopayments::Models::Refund
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::RefundSucceededWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::RefundSucceededWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::RefundSucceededWebhookEvent::Data::PayloadType] The type of payload in the data field

        # The type of payload in the data field
        module PayloadType
          extend Dodopayments::Internal::Type::Enum

          REFUND = :Refund

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::RefundSucceededWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        REFUND_SUCCEEDED = :"refund.succeeded"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
