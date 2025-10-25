# frozen_string_literal: true

module Dodopayments
  module Models
    class DisputeOpenedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::DisputeOpenedWebhookEvent::Data]
      required :data, -> { Dodopayments::DisputeOpenedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::DisputeOpenedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::DisputeOpenedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::DisputeOpenedWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::DisputeOpenedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::DisputeOpenedWebhookEvent#data
      class Data < Dodopayments::Models::Dispute
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::DisputeOpenedWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::DisputeOpenedWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::DisputeOpenedWebhookEvent::Data::PayloadType] The type of payload in the data field

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
      # @see Dodopayments::Models::DisputeOpenedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        DISPUTE_OPENED = :"dispute.opened"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
