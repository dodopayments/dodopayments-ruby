# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retrieve
    class Payment < Dodopayments::Internal::Type::BaseModel
      # @!attribute billing
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::Models::BillingAddress }

      # @!attribute business_id
      #   Identifier of the business associated with the payment
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the payment was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Models::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::Models::CustomerLimitedDetails }

      # @!attribute disputes
      #   List of disputes associated with this payment
      #
      #   @return [Array<Dodopayments::Models::Dispute>]
      required :disputes, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::Dispute] }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute payment_id
      #   Unique identifier for the payment
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute refunds
      #   List of refunds issued for this payment
      #
      #   @return [Array<Dodopayments::Models::Refund>]
      required :refunds, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::Refund] }

      # @!attribute settlement_amount
      #   The amount that will be credited to your Dodo balance after currency conversion
      #   and processing. Especially relevant for adaptive pricing where the customer's
      #   payment currency differs from your settlement currency.
      #
      #   @return [Integer]
      required :settlement_amount, Integer

      # @!attribute settlement_currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :settlement_currency, enum: -> { Dodopayments::Models::Currency }

      # @!attribute total_amount
      #   Total amount charged to the customer including tax, in smallest currency unit
      #   (e.g. cents)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute error_message
      #   An error message if the payment failed
      #
      #   @return [String, nil]
      optional :error_message, String, nil?: true

      # @!attribute payment_link
      #   Checkout URL
      #
      #   @return [String, nil]
      optional :payment_link, String, nil?: true

      # @!attribute payment_method
      #   Payment method used by customer (e.g. "card", "bank_transfer")
      #
      #   @return [String, nil]
      optional :payment_method, String, nil?: true

      # @!attribute payment_method_type
      #   Specific type of payment method (e.g. "visa", "mastercard")
      #
      #   @return [String, nil]
      optional :payment_method_type, String, nil?: true

      # @!attribute product_cart
      #   List of products purchased in a one-time payment
      #
      #   @return [Array<Dodopayments::Models::Payment::ProductCart>, nil]
      optional :product_cart,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::Payment::ProductCart] },
               nil?: true

      # @!attribute settlement_tax
      #   This represents the portion of settlement_amount that corresponds to taxes
      #   collected. Especially relevant for adaptive pricing where the tax component must
      #   be tracked separately in your Dodo balance.
      #
      #   @return [Integer, nil]
      optional :settlement_tax, Integer, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::Models::IntentStatus }, nil?: true

      # @!attribute subscription_id
      #   Identifier of the subscription if payment is part of a subscription
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!attribute tax
      #   Amount of tax collected in smallest currency unit (e.g. cents)
      #
      #   @return [Integer, nil]
      optional :tax, Integer, nil?: true

      # @!attribute updated_at
      #   Timestamp when the payment was last updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!method initialize(billing:, business_id:, created_at:, currency:, customer:, disputes:, metadata:, payment_id:, refunds:, settlement_amount:, settlement_currency:, total_amount:, discount_id: nil, error_message: nil, payment_link: nil, payment_method: nil, payment_method_type: nil, product_cart: nil, settlement_tax: nil, status: nil, subscription_id: nil, tax: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Payment} for more details.
      #
      #   @param billing [Dodopayments::Models::BillingAddress]
      #
      #   @param business_id [String] Identifier of the business associated with the payment
      #
      #   @param created_at [Time] Timestamp when the payment was created
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #
      #   @param disputes [Array<Dodopayments::Models::Dispute>] List of disputes associated with this payment
      #
      #   @param metadata [Hash{Symbol=>String}]
      #
      #   @param payment_id [String] Unique identifier for the payment
      #
      #   @param refunds [Array<Dodopayments::Models::Refund>] List of refunds issued for this payment
      #
      #   @param settlement_amount [Integer] The amount that will be credited to your Dodo balance after currency conversion
      #   ...
      #
      #   @param settlement_currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param total_amount [Integer] Total amount charged to the customer including tax, in smallest currency unit (e
      #   ...
      #
      #   @param discount_id [String, nil] The discount id if discount is applied
      #
      #   @param error_message [String, nil] An error message if the payment failed
      #
      #   @param payment_link [String, nil] Checkout URL
      #
      #   @param payment_method [String, nil] Payment method used by customer (e.g. "card", "bank_transfer")
      #
      #   @param payment_method_type [String, nil] Specific type of payment method (e.g. "visa", "mastercard")
      #
      #   @param product_cart [Array<Dodopayments::Models::Payment::ProductCart>, nil] List of products purchased in a one-time payment
      #
      #   @param settlement_tax [Integer, nil] This represents the portion of settlement_amount that corresponds to taxes colle
      #   ...
      #
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil]
      #
      #   @param subscription_id [String, nil] Identifier of the subscription if payment is part of a subscription
      #
      #   @param tax [Integer, nil] Amount of tax collected in smallest currency unit (e.g. cents)
      #
      #   @param updated_at [Time, nil] Timestamp when the payment was last updated

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        # @!attribute product_id
        #
        #   @return [String]
        required :product_id, String

        # @!attribute quantity
        #
        #   @return [Integer]
        required :quantity, Integer

        # @!method initialize(product_id:, quantity:)
        #   @param product_id [String]
        #   @param quantity [Integer]
      end
    end
  end
end
