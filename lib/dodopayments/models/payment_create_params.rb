# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#create
    class PaymentCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #   Billing address details for the payment
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::BillingAddress }

      # @!attribute customer
      #   Customer information for the payment
      #
      #   @return [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer]
      required :customer, union: -> { Dodopayments::CustomerRequest }

      # @!attribute product_cart
      #   List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      #   @return [Array<Dodopayments::Models::OneTimeProductCartItem>]
      required :product_cart, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::OneTimeProductCartItem] }

      # @!attribute allowed_payment_method_types
      #   List of payment methods allowed during checkout.
      #
      #   Customers will **never** see payment methods that are **not** in this list.
      #   However, adding a method here **does not guarantee** customers will see it.
      #   Availability still depends on other factors (e.g., customer location, merchant
      #   settings).
      #
      #   @return [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil]
      optional :allowed_payment_method_types,
               -> { Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::PaymentMethodTypes] },
               nil?: true

      # @!attribute billing_currency
      #   Fix the currency in which the end customer is billed. If Dodo Payments cannot
      #   support that currency for this transaction, it will not proceed
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :billing_currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute discount_code
      #   Discount Code to apply to the transaction
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute force_3ds
      #   Override merchant default 3DS behaviour for this payment
      #
      #   @return [Boolean, nil]
      optional :force_3ds, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute metadata
      #   Additional metadata associated with the payment. Defaults to empty if not
      #   provided.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute payment_link
      #   Whether to generate a payment link. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :payment_link, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute return_url
      #   Optional URL to redirect the customer after payment. Must be a valid URL if
      #   provided.
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute show_saved_payment_methods
      #   Display saved payment methods of a returning customer False by default
      #
      #   @return [Boolean, nil]
      optional :show_saved_payment_methods, Dodopayments::Internal::Type::Boolean

      # @!attribute tax_id
      #   Tax ID in case the payment is B2B. If tax id validation fails the payment
      #   creation will fail
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!method initialize(billing:, customer:, product_cart:, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, force_3ds: nil, metadata: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::PaymentCreateParams} for more details.
      #
      #   @param billing [Dodopayments::Models::BillingAddress] Billing address details for the payment
      #
      #   @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer] Customer information for the payment
      #
      #   @param product_cart [Array<Dodopayments::Models::OneTimeProductCartItem>] List of products in the cart. Must contain at least 1 and at most 100 items.
      #
      #   @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] List of payment methods allowed during checkout.
      #
      #   @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] Fix the currency in which the end customer is billed.
      #
      #   @param discount_code [String, nil] Discount Code to apply to the transaction
      #
      #   @param force_3ds [Boolean, nil] Override merchant default 3DS behaviour for this payment
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata associated with the payment.
      #
      #   @param payment_link [Boolean, nil] Whether to generate a payment link. Defaults to false if not specified.
      #
      #   @param return_url [String, nil] Optional URL to redirect the customer after payment.
      #
      #   @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer
      #
      #   @param tax_id [String, nil] Tax ID in case the payment is B2B. If tax id validation fails the payment creati
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
