# frozen_string_literal: true

module Dodopayments
  module Models
    class PaymentFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #
      #   @return [Dodopayments::Models::Payment]
      required :data, -> { Dodopayments::Payment }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::PaymentFailedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::PaymentFailedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Payment]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::PaymentFailedWebhookEvent::Type] The event type

      # The event type
      #
      # @see Dodopayments::Models::PaymentFailedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        PAYMENT_FAILED = :"payment.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
