# frozen_string_literal: true

module Dodopayments
  module Models
    class AbandonedCheckoutRecoveredWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
      #   events
      #
      #   @return [Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data]
      required :data, -> { Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent} for more details.
      #
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data] Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Type] The event type

      # @see Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent#data
      class Data < Dodopayments::Internal::Type::BaseModel
        # @!attribute abandoned_at
        #
        #   @return [Time]
        required :abandoned_at, Time

        # @!attribute abandonment_reason
        #
        #   @return [Symbol, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason]
        required :abandonment_reason,
                 enum: -> { Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason }

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
        #   @return [Symbol, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data::Status]
        required :status, enum: -> { Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status }

        # @!attribute recovered_payment_id
        #
        #   @return [String, nil]
        optional :recovered_payment_id, String, nil?: true

        # @!method initialize(abandoned_at:, abandonment_reason:, customer_id:, payment_id:, status:, recovered_payment_id: nil)
        #   Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
        #   events
        #
        #   @param abandoned_at [Time]
        #   @param abandonment_reason [Symbol, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason]
        #   @param customer_id [String]
        #   @param payment_id [String]
        #   @param status [Symbol, Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data::Status]
        #   @param recovered_payment_id [String, nil]

        # @see Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data#abandonment_reason
        module AbandonmentReason
          extend Dodopayments::Internal::Type::Enum

          PAYMENT_FAILED = :payment_failed
          CHECKOUT_INCOMPLETE = :checkout_incomplete

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent::Data#status
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
      # @see Dodopayments::Models::AbandonedCheckoutRecoveredWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        ABANDONED_CHECKOUT_RECOVERED = :"abandoned_checkout.recovered"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
