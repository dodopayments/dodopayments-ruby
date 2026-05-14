# frozen_string_literal: true

module Dodopayments
  module Models
    class RefundFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #
      #   @return [Dodopayments::Models::Refund]
      required :data, -> { Dodopayments::Refund }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"refund.failed"]
      required :type, const: :"refund.failed"

      # @!method initialize(business_id:, data:, timestamp:, type: :"refund.failed")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Refund]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"refund.failed"] The event type
    end
  end
end
