# frozen_string_literal: true

module Dodopayments
  module Models
    class PaymentCreateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute billing
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::Models::BillingAddress }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      required :customer, union: -> { Dodopayments::Models::CustomerRequest }

      # @!attribute product_cart
      #   List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      #   @return [Array<Dodopayments::Models::OneTimeProductCartItem>]
      required :product_cart, -> { Dodopayments::ArrayOf[Dodopayments::Models::OneTimeProductCartItem] }

      # @!attribute discount_code
      #   Discount Code to apply to the transaction
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute [r] metadata
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::HashOf[String]

      # @!parse
      #   # @return [Hash{Symbol=>String}]
      #   attr_writer :metadata

      # @!attribute payment_link
      #   Whether to generate a payment link. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :payment_link, Dodopayments::BooleanModel, nil?: true

      # @!attribute return_url
      #   Optional URL to redirect the customer after payment. Must be a valid URL if
      #     provided.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute tax_id
      #   Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!parse
      #   # @param billing [Dodopayments::Models::BillingAddress]
      #   # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      #   # @param product_cart [Array<Dodopayments::Models::OneTimeProductCartItem>]
      #   # @param discount_code [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param payment_link [Boolean, nil]
      #   # @param return_url [String, nil]
      #   # @param tax_id [String, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     billing:,
      #     customer:,
      #     product_cart:,
      #     discount_code: nil,
      #     metadata: nil,
      #     payment_link: nil,
      #     return_url: nil,
      #     tax_id: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
