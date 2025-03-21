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

      # @!attribute allowed_payment_method_types
      #   List of payment methods allowed during checkout.
      #
      #     Customers will **never** see payment methods that are **not** in this list.
      #     However, adding a method here **does not guarantee** customers will see it.
      #     Availability still depends on other factors (e.g., customer location, merchant
      #     settings).
      #
      #   @return [Array<Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType>, nil]
      optional :allowed_payment_method_types,
               -> { Dodopayments::ArrayOf[enum: Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType] },
               nil?: true

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
      #   # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentCreateParams::AllowedPaymentMethodType>, nil]
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
      #     allowed_payment_method_types: nil,
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

      module AllowedPaymentMethodType
        extend Dodopayments::Enum

        CREDIT = :credit
        DEBIT = :debit
        UPI_COLLECT = :upi_collect
        UPI_INTENT = :upi_intent
        APPLE_PAY = :apple_pay
        CASHAPP = :cashapp
        GOOGLE_PAY = :google_pay
        MULTIBANCO = :multibanco
        BANCONTACT_CARD = :bancontact_card
        EPS = :eps
        IDEAL = :ideal
        PRZELEWY24 = :przelewy24
        AFFIRM = :affirm
        KLARNA = :klarna
        SEPA = :sepa
        ACH = :ach
        AMAZON_PAY = :amazon_pay

        finalize!

        class << self
          # @!parse
          #   # @return [Array<Symbol>]
          #   def values; end
        end
      end
    end
  end
end
