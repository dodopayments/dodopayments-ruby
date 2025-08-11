# frozen_string_literal: true

module Dodopayments
  module Models
    module Webhooks
      # @see Dodopayments::Resources::Webhooks::Headers#update
      class HeaderUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute headers
        #   Object of header-value pair to update or add
        #
        #   @return [Hash{Symbol=>String}]
        required :headers, Dodopayments::Internal::Type::HashOf[String]

        # @!method initialize(headers:, request_options: {})
        #   @param headers [Hash{Symbol=>String}] Object of header-value pair to update or add
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
