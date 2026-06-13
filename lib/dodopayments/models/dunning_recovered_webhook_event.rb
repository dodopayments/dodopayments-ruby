# frozen_string_literal: true

module Dodopayments
  module Models
    class DunningRecoveredWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Webhook payload for dunning.started and dunning.recovered events
      #
      #   @return [Dodopayments::Models::DunningRecoveredWebhookEvent::Data]
      required :data, -> { Dodopayments::DunningRecoveredWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"dunning.recovered"]
      required :type, const: :"dunning.recovered"

      # @!method initialize(business_id:, data:, timestamp:, type: :"dunning.recovered")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::DunningRecoveredWebhookEvent::Data] Webhook payload for dunning.started and dunning.recovered events
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"dunning.recovered"] The event type

      # @see Dodopayments::Models::DunningRecoveredWebhookEvent#data
      class Data < Dodopayments::Internal::Type::BaseModel
        # @!attribute brand_id
        #   Brand id this dunning attempt belongs to
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dodopayments::Models::DunningRecoveredWebhookEvent::Data::Status]
        required :status, enum: -> { Dodopayments::DunningRecoveredWebhookEvent::Data::Status }

        # @!attribute subscription_id
        #
        #   @return [String]
        required :subscription_id, String

        # @!attribute trigger_state
        #
        #   @return [Symbol, Dodopayments::Models::DunningRecoveredWebhookEvent::Data::TriggerState]
        required :trigger_state, enum: -> { Dodopayments::DunningRecoveredWebhookEvent::Data::TriggerState }

        # @!attribute payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String, nil?: true

        # @!method initialize(brand_id:, created_at:, customer_id:, status:, subscription_id:, trigger_state:, payment_id: nil)
        #   Webhook payload for dunning.started and dunning.recovered events
        #
        #   @param brand_id [String] Brand id this dunning attempt belongs to
        #
        #   @param created_at [Time]
        #
        #   @param customer_id [String]
        #
        #   @param status [Symbol, Dodopayments::Models::DunningRecoveredWebhookEvent::Data::Status]
        #
        #   @param subscription_id [String]
        #
        #   @param trigger_state [Symbol, Dodopayments::Models::DunningRecoveredWebhookEvent::Data::TriggerState]
        #
        #   @param payment_id [String, nil]

        # @see Dodopayments::Models::DunningRecoveredWebhookEvent::Data#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          RECOVERING = :recovering
          RECOVERED = :recovered
          EXHAUSTED = :exhausted

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::DunningRecoveredWebhookEvent::Data#trigger_state
        module TriggerState
          extend Dodopayments::Internal::Type::Enum

          ON_HOLD = :on_hold
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
