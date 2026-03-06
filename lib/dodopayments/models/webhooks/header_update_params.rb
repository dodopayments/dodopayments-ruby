# frozen_string_literal: true

module Dodopayments
  module Models
    module Webhooks
      # @see Dodopayments::Resources::Webhooks::Headers#update
      class HeaderUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute webhook_id
        #
        #   @return [String]
        required :webhook_id, String

        # @!attribute headers
        #   Object of header-value pair to update or add
        #
        #   @return [Hash{Symbol=>String}]
        required :headers, Dodopayments::Internal::Type::HashOf[String]

        # @!method initialize(webhook_id:, headers:, request_options: {})
        #   @param webhook_id [String]
        #
        #   @param headers [Hash{Symbol=>String}] Object of header-value pair to update or add
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
