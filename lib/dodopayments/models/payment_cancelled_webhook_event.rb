# frozen_string_literal: true

module Dodopayments
  module Models
    class PaymentCancelledWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, :"payment.cancelled"]
      required :type, const: :"payment.cancelled"

      # @!method initialize(business_id:, data:, timestamp:, type: :"payment.cancelled")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Payment]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"payment.cancelled"] The event type
    end
  end
end
