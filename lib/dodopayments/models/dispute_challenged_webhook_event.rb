# frozen_string_literal: true

module Dodopayments
  module Models
    class DisputeChallengedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #
      #   @return [Dodopayments::Models::Dispute]
      required :data, -> { Dodopayments::Dispute }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::DisputeChallengedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::DisputeChallengedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Dispute]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::DisputeChallengedWebhookEvent::Type] The event type

      # The event type
      #
      # @see Dodopayments::Models::DisputeChallengedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        DISPUTE_CHALLENGED = :"dispute.challenged"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
