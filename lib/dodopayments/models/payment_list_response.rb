# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#list
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute brand_id
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute digital_products_delivered
      #
      #   @return [Boolean]
      required :digital_products_delivered, Dodopayments::Internal::Type::Boolean

      # @!attribute has_license_key
      #
      #   @return [Boolean]
      required :has_license_key, Dodopayments::Internal::Type::Boolean

      # @!attribute is_multi_subscription
      #   True when one payment starts more than one subscription. Read this field to find
      #   the payment type. Do not read the length of `subscription_ids`. Do not read
      #   `subscription_id` for null.
      #
      #   @return [Boolean]
      required :is_multi_subscription, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #   Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute payment_provider
      #   Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      #   merchant's own payment connector); `dodo` for everything Dodo processed itself.
      #
      #   @return [Symbol, Dodopayments::Models::PaymentListResponse::PaymentProvider]
      required :payment_provider, enum: -> { Dodopayments::Models::PaymentListResponse::PaymentProvider }

      # @!attribute subscription_ids
      #   Every subscription that this payment starts or charges, in a stable order. It is
      #   empty for a one-time payment. It holds the value of `subscription_id` when the
      #   payment names one subscription.
      #
      #   @return [Array<String>]
      required :subscription_ids, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute total_amount
      #
      #   @return [Integer]
      required :total_amount, Integer

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

      # @!attribute dispute_status
      #   The most recent dispute status for this payment. None if no disputes exist.
      #
      #   @return [Symbol, Dodopayments::Models::DisputeStatus, nil]
      optional :dispute_status, enum: -> { Dodopayments::DisputeStatus }, nil?: true

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

      # @!attribute payment_method
      #
      #   @return [String, nil]
      optional :payment_method, String, nil?: true

      # @!attribute payment_method_type
      #
      #   @return [String, nil]
      optional :payment_method_type, String, nil?: true

      # @!attribute refund_status
      #   Summary of the refund status for this payment. None if no succeeded refunds
      #   exist.
      #
      #   @return [Symbol, Dodopayments::Models::PaymentRefundStatus, nil]
      optional :refund_status, enum: -> { Dodopayments::PaymentRefundStatus }, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::IntentStatus }, nil?: true

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!method initialize(brand_id:, created_at:, currency:, customer:, digital_products_delivered:, has_license_key:, is_multi_subscription:, metadata:, payment_id:, payment_provider:, subscription_ids:, total_amount:, card_last_four: nil, card_network: nil, dispute_status: nil, invoice_id: nil, invoice_url: nil, payment_method: nil, payment_method_type: nil, refund_status: nil, status: nil, subscription_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::PaymentListResponse} for more details.
      #
      #   @param brand_id [String]
      #
      #   @param created_at [Time]
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #
      #   @param digital_products_delivered [Boolean]
      #
      #   @param has_license_key [Boolean]
      #
      #   @param is_multi_subscription [Boolean] True when one payment starts more than one subscription. Read this field
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @param payment_id [String]
      #
      #   @param payment_provider [Symbol, Dodopayments::Models::PaymentListResponse::PaymentProvider] Which processor handled this payment. `stripe` / `adyen` for BYOP routes
      #
      #   @param subscription_ids [Array<String>] Every subscription that this payment starts or charges, in a stable order.
      #
      #   @param total_amount [Integer]
      #
      #   @param card_last_four [String, nil] The last four digits of the card
      #
      #   @param card_network [String, nil] Card network like VISA, MASTERCARD etc.
      #
      #   @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus, nil] The most recent dispute status for this payment. None if no disputes exist.
      #
      #   @param invoice_id [String, nil] Invoice ID for this payment. Uses India-specific invoice ID if available.
      #
      #   @param invoice_url [String, nil] URL to download the invoice PDF for this payment.
      #
      #   @param payment_method [String, nil]
      #
      #   @param payment_method_type [String, nil]
      #
      #   @param refund_status [Symbol, Dodopayments::Models::PaymentRefundStatus, nil] Summary of the refund status for this payment. None if no succeeded refunds exis
      #
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil]
      #
      #   @param subscription_id [String, nil]

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      #
      # @see Dodopayments::Models::PaymentListResponse#payment_provider
      module PaymentProvider
        extend Dodopayments::Internal::Type::Enum

        STRIPE = :stripe
        ADYEN = :adyen
        DODO = :dodo

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
