# frozen_string_literal: true

module Dodopayments
  module Models
    class DisputeAcceptedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::DisputeAcceptedWebhookEvent::Data]
      required :data, -> { Dodopayments::DisputeAcceptedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::DisputeAcceptedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::DisputeAcceptedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::DisputeAcceptedWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::DisputeAcceptedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::DisputeAcceptedWebhookEvent#data
      class Data < Dodopayments::Models::Dispute
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::DisputeAcceptedWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::DisputeAcceptedWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::DisputeAcceptedWebhookEvent::Data::PayloadType] The type of payload in the data field

        # The type of payload in the data field
        module PayloadType
          extend Dodopayments::Internal::Type::Enum

          DISPUTE = :Dispute

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::DisputeAcceptedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        DISPUTE_ACCEPTED = :"dispute.accepted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
