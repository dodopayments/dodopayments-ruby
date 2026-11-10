# frozen_string_literal: true

module Dodopayments
  module Models
    class InvoicePaidWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   An invoice-led invoice. Every read and every `invoice.*` webhook uses this
      #   schema.
      #
      #   @return [Dodopayments::Models::Invoice]
      required :data, -> { Dodopayments::Invoice }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"invoice.paid"]
      required :type, const: :"invoice.paid"

      # @!method initialize(business_id:, data:, timestamp:, type: :"invoice.paid")
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::InvoicePaidWebhookEvent} for more details.
      #
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Invoice] An invoice-led invoice. Every read and every `invoice.*` webhook uses this schem
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"invoice.paid"] The event type
    end
  end
end
