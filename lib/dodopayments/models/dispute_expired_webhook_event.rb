# frozen_string_literal: true

module Dodopayments
  module Models
    class DisputeExpiredWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::DisputeExpiredWebhookEvent::Data]
      required :data, -> { Dodopayments::DisputeExpiredWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::DisputeExpiredWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::DisputeExpiredWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::DisputeExpiredWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::DisputeExpiredWebhookEvent::Type] The event type

      # @see Dodopayments::Models::DisputeExpiredWebhookEvent#data
      class Data < Dodopayments::Models::Dispute
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::DisputeExpiredWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::DisputeExpiredWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::DisputeExpiredWebhookEvent::Data::PayloadType] The type of payload in the data field

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
      # @see Dodopayments::Models::DisputeExpiredWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        DISPUTE_EXPIRED = :"dispute.expired"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
