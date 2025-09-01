# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::UsageEvents#ingest
    class UsageEventIngestResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute ingested_count
      #
      #   @return [Integer]
      required :ingested_count, Integer

      # @!method initialize(ingested_count:)
      #   @param ingested_count [Integer]
    end
  end
end
