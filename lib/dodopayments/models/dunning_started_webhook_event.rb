# frozen_string_literal: true

module Dodopayments
  module Models
    class DunningStartedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Webhook payload for dunning.started and dunning.recovered events
      #
      #   @return [Dodopayments::Models::DunningStartedWebhookEvent::Data]
      required :data, -> { Dodopayments::DunningStartedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::DunningStartedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::DunningStartedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::DunningStartedWebhookEvent::Data] Webhook payload for dunning.started and dunning.recovered events
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::DunningStartedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::DunningStartedWebhookEvent#data
      class Data < Dodopayments::Internal::Type::BaseModel
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
        #   @return [Symbol, Dodopayments::Models::DunningStartedWebhookEvent::Data::Status]
        required :status, enum: -> { Dodopayments::DunningStartedWebhookEvent::Data::Status }

        # @!attribute subscription_id
        #
        #   @return [String]
        required :subscription_id, String

        # @!attribute trigger_state
        #
        #   @return [Symbol, Dodopayments::Models::DunningStartedWebhookEvent::Data::TriggerState]
        required :trigger_state, enum: -> { Dodopayments::DunningStartedWebhookEvent::Data::TriggerState }

        # @!attribute payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String, nil?: true

        # @!method initialize(created_at:, customer_id:, status:, subscription_id:, trigger_state:, payment_id: nil)
        #   Webhook payload for dunning.started and dunning.recovered events
        #
        #   @param created_at [Time]
        #   @param customer_id [String]
        #   @param status [Symbol, Dodopayments::Models::DunningStartedWebhookEvent::Data::Status]
        #   @param subscription_id [String]
        #   @param trigger_state [Symbol, Dodopayments::Models::DunningStartedWebhookEvent::Data::TriggerState]
        #   @param payment_id [String, nil]

        # @see Dodopayments::Models::DunningStartedWebhookEvent::Data#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          RECOVERING = :recovering
          RECOVERED = :recovered
          EXHAUSTED = :exhausted

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::DunningStartedWebhookEvent::Data#trigger_state
        module TriggerState
          extend Dodopayments::Internal::Type::Enum

          ON_HOLD = :on_hold
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::DunningStartedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        DUNNING_STARTED = :"dunning.started"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
