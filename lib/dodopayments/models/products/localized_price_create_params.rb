# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::LocalizedPrices#create
      class LocalizedPriceCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute amount
        #   Amount in the smallest currency unit (e.g., cents). Must be greater than zero.
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute currency
        #   Currency to charge in. Must be a supported currency.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute country_code
        #   Required when the product's pricing_mode is by_country; forbidden when
        #   by_currency.
        #
        #   @return [Symbol, Dodopayments::Models::CountryCode, nil]
        optional :country_code, enum: -> { Dodopayments::CountryCode }, nil?: true

        # @!method initialize(product_id:, amount:, currency:, country_code: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Products::LocalizedPriceCreateParams} for more details.
        #
        #   @param product_id [String]
        #
        #   @param amount [Integer] Amount in the smallest currency unit (e.g., cents). Must be greater than zero.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] Currency to charge in. Must be a supported currency.
        #
        #   @param country_code [Symbol, Dodopayments::Models::CountryCode, nil] Required when the product's pricing_mode is by_country; forbidden when by_curren
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
