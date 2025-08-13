# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Webhooks#list
    class WebhookListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute iterator
      #   The iterator returned from a prior invocation
      #
      #   @return [String, nil]
      optional :iterator, String, nil?: true

      # @!attribute limit
      #   Limit the number of returned items
      #
      #   @return [Integer, nil]
      optional :limit, Integer, nil?: true

      # @!method initialize(iterator: nil, limit: nil, request_options: {})
      #   @param iterator [String, nil] The iterator returned from a prior invocation
      #
      #   @param limit [Integer, nil] Limit the number of returned items
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
