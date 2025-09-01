# frozen_string_literal: true

module Dodopayments
  module Models
    class EventInput < Dodopayments::Internal::Type::BaseModel
      # @!attribute customer_id
      #   customer_id of the customer whose usage needs to be tracked
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute event_id
      #   Event Id acts as an idempotency key. Any subsequent requests with the same
      #   event_id will be ignored
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_name
      #   Name of the event
      #
      #   @return [String]
      required :event_name, String

      # @!attribute metadata
      #   Custom metadata. Only key value pairs are accepted, objects or arrays submitted
      #   will be rejected.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata,
               Dodopayments::Internal::Type::HashOf[Dodopayments::Internal::Type::Unknown],
               nil?: true

      # @!attribute timestamp
      #   Custom Timestamp. Defaults to current timestamp in UTC. Timestamps that are
      #   older that 1 hour or after 5 mins, from current timestamp, will be rejected.
      #
      #   @return [Time, nil]
      optional :timestamp, Time, nil?: true

      # @!method initialize(customer_id:, event_id:, event_name:, metadata: nil, timestamp: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::EventInput} for more details.
      #
      #   @param customer_id [String] customer_id of the customer whose usage needs to be tracked
      #
      #   @param event_id [String] Event Id acts as an idempotency key. Any subsequent requests with the same event
      #
      #   @param event_name [String] Name of the event
      #
      #   @param metadata [Hash{Symbol=>Object}, nil] Custom metadata. Only key value pairs are accepted, objects or arrays submitted
      #
      #   @param timestamp [Time, nil] Custom Timestamp. Defaults to current timestamp in UTC.
    end
  end
end
