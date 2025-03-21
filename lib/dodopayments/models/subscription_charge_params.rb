# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionChargeParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute product_price
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
