# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::UsageEvents#retrieve
    class Event < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute customer_id
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!attribute event_name
      #
      #   @return [String]
      required :event_name, String

      # @!attribute timestamp
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata,
               Dodopayments::Internal::Type::HashOf[Dodopayments::Internal::Type::Unknown],
               nil?: true

      # @!method initialize(business_id:, customer_id:, event_id:, event_name:, timestamp:, metadata: nil)
      #   @param business_id [String]
      #   @param customer_id [String]
      #   @param event_id [String]
      #   @param event_name [String]
      #   @param timestamp [Time]
      #   @param metadata [Hash{Symbol=>Object}, nil]
    end
  end
end
