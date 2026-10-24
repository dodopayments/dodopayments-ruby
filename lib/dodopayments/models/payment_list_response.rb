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

      # @!attribute includes_usage
      #   True when this payment also bills metered usage or credit overage. The usage is
      #   for the billing cycle before the service period, not for the service period. The
      #   value is set for each payment status. It is false when `charge_type` is null.
      #
      #   @return [Boolean]
      required :includes_usage, Dodopayments::Internal::Type::Boolean

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

      # @!attribute retry_attempt
      #   The retry attempt number of this payment. The value is `0` for the original
      #   payment. Each retry after a failed subscription renewal adds `1`. The value is
      #   always `0` for a payment that is not for a subscription.
      #
      #   @return [Integer]
      required :retry_attempt, Integer

      # @!attribute service_periods
      #   The service period of each subscription that this payment pays for. The order is
      #   the same as `subscription_ids`. For a plan change charge, the period starts at
      #   the plan change and ends at the next billing date. The list is empty unless the
      #   payment status is `succeeded`. The list is also empty for a one-time payment, an
      #   on-demand charge, or a payment method update. The list is set for `new`,
      #   `renewal` and `plan_change` charges that succeeded. It can be empty for some
      #   zero-amount payments. A `renewal` with no entry for its subscription bills usage
      #   only. That payment does not extend the service period.
      #
      #   @return [Array<Dodopayments::Models::SubscriptionServicePeriod>]
      required :service_periods,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::SubscriptionServicePeriod] }

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

      # @!attribute card_exp_month
      #   Expiry month of the card, as two digits from `01` to `12`. For Apple Pay and
      #   Google Pay, this is the expiry of the wallet token, which can differ from the
      #   expiry of the physical card.
      #
      #   @return [String, nil]
      optional :card_exp_month, String, nil?: true

      # @!attribute card_exp_year
      #   Expiry year of the card, as four digits, for example `2029`. For Apple Pay and
      #   Google Pay, this is the expiry of the wallet token, which can differ from the
      #   expiry of the physical card.
      #
      #   @return [String, nil]
      optional :card_exp_year, String, nil?: true

      # @!attribute card_last_four
      #   The last four digits of the card
      #
      #   @return [String, nil]
      optional :card_last_four, String, nil?: true

      # @!attribute card_network
      #   Card network, in lowercase, for example `visa`, `mastercard` or `amex`. Older
      #   payments can carry other casing.
      #
      #   @return [String, nil]
      optional :card_network, String, nil?: true

      # @!attribute card_type
      #   The type of card, in lowercase: `credit`, `debit` or `prepaid`. Older payments
      #   can carry other casing.
      #
      #   @return [String, nil]
      optional :card_type, String, nil?: true

      # @!attribute charge_type
      #   The type of subscription charge that this payment is for. Refer to `ChargeType`.
      #   The value is set for each payment status, not only for `succeeded`. The value is
      #   null when this payment charges no subscription.
      #
      #   @return [Symbol, Dodopayments::Models::ChargeType, nil]
      optional :charge_type, enum: -> { Dodopayments::ChargeType }, nil?: true

      # @!attribute checkout_session_id
      #   The ID of the checkout session for this payment. The value is null when the
      #   payment does not use a checkout session.
      #
      #   @return [String, nil]
      optional :checkout_session_id, String, nil?: true

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
      #   @deprecated Use `GET /invoices/payments/{payment_id}` with an API key.
      #
      #   DEPRECATED: Use `GET /invoices/payments/{payment_id}` with an API key. URL to
      #   download the invoice PDF for this payment. The URL has no signed token. If the
      #   business asks for a credential on its invoice links, the URL needs an API key.
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

      # @!attribute three_ds_flow
      #   How the cardholder completed the 3DS authentication. The value is null when the
      #   processor does not report it.
      #
      #   @return [Symbol, Dodopayments::Models::ThreeDSFlow, nil]
      optional :three_ds_flow, enum: -> { Dodopayments::ThreeDSFlow }, nil?: true

      # @!attribute three_ds_status
      #   The result of the 3DS authentication, as the processor reports it. The value is
      #   null when the processor reports no 3DS data, for example when the payment did
      #   not use 3DS.
      #
      #   @return [Symbol, Dodopayments::Models::ThreeDSStatus, nil]
      optional :three_ds_status, enum: -> { Dodopayments::ThreeDSStatus }, nil?: true

      # @!attribute three_ds_version
      #   The 3DS protocol version, for example `2.2.0`. The value is null when the
      #   processor does not report it.
      #
      #   @return [String, nil]
      optional :three_ds_version, String, nil?: true

      # @!method initialize(brand_id:, created_at:, currency:, customer:, digital_products_delivered:, has_license_key:, includes_usage:, is_multi_subscription:, metadata:, payment_id:, payment_provider:, retry_attempt:, service_periods:, subscription_ids:, total_amount:, card_exp_month: nil, card_exp_year: nil, card_last_four: nil, card_network: nil, card_type: nil, charge_type: nil, checkout_session_id: nil, dispute_status: nil, invoice_id: nil, invoice_url: nil, payment_method: nil, payment_method_type: nil, refund_status: nil, status: nil, subscription_id: nil, three_ds_flow: nil, three_ds_status: nil, three_ds_version: nil)
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
      #   @param includes_usage [Boolean] True when this payment also bills metered usage or credit overage. The usage is
      #
      #   @param is_multi_subscription [Boolean] True when one payment starts more than one subscription. Read this field
      #
      #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      #
      #   @param payment_id [String]
      #
      #   @param payment_provider [Symbol, Dodopayments::Models::PaymentListResponse::PaymentProvider] Which processor handled this payment. `stripe` / `adyen` for BYOP routes
      #
      #   @param retry_attempt [Integer] The retry attempt number of this payment. The value is `0` for the original
      #
      #   @param service_periods [Array<Dodopayments::Models::SubscriptionServicePeriod>] The service period of each subscription that this payment pays for.
      #
      #   @param subscription_ids [Array<String>] Every subscription that this payment starts or charges, in a stable order.
      #
      #   @param total_amount [Integer]
      #
      #   @param card_exp_month [String, nil] Expiry month of the card, as two digits from `01` to `12`. For Apple Pay and
      #
      #   @param card_exp_year [String, nil] Expiry year of the card, as four digits, for example `2029`. For Apple Pay and
      #
      #   @param card_last_four [String, nil] The last four digits of the card
      #
      #   @param card_network [String, nil] Card network, in lowercase, for example `visa`, `mastercard` or `amex`. Older pa
      #
      #   @param card_type [String, nil] The type of card, in lowercase: `credit`, `debit` or `prepaid`. Older payments c
      #
      #   @param charge_type [Symbol, Dodopayments::Models::ChargeType, nil] The type of subscription charge that this payment is for. Refer to `ChargeType`.
      #
      #   @param checkout_session_id [String, nil] The ID of the checkout session for this payment. The value is null when
      #
      #   @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus, nil] The most recent dispute status for this payment. None if no disputes exist.
      #
      #   @param invoice_id [String, nil] Invoice ID for this payment. Uses India-specific invoice ID if available.
      #
      #   @param invoice_url [String, nil] DEPRECATED: Use `GET /invoices/payments/{payment_id}` with an API key.
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
      #
      #   @param three_ds_flow [Symbol, Dodopayments::Models::ThreeDSFlow, nil] How the cardholder completed the 3DS authentication. The value is null when the
      #
      #   @param three_ds_status [Symbol, Dodopayments::Models::ThreeDSStatus, nil] The result of the 3DS authentication, as the processor reports it. The value is
      #
      #   @param three_ds_version [String, nil] The 3DS protocol version, for example `2.2.0`. The value is null when the proces

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
