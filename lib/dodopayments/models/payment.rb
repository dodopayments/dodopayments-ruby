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
      #   Whether the digital products purchased in this payment have been delivered.
      #
      #   @return [Boolean]
      required :digital_products_delivered, Dodopayments::Internal::Type::Boolean

      # @!attribute disputes
      #   List of disputes associated with this payment
      #
      #   @return [Array<Dodopayments::Models::Dispute>]
      required :disputes, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Dispute] }

      # @!attribute is_update_payment_method
      #   Whether this payment was created solely to update a subscription's payment
      #   method (a zero-/setup-amount charge). `false` for normal charges.
      #
      #   @return [Boolean]
      required :is_update_payment_method, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional custom data associated with the payment
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute payment_id
      #   Unique identifier for the payment
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute payment_provider
      #   Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      #   merchant's own payment connector); `dodo` for everything Dodo processed itself.
      #
      #   @return [Symbol, Dodopayments::Models::Payment::PaymentProvider]
      required :payment_provider, enum: -> { Dodopayments::Payment::PaymentProvider }

      # @!attribute refunds
      #   List of refunds issued for this payment
      #
      #   @return [Array<Dodopayments::Models::RefundListItem>]
      required :refunds, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::RefundListItem] }

      # @!attribute retry_attempt
      #   Retry attempt number for subscription renewal payments. `0` for the original
      #   payment, `1`+ for each scheduled off-session retry after a failed renewal.
      #   Always `0` for non-subscription payments.
      #
      #   @return [Integer]
      required :retry_attempt, Integer

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
      #   Total amount charged to the customer including tax, in the currency's smallest
      #   unit (e.g. cents for USD, yen for JPY, fils for KWD — see the currency's decimal
      #   places)
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute card_holder_name
      #   Cardholder name
      #
      #   @return [String, nil]
      optional :card_holder_name, String, nil?: true

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

      # @!attribute custom_field_responses
      #   Customer's responses to custom fields collected during checkout
      #
      #   @return [Array<Dodopayments::Models::CustomFieldResponse>, nil]
      optional :custom_field_responses,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CustomFieldResponse] },
               nil?: true

      # @!attribute discount_id
      #   @deprecated Use `discounts` instead.
      #
      #   DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
      #
      #   @return [String, nil]
      optional :discount_id, String, nil?: true

      # @!attribute discounts
      #   All stacked discounts applied, ordered by position
      #
      #   @return [Array<Dodopayments::Models::DiscountDetail>, nil]
      optional :discounts,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::DiscountDetail] },
               nil?: true

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

      # @!attribute invoice_id
      #   Invoice ID for this payment. Uses India-specific invoice ID if available.
      #
      #   @return [String, nil]
      optional :invoice_id, String, nil?: true

      # @!attribute invoice_url
      #   URL to download the invoice PDF for this payment.
      #
      #   @return [String, nil]
      optional :invoice_url, String, nil?: true

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

      # @!attribute payment_method_id
      #   Identifier of the saved payment method used for this payment, if any.
      #
      #   @return [String, nil]
      optional :payment_method_id, String, nil?: true

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

      # @!attribute refund_status
      #   Summary of the refund status for this payment. None if no succeeded refunds
      #   exist.
      #
      #   @return [Symbol, Dodopayments::Models::PaymentRefundStatus, nil]
      optional :refund_status, enum: -> { Dodopayments::PaymentRefundStatus }, nil?: true

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
      #   Amount of tax collected in the currency's smallest unit (e.g. cents for USD, yen
      #   for JPY, fils for KWD)
      #
      #   @return [Integer, nil]
      optional :tax, Integer, nil?: true

      # @!attribute updated_at
      #   Timestamp when the payment was last updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time, nil?: true

      # @!method initialize(billing:, brand_id:, business_id:, created_at:, currency:, customer:, digital_products_delivered:, disputes:, is_update_payment_method:, metadata:, payment_id:, payment_provider:, refunds:, retry_attempt:, settlement_amount:, settlement_currency:, total_amount:, card_holder_name: nil, card_issuing_country: nil, card_last_four: nil, card_network: nil, card_type: nil, checkout_session_id: nil, custom_field_responses: nil, discount_id: nil, discounts: nil, error_code: nil, error_message: nil, invoice_id: nil, invoice_url: nil, payment_link: nil, payment_method: nil, payment_method_id: nil, payment_method_type: nil, product_cart: nil, refund_status: nil, settlement_tax: nil, status: nil, subscription_id: nil, tax: nil, updated_at: nil)
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
      #   @param digital_products_delivered [Boolean] Whether the digital products purchased in this payment have been delivered.
      #
      #   @param disputes [Array<Dodopayments::Models::Dispute>] List of disputes associated with this payment
      #
      #   @param is_update_payment_method [Boolean] Whether this payment was created solely to update a subscription's
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Additional custom data associated with the payment
      #
      #   @param payment_id [String] Unique identifier for the payment
      #
      #   @param payment_provider [Symbol, Dodopayments::Models::Payment::PaymentProvider] Which processor handled this payment. `stripe` / `adyen` for BYOP routes
      #
      #   @param refunds [Array<Dodopayments::Models::RefundListItem>] List of refunds issued for this payment
      #
      #   @param retry_attempt [Integer] Retry attempt number for subscription renewal payments.
      #
      #   @param settlement_amount [Integer] The amount that will be credited to your Dodo balance after currency conversion
      #
      #   @param settlement_currency [Symbol, Dodopayments::Models::Currency] The currency in which the settlement_amount will be credited to your Dodo balanc
      #
      #   @param total_amount [Integer] Total amount charged to the customer including tax, in the currency's smallest u
      #
      #   @param card_holder_name [String, nil] Cardholder name
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
      #   @param custom_field_responses [Array<Dodopayments::Models::CustomFieldResponse>, nil] Customer's responses to custom fields collected during checkout
      #
      #   @param discount_id [String, nil] DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
      #
      #   @param discounts [Array<Dodopayments::Models::DiscountDetail>, nil] All stacked discounts applied, ordered by position
      #
      #   @param error_code [String, nil] An error code if the payment failed
      #
      #   @param error_message [String, nil] An error message if the payment failed
      #
      #   @param invoice_id [String, nil] Invoice ID for this payment. Uses India-specific invoice ID if available.
      #
      #   @param invoice_url [String, nil] URL to download the invoice PDF for this payment.
      #
      #   @param payment_link [String, nil] Checkout URL
      #
      #   @param payment_method [String, nil] Payment method used by customer (e.g. "card", "bank_transfer")
      #
      #   @param payment_method_id [String, nil] Identifier of the saved payment method used for this payment, if any.
      #
      #   @param payment_method_type [String, nil] Specific type of payment method (e.g. "visa", "mastercard")
      #
      #   @param product_cart [Array<Dodopayments::Models::Payment::ProductCart>, nil] List of products purchased in a one-time payment
      #
      #   @param refund_status [Symbol, Dodopayments::Models::PaymentRefundStatus, nil] Summary of the refund status for this payment. None if no succeeded refunds exis
      #
      #   @param settlement_tax [Integer, nil] This represents the portion of settlement_amount that corresponds to taxes colle
      #
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil] Current status of the payment intent
      #
      #   @param subscription_id [String, nil] Identifier of the subscription if payment is part of a subscription
      #
      #   @param tax [Integer, nil] Amount of tax collected in the currency's smallest unit
      #
      #   @param updated_at [Time, nil] Timestamp when the payment was last updated

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      #
      # @see Dodopayments::Models::Payment#payment_provider
      module PaymentProvider
        extend Dodopayments::Internal::Type::Enum

        STRIPE = :stripe
        ADYEN = :adyen
        DODO = :dodo

        # @!method self.values
        #   @return [Array<Symbol>]
      end

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
