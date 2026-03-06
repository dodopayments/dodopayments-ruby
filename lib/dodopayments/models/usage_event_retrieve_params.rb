# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::UsageEvents#retrieve
    class UsageEventRetrieveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute event_id
      #
      #   @return [String]
      required :event_id, String

      # @!method initialize(event_id:, request_options: {})
      #   @param event_id [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
