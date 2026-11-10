# frozen_string_literal: true

module Dodopayments
  module Models
    class InvoiceMarkedUncollectableWebhookEvent < Dodopayments::Internal::Type::BaseModel
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
      #   @return [Symbol, :"invoice.marked_uncollectable"]
      required :type, const: :"invoice.marked_uncollectable"

      # @!method initialize(business_id:, data:, timestamp:, type: :"invoice.marked_uncollectable")
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::InvoiceMarkedUncollectableWebhookEvent} for more details.
      #
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Invoice] An invoice-led invoice. Every read and every `invoice.*` webhook uses this schem
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"invoice.marked_uncollectable"] The event type
    end
  end
end
