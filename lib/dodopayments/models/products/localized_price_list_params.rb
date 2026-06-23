# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::LocalizedPrices#list
      class LocalizedPriceListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!method initialize(product_id:, request_options: {})
        #   @param product_id [String]
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
