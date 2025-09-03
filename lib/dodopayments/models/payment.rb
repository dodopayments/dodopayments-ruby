# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retrieve
    class Payment < Dodopayments::Internal::Type::BaseModel
      # @!attribute billing
      #   Billing address details for payments
      #
      #   @return [Dodopayments::Models::BillingAddress]
      required :billing, -> { Dodopayments::BillingAddress }

      # @!attribute brand_id
      #   brand id this payment belongs to
      #
      #   @return [String]
      required :brand_id, String

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
      #   Currency used for the payment
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #   Details about the customer who made the payment
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute digital_products_delivered
      #   brand id this payment belongs to
      #
      #   @return [Boolean]
      required :digital_products_delivered, Dodopayments::Internal::Type::Boolean

      # @!attribute disputes
      #   List of disputes associated with this payment
      #
      #   @return [Array<Dodopayments::Models::Dispute>]
      required :disputes, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Dispute] }

      # @!attribute metadata
      #   Additional custom data associated with the payment
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
      required :refunds, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Refund] }

      # @!attribute settlement_amount
      #   The amount that will be credited to your Dodo balance after currency conversion
      #   and processing. Especially relevant for adaptive pricing where the customer's
      #   payment currency differs from your settlement currency.
      #
      #   @return [Integer]
      required :settlement_amount, Integer

      # @!attribute settlement_currency
      #   The currency in which the settlement_amount will be credited to your Dodo
      #   balance. This may differ from the customer's payment currency in adaptive
      #   pricing scenarios.
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :settlement_currency, enum: -> { Dodopayments::Currency }

      # @!attribute total_amount
      #   Total amount charged to the customer including tax, in smallest currency unit
      #   (e.g. cents)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute card_issuing_country
      #   ISO2 country code of the card
      #
      #   @return [Symbol, Dodopayments::Models::CountryCode, nil]
      optional :card_issuing_country, enum: -> { Dodopayments::CountryCode }, nil?: true

      # @!attribute card_last_four
      #   The last four digits of the card
      #
      #   @return [String, nil]
      optional :card_last_four, String, nil?: true

      # @!attribute card_network
      #   Card network like VISA, MASTERCARD etc.
      #
      #   @return [String, nil]
      optional :card_network, String, nil?: true

      # @!attribute card_type
      #   The type of card DEBIT or CREDIT
      #
      #   @return [String, nil]
      optional :card_type, String, nil?: true

      # @!attribute checkout_session_id
      #   If payment is made using a checkout session, this field is set to the id of the
      #   session.
      #
      #   @return [String, nil]
      optional :checkout_session_id, String, nil?: true

      # @!attribute discount_id
      #   The discount id if discount is applied
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute error_code
      #   An error code if the payment failed
      #
      #   @return [String, nil]
      optional :error_code, String, nil?: true

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
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Payment::ProductCart] },
               nil?: true

      # @!attribute settlement_tax
      #   This represents the portion of settlement_amount that corresponds to taxes
      #   collected. Especially relevant for adaptive pricing where the tax component must
      #   be tracked separately in your Dodo balance.
      #
      #   @return [Integer, nil]
      optional :settlement_tax, Integer, nil?: true

      # @!attribute status
      #   Current status of the payment intent
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::IntentStatus }, nil?: true

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

      # @!method initialize(billing:, brand_id:, business_id:, created_at:, currency:, customer:, digital_products_delivered:, disputes:, metadata:, payment_id:, refunds:, settlement_amount:, settlement_currency:, total_amount:, card_issuing_country: nil, card_last_four: nil, card_network: nil, card_type: nil, checkout_session_id: nil, discount_id: nil, error_code: nil, error_message: nil, payment_link: nil, payment_method: nil, payment_method_type: nil, product_cart: nil, settlement_tax: nil, status: nil, subscription_id: nil, tax: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::Payment} for more details.
      #
      #   @param billing [Dodopayments::Models::BillingAddress] Billing address details for payments
      #
      #   @param brand_id [String] brand id this payment belongs to
      #
      #   @param business_id [String] Identifier of the business associated with the payment
      #
      #   @param created_at [Time] Timestamp when the payment was created
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency] Currency used for the payment
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Details about the customer who made the payment
      #
      #   @param digital_products_delivered [Boolean] brand id this payment belongs to
      #
      #   @param disputes [Array<Dodopayments::Models::Dispute>] List of disputes associated with this payment
      #
      #   @param metadata [Hash{Symbol=>String}] Additional custom data associated with the payment
      #
      #   @param payment_id [String] Unique identifier for the payment
      #
      #   @param refunds [Array<Dodopayments::Models::Refund>] List of refunds issued for this payment
      #
      #   @param settlement_amount [Integer] The amount that will be credited to your Dodo balance after currency conversion
      #
      #   @param settlement_currency [Symbol, Dodopayments::Models::Currency] The currency in which the settlement_amount will be credited to your Dodo balanc
      #
      #   @param total_amount [Integer] Total amount charged to the customer including tax, in smallest currency unit (e
      #
      #   @param card_issuing_country [Symbol, Dodopayments::Models::CountryCode, nil] ISO2 country code of the card
      #
      #   @param card_last_four [String, nil] The last four digits of the card
      #
      #   @param card_network [String, nil] Card network like VISA, MASTERCARD etc.
      #
      #   @param card_type [String, nil] The type of card DEBIT or CREDIT
      #
      #   @param checkout_session_id [String, nil] If payment is made using a checkout session,
      #
      #   @param discount_id [String, nil] The discount id if discount is applied
      #
      #   @param error_code [String, nil] An error code if the payment failed
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
      #
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil] Current status of the payment intent
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
