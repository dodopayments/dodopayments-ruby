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
      #   @return [Symbol, Dodopayments::Models::PaymentSucceededWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::PaymentSucceededWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Payment]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::PaymentSucceededWebhookEvent::Type] The event type

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
