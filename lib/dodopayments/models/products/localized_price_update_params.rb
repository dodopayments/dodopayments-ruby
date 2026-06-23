# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::LocalizedPrices#update
      class LocalizedPriceUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   New amount in the smallest currency unit (e.g., cents). Must be greater than
        #   zero. The currency and country_code of an existing rule cannot be changed.
        #
        #   @return [Integer, nil]
        optional :amount, Integer, nil?: true

        # @!method initialize(product_id:, id:, amount: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Products::LocalizedPriceUpdateParams} for more details.
        #
        #   @param product_id [String]
        #
        #   @param id [String]
        #
        #   @param amount [Integer, nil] New amount in the smallest currency unit (e.g., cents). Must be greater
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
