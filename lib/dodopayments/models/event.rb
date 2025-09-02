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
      #   Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}, nil]
      optional :metadata,
               -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::Event::Metadata] },
               nil?: true

      # @!method initialize(business_id:, customer_id:, event_id:, event_name:, timestamp:, metadata: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Event} for more details.
      #
      #   @param business_id [String]
      #
      #   @param customer_id [String]
      #
      #   @param event_id [String]
      #
      #   @param event_name [String]
      #
      #   @param timestamp [Time]
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}, nil] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.

      # Metadata value can be a string, integer, number, or boolean
      module Metadata
        extend Dodopayments::Internal::Type::Union

        variant String

        variant Float

        variant Dodopayments::Internal::Type::Boolean

        # @!method self.variants
        #   @return [Array(String, Float, Boolean)]
      end
    end
  end
end
