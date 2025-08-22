# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#create
    class SubscriptionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute billing
      #   Billing address information for the subscription
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::BillingAddress }

      # @!attribute customer
      #   Customer details for the subscription
      #
      #   @return [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer]
      required :customer, union: -> { Dodopayments::CustomerRequest }

      # @!attribute product_id
      #   Unique identifier of the product to subscribe to
      #
      #   @return [String]
      required :product_id, String

      # @!attribute quantity
      #   Number of units to subscribe for. Must be at least 1.
      #
      #   @return [Integer]
      required :quantity, Integer

      # @!attribute addons
      #   Attach addons to this subscription
      #
      #   @return [Array<Dodopayments::Models::AttachAddon>, nil]
      optional :addons, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::AttachAddon] }, nil?: true

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
      #   Discount Code to apply to the subscription
      #
      #   @return [String, nil]
      optional :discount_code, String, nil?: true

      # @!attribute metadata
      #   Additional metadata for the subscription Defaults to empty if not specified
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute on_demand
      #
      #   @return [Dodopayments::Models::OnDemandSubscription, nil]
      optional :on_demand, -> { Dodopayments::OnDemandSubscription }, nil?: true

      # @!attribute payment_link
      #   If true, generates a payment link. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :payment_link, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute return_url
      #   Optional URL to redirect after successful subscription creation
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

      # @!attribute trial_period_days
      #   Optional trial period in days If specified, this value overrides the trial
      #   period set in the product's price Must be between 0 and 10000 days
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!method initialize(billing:, customer:, product_id:, quantity:, addons: nil, allowed_payment_method_types: nil, billing_currency: nil, discount_code: nil, metadata: nil, on_demand: nil, payment_link: nil, return_url: nil, show_saved_payment_methods: nil, tax_id: nil, trial_period_days: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionCreateParams} for more details.
      #
      #   @param billing [Dodopayments::Models::BillingAddress] Billing address information for the subscription
      #
      #   @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::NewCustomer] Customer details for the subscription
      #
      #   @param product_id [String] Unique identifier of the product to subscribe to
      #
      #   @param quantity [Integer] Number of units to subscribe for. Must be at least 1.
      #
      #   @param addons [Array<Dodopayments::Models::AttachAddon>, nil] Attach addons to this subscription
      #
      #   @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::PaymentMethodTypes>, nil] List of payment methods allowed during checkout.
      #
      #   @param billing_currency [Symbol, Dodopayments::Models::Currency, nil] Fix the currency in which the end customer is billed.
      #
      #   @param discount_code [String, nil] Discount Code to apply to the subscription
      #
      #   @param metadata [Hash{Symbol=>String}] Additional metadata for the subscription
      #
      #   @param on_demand [Dodopayments::Models::OnDemandSubscription, nil]
      #
      #   @param payment_link [Boolean, nil] If true, generates a payment link.
      #
      #   @param return_url [String, nil] Optional URL to redirect after successful subscription creation
      #
      #   @param show_saved_payment_methods [Boolean] Display saved payment methods of a returning customer
      #
      #   @param tax_id [String, nil] Tax ID in case the payment is B2B. If tax id validation fails the payment creati
      #
      #   @param trial_period_days [Integer, nil] Optional trial period in days
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
