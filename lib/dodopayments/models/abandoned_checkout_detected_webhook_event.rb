# frozen_string_literal: true

module Dodopayments
  module Models
    class AbandonedCheckoutDetectedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
      #   events
      #
      #   @return [Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data]
      required :data, -> { Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent} for more details.
      #
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data] Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent#data
      class Data < Dodopayments::Internal::Type::BaseModel
        # @!attribute abandoned_at
        #
        #   @return [Time]
        required :abandoned_at, Time

        # @!attribute abandonment_reason
        #
        #   @return [Symbol, Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason]
        required :abandonment_reason,
                 enum: -> { Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason }

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute payment_id
        #
        #   @return [String]
        required :payment_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data::Status]
        required :status, enum: -> { Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status }

        # @!attribute recovered_payment_id
        #
        #   @return [String, nil]
        optional :recovered_payment_id, String, nil?: true

        # @!method initialize(abandoned_at:, abandonment_reason:, customer_id:, payment_id:, status:, recovered_payment_id: nil)
        #   Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
        #   events
        #
        #   @param abandoned_at [Time]
        #   @param abandonment_reason [Symbol, Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason]
        #   @param customer_id [String]
        #   @param payment_id [String]
        #   @param status [Symbol, Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data::Status]
        #   @param recovered_payment_id [String, nil]

        # @see Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data#abandonment_reason
        module AbandonmentReason
          extend Dodopayments::Internal::Type::Enum

          PAYMENT_FAILED = :payment_failed
          CHECKOUT_INCOMPLETE = :checkout_incomplete

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent::Data#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          ABANDONED = :abandoned
          RECOVERING = :recovering
          RECOVERED = :recovered
          EXHAUSTED = :exhausted
          OPTED_OUT = :opted_out

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::AbandonedCheckoutDetectedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        ABANDONED_CHECKOUT_DETECTED = :"abandoned_checkout.detected"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
