# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::ShortLinks#list
      class ShortLinkListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute page_number
        #   Page number default is 0
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Page size default is 10 max is 100
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute product_id
        #   Filter by product ID
        #
        #   @return [String, nil]
        optional :product_id, String

        # @!method initialize(page_number: nil, page_size: nil, product_id: nil, request_options: {})
        #   @param page_number [Integer] Page number default is 0
        #
        #   @param page_size [Integer] Page size default is 10 max is 100
        #
        #   @param product_id [String] Filter by product ID
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
