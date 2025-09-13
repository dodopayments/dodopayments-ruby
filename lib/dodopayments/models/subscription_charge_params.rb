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

      # @!attribute customer_balance_config
      #   Specify how customer balance is used for the payment
      #
      #   @return [Dodopayments::Models::SubscriptionChargeParams::CustomerBalanceConfig, nil]
      optional :customer_balance_config,
               -> { Dodopayments::SubscriptionChargeParams::CustomerBalanceConfig },
               nil?: true

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

      # @!attribute product_description
      #   Optional product description override for billing and line items. If not
      #   specified, the stored description of the product will be used.
      #
      #   @return [String, nil]
      optional :product_description, String, nil?: true

      # @!method initialize(product_price:, adaptive_currency_fees_inclusive: nil, customer_balance_config: nil, metadata: nil, product_currency: nil, product_description: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionChargeParams} for more details.
      #
      #   @param product_price [Integer] The product price. Represented in the lowest denomination of the currency (e.g.,
      #
      #   @param adaptive_currency_fees_inclusive [Boolean, nil] Whether adaptive currency fees should be included in the product_price (true) or
      #
      #   @param customer_balance_config [Dodopayments::Models::SubscriptionChargeParams::CustomerBalanceConfig, nil] Specify how customer balance is used for the payment
      #
      #   @param metadata [Hash{Symbol=>String}, nil] Metadata for the payment. If not passed, the metadata of the subscription will b
      #
      #   @param product_currency [Symbol, Dodopayments::Models::Currency, nil] Optional currency of the product price. If not specified, defaults to the curren
      #
      #   @param product_description [String, nil] Optional product description override for billing and line items.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class CustomerBalanceConfig < Dodopayments::Internal::Type::BaseModel
        # @!attribute allow_customer_credits_purchase
        #   Allows Customer Credit to be purchased to settle payments
        #
        #   @return [Boolean, nil]
        optional :allow_customer_credits_purchase, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!attribute allow_customer_credits_usage
        #   Allows Customer Credit Balance to be used to settle payments
        #
        #   @return [Boolean, nil]
        optional :allow_customer_credits_usage, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(allow_customer_credits_purchase: nil, allow_customer_credits_usage: nil)
        #   Specify how customer balance is used for the payment
        #
        #   @param allow_customer_credits_purchase [Boolean, nil] Allows Customer Credit to be purchased to settle payments
        #
        #   @param allow_customer_credits_usage [Boolean, nil] Allows Customer Credit Balance to be used to settle payments
      end
    end
  end
end
