# frozen_string_literal: true

module Dodopayments
  module Models
    module Webhooks
      # @see Dodopayments::Resources::Webhooks::Headers#retrieve
      class HeaderRetrieveParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute webhook_id
        #
        #   @return [String]
        required :webhook_id, String

        # @!method initialize(webhook_id:, request_options: {})
        #   @param webhook_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
