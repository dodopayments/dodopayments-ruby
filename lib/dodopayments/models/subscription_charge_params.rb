# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#charge
    class SubscriptionChargeParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute product_price
      #   The product price. Represented in the lowest denomination of the currency (e.g.,
      #     cents for USD). For example, to charge $1.00, pass `100`.
      #
      #   @return [Integer]
      required :product_price, Integer

      # @!parse
      #   # @param product_price [Integer]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(product_price:, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
