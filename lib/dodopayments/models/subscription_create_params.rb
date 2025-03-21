# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionCreateParams < Dodopayments::BaseModel
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

      # @!attribute allowed_payment_method_types
      #   List of payment methods allowed during checkout.
      #
      #     Customers will **never** see payment methods that are **not** in this list.
      #     However, adding a method here **does not guarantee** customers will see it.
      #     Availability still depends on other factors (e.g., customer location, merchant
      #     settings).
      #
      #   @return [Array<Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType>, nil]
      optional :allowed_payment_method_types,
               -> { Dodopayments::ArrayOf[enum: Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType] },
               nil?: true

      # @!attribute discount_code
      #   Discount Code to apply to the subscription
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

      # @!attribute on_demand
      #
      #   @return [Dodopayments::Models::SubscriptionCreateParams::OnDemand, nil]
      optional :on_demand, -> { Dodopayments::Models::SubscriptionCreateParams::OnDemand }, nil?: true

      # @!attribute payment_link
      #   If true, generates a payment link. Defaults to false if not specified.
      #
      #   @return [Boolean, nil]
      optional :payment_link, Dodopayments::BooleanModel, nil?: true

      # @!attribute return_url
      #   Optional URL to redirect after successful subscription creation
      #
      #   @return [String, nil]
      optional :return_url, String, nil?: true

      # @!attribute tax_id
      #   Tax ID in case the payment is B2B. If tax id validation fails the payment
      #     creation will fail
      #
      #   @return [String, nil]
      optional :tax_id, String, nil?: true

      # @!attribute trial_period_days
      #   Optional trial period in days If specified, this value overrides the trial
      #     period set in the product's price Must be between 0 and 10000 days
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!parse
      #   # @param billing [Dodopayments::Models::BillingAddress]
      #   # @param customer [Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer]
      #   # @param product_id [String]
      #   # @param quantity [Integer]
      #   # @param allowed_payment_method_types [Array<Symbol, Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType>, nil]
      #   # @param discount_code [String, nil]
      #   # @param metadata [Hash{Symbol=>String}]
      #   # @param on_demand [Dodopayments::Models::SubscriptionCreateParams::OnDemand, nil]
      #   # @param payment_link [Boolean, nil]
      #   # @param return_url [String, nil]
      #   # @param tax_id [String, nil]
      #   # @param trial_period_days [Integer, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     billing:,
      #     customer:,
      #     product_id:,
      #     quantity:,
      #     allowed_payment_method_types: nil,
      #     discount_code: nil,
      #     metadata: nil,
      #     on_demand: nil,
      #     payment_link: nil,
      #     return_url: nil,
      #     tax_id: nil,
      #     trial_period_days: nil,
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

      class OnDemand < Dodopayments::BaseModel
        # @!attribute mandate_only
        #   If set as True, does not perform any charge and only authorizes payment method
        #     details for future use.
        #
        #   @return [Boolean]
        required :mandate_only, Dodopayments::BooleanModel

        # @!attribute product_price
        #   Product price for the initial charge to customer If not specified the stored
        #     price of the product will be used
        #
        #   @return [Integer, nil]
        optional :product_price, Integer, nil?: true

        # @!parse
        #   # @param mandate_only [Boolean]
        #   # @param product_price [Integer, nil]
        #   #
        #   def initialize(mandate_only:, product_price: nil, **) = super

        # def initialize: (Hash | Dodopayments::BaseModel) -> void
      end
    end
  end
end
