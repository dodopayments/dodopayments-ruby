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

      # @!attribute metadata
      #   Metadata for the payment. If not passed, the metadata of the subscription will
      #   be taken
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String], nil?: true

      # @!method initialize(product_price:, metadata: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionChargeParams} for more details.
      #
      #   @param product_price [Integer] The product price. Represented in the lowest denomination of the currency (e.g.,
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Metadata for the payment. If not passed, the metadata of the subscription will b
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
