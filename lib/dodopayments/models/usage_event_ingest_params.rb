# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::UsageEvents#ingest
    class UsageEventIngestParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute events
      #   List of events to be pushed
      #
      #   @return [Array<Dodopayments::Models::EventInput>]
      required :events, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::EventInput] }

      # @!method initialize(events:, request_options: {})
      #   @param events [Array<Dodopayments::Models::EventInput>] List of events to be pushed
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
