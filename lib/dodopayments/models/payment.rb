# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retrieve
    class Payment < Dodopayments::Internal::Type::BaseModel
      # @!attribute billing
      #
      #   @return [Dodopayments::BillingAddress]
      required :billing, -> { Dodopayments::BillingAddress }

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
      #   @return [Symbol, Dodopayments::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute disputes
      #   List of disputes associated with this payment
      #
      #   @return [Array<Dodopayments::Dispute>]
      required :disputes, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Dispute] }

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
      #   @return [Array<Dodopayments::Refund>]
      required :refunds, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Refund] }

      # @!attribute settlement_amount
      #   The amount that will be credited to your Dodo balance after currency conversion
      #   and processing. Especially relevant for adaptive pricing where the customer's
      #   payment currency differs from your settlement currency.
      #
      #   @return [Integer]
      required :settlement_amount, Integer

      # @!attribute settlement_currency
      #
      #   @return [Symbol, Dodopayments::Currency]
      required :settlement_currency, enum: -> { Dodopayments::Currency }

      # @!attribute total_amount
      #   Total amount charged to the customer including tax, in smallest currency unit
      #   (e.g. cents)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute card_issuing_country
      #   ISO country code alpha2 variant
      #
      #   @return [Symbol, Dodopayments::CountryCode, nil]
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
      #   @return [Array<Dodopayments::Payment::ProductCart>, nil]
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
      #
      #   @return [Symbol, Dodopayments::IntentStatus, nil]
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

      # @!method initialize(billing:, business_id:, created_at:, currency:, customer:, disputes:, metadata:, payment_id:, refunds:, settlement_amount:, settlement_currency:, total_amount:, card_issuing_country: nil, card_last_four: nil, card_network: nil, card_type: nil, discount_id: nil, error_message: nil, payment_link: nil, payment_method: nil, payment_method_type: nil, product_cart: nil, settlement_tax: nil, status: nil, subscription_id: nil, tax: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see {Dodopayments::Payment}
      #   for more details.
      #
      #   @param billing [Dodopayments::BillingAddress]
      #
      #   @param business_id [String] Identifier of the business associated with the payment
      #
      #   @param created_at [Time] Timestamp when the payment was created
      #
      #   @param currency [Symbol, Dodopayments::Currency]
      #
      #   @param customer [Dodopayments::CustomerLimitedDetails]
      #
      #   @param disputes [Array<Dodopayments::Dispute>] List of disputes associated with this payment
      #
      #   @param metadata [Hash{Symbol=>String}]
      #
      #   @param payment_id [String] Unique identifier for the payment
      #
      #   @param refunds [Array<Dodopayments::Refund>] List of refunds issued for this payment
      #
      #   @param settlement_amount [Integer] The amount that will be credited to your Dodo balance after currency conversion
      #
      #   @param settlement_currency [Symbol, Dodopayments::Currency]
      #
      #   @param total_amount [Integer] Total amount charged to the customer including tax, in smallest currency unit (e
      #
      #   @param card_issuing_country [Symbol, Dodopayments::CountryCode, nil] ISO country code alpha2 variant
      #
      #   @param card_last_four [String, nil] The last four digits of the card
      #
      #   @param card_network [String, nil] Card network like VISA, MASTERCARD etc.
      #
      #   @param card_type [String, nil] The type of card DEBIT or CREDIT
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
      #   @param product_cart [Array<Dodopayments::Payment::ProductCart>, nil] List of products purchased in a one-time payment
      #
      #   @param settlement_tax [Integer, nil] This represents the portion of settlement_amount that corresponds to taxes colle
      #
      #   @param status [Symbol, Dodopayments::IntentStatus, nil]
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
