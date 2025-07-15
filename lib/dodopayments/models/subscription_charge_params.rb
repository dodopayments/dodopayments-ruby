# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#charge
    class SubscriptionChargeParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute product_price
      #   The product price. Represented in the lowest denomination of the currency (e.g.,
      #   cents for USD). For example, to charge $1.00, pass `100`.
      #
      #   @return [Integer]
      required :product_price, Integer

      # @!attribute adaptive_currency_fees_inclusive
      #   Whether adaptive currency fees should be included in the product_price (true) or
      #   added on top (false). This field is ignored if adaptive pricing is not enabled
      #   for the business.
      #
      #   @return [Boolean, nil]
      optional :adaptive_currency_fees_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute metadata
      #   Metadata for the payment. If not passed, the metadata of the subscription will
      #   be taken
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!attribute product_currency
      #   Optional currency of the product price. If not specified, defaults to the
      #   currency of the product.
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :product_currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!method initialize(product_price:, adaptive_currency_fees_inclusive: nil, metadata: nil, product_currency: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionChargeParams} for more details.
      #
      #   @param product_price [Integer] The product price. Represented in the lowest denomination of the currency (e.g.,
      #
      #   @param adaptive_currency_fees_inclusive [Boolean, nil] Whether adaptive currency fees should be included in the product_price (true) or
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Metadata for the payment. If not passed, the metadata of the subscription will b
      #
      #   @param product_currency [Symbol, Dodopayments::Models::Currency, nil] Optional currency of the product price. If not specified, defaults to the curren
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
