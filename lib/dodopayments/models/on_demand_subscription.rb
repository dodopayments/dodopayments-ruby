# frozen_string_literal: true

module Dodopayments
  module Models
    class OnDemandSubscription < Dodopayments::Internal::Type::BaseModel
      # @!attribute mandate_only
      #   If set as True, does not perform any charge and only authorizes payment method
      #   details for future use.
      #
      #   @return [Boolean]
      required :mandate_only, Dodopayments::Internal::Type::Boolean

      # @!attribute adaptive_currency_fees_inclusive
      #   Whether adaptive currency fees should be included in the product_price (true) or
      #   added on top (false). This field is ignored if adaptive pricing is not enabled
      #   for the business.
      #
      #   @return [Boolean, nil]
      optional :adaptive_currency_fees_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute product_currency
      #   Optional currency of the product price. If not specified, defaults to the
      #   currency of the product.
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :product_currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute product_description
      #   Optional product description override for billing and line items. If not
      #   specified, the stored description of the product will be used.
      #
      #   @return [String, nil]
      optional :product_description, String, nil?: true

      # @!attribute product_price
      #   Product price for the initial charge to customer If not specified the stored
      #   price of the product will be used Represented in the lowest denomination of the
      #   currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
      #
      #   @return [Integer, nil]
      optional :product_price, Integer, nil?: true

      # @!method initialize(mandate_only:, adaptive_currency_fees_inclusive: nil, product_currency: nil, product_description: nil, product_price: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::OnDemandSubscription} for more details.
      #
      #   @param mandate_only [Boolean] If set as True, does not perform any charge and only authorizes payment method d
      #
      #   @param adaptive_currency_fees_inclusive [Boolean, nil] Whether adaptive currency fees should be included in the product_price (true) or
      #
      #   @param product_currency [Symbol, Dodopayments::Models::Currency, nil] Optional currency of the product price. If not specified, defaults to the curren
      #
      #   @param product_description [String, nil] Optional product description override for billing and line items.
      #
      #   @param product_price [Integer, nil] Product price for the initial charge to customer
    end
  end
end
