# typed: strong

module Dodopayments
  module Models
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::PaymentListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :brand_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      sig { returns(T::Boolean) }
      attr_accessor :digital_products_delivered

      sig { returns(T::Boolean) }
      attr_accessor :has_license_key

      # True when this payment also bills metered usage or credit overage. The usage is
      # for the billing cycle before the service period, not for the service period. The
      # value is set for each payment status. It is false when `charge_type` is null.
      sig { returns(T::Boolean) }
      attr_accessor :includes_usage

      # True when one payment starts more than one subscription. Read this field to find
      # the payment type. Do not read the length of `subscription_ids`. Do not read
      # `subscription_id` for null.
      sig { returns(T::Boolean) }
      attr_accessor :is_multi_subscription

      # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      sig { returns(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :payment_id

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      sig do
        returns(
          Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
        )
      end
      attr_accessor :payment_provider

      # The retry attempt number of this payment. The value is `0` for the original
      # payment. Each retry after a failed subscription renewal adds `1`. The value is
      # always `0` for a payment that is not for a subscription.
      sig { returns(Integer) }
      attr_accessor :retry_attempt

      # The service period of each subscription that this payment pays for. The order is
      # the same as `subscription_ids`. For a plan change charge, the period starts at
      # the plan change and ends at the next billing date. The list is empty unless the
      # payment status is `succeeded`. The list is also empty for a one-time payment, an
      # on-demand charge, or a payment method update. The list is set for `new`,
      # `renewal` and `plan_change` charges that succeeded. It can be empty for some
      # zero-amount payments. A `renewal` with no entry for its subscription bills usage
      # only. That payment does not extend the service period.
      sig { returns(T::Array[Dodopayments::SubscriptionServicePeriod]) }
      attr_accessor :service_periods

      # Every subscription that this payment starts or charges, in a stable order. It is
      # empty for a one-time payment. It holds the value of `subscription_id` when the
      # payment names one subscription.
      sig { returns(T::Array[String]) }
      attr_accessor :subscription_ids

      sig { returns(Integer) }
      attr_accessor :total_amount

      # Expiry month of the card, as two digits from `01` to `12`. For Apple Pay and
      # Google Pay, this is the expiry of the wallet token, which can differ from the
      # expiry of the physical card.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_exp_month

      # Expiry year of the card, as four digits, for example `2029`. For Apple Pay and
      # Google Pay, this is the expiry of the wallet token, which can differ from the
      # expiry of the physical card.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_exp_year

      # The last four digits of the card
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last_four

      # Card network, in lowercase, for example `visa`, `mastercard` or `amex`. Older
      # payments can carry other casing.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_network

      # The type of card, in lowercase: `credit`, `debit` or `prepaid`. Older payments
      # can carry other casing.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_type

      # The type of subscription charge that this payment is for. Refer to `ChargeType`.
      # The value is set for each payment status, not only for `succeeded`. The value is
      # null when this payment charges no subscription.
      sig { returns(T.nilable(Dodopayments::ChargeType::TaggedSymbol)) }
      attr_accessor :charge_type

      # The ID of the checkout session for this payment. The value is null when the
      # payment does not use a checkout session.
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_session_id

      # The most recent dispute status for this payment. None if no disputes exist.
      sig { returns(T.nilable(Dodopayments::DisputeStatus::TaggedSymbol)) }
      attr_accessor :dispute_status

      # Invoice ID for this payment. Uses India-specific invoice ID if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

      # DEPRECATED: Use `GET /invoices/payments/{payment_id}` with an API key. URL to
      # download the invoice PDF for this payment. The URL has no signed token. If the
      # business asks for a credential on its invoice links, the URL needs an API key.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_url

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_type

      # Summary of the refund status for this payment. None if no succeeded refunds
      # exist.
      sig do
        returns(T.nilable(Dodopayments::PaymentRefundStatus::TaggedSymbol))
      end
      attr_accessor :refund_status

      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      # How the cardholder completed the 3DS authentication. The value is null when the
      # processor does not report it.
      sig { returns(T.nilable(Dodopayments::ThreeDSFlow::TaggedSymbol)) }
      attr_accessor :three_ds_flow

      # The result of the 3DS authentication, as the processor reports it. The value is
      # null when the processor reports no 3DS data, for example when the payment did
      # not use 3DS.
      sig { returns(T.nilable(Dodopayments::ThreeDSStatus::TaggedSymbol)) }
      attr_accessor :three_ds_status

      # The 3DS protocol version, for example `2.2.0`. The value is null when the
      # processor does not report it.
      sig { returns(T.nilable(String)) }
      attr_accessor :three_ds_version

      sig do
        params(
          brand_id: String,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          digital_products_delivered: T::Boolean,
          has_license_key: T::Boolean,
          includes_usage: T::Boolean,
          is_multi_subscription: T::Boolean,
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          payment_id: String,
          payment_provider:
            Dodopayments::Models::PaymentListResponse::PaymentProvider::OrSymbol,
          retry_attempt: Integer,
          service_periods:
            T::Array[Dodopayments::SubscriptionServicePeriod::OrHash],
          subscription_ids: T::Array[String],
          total_amount: Integer,
          card_exp_month: T.nilable(String),
          card_exp_year: T.nilable(String),
          card_last_four: T.nilable(String),
          card_network: T.nilable(String),
          card_type: T.nilable(String),
          charge_type: T.nilable(Dodopayments::ChargeType::OrSymbol),
          checkout_session_id: T.nilable(String),
          dispute_status: T.nilable(Dodopayments::DisputeStatus::OrSymbol),
          invoice_id: T.nilable(String),
          invoice_url: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          refund_status: T.nilable(Dodopayments::PaymentRefundStatus::OrSymbol),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          three_ds_flow: T.nilable(Dodopayments::ThreeDSFlow::OrSymbol),
          three_ds_status: T.nilable(Dodopayments::ThreeDSStatus::OrSymbol),
          three_ds_version: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        brand_id:,
        created_at:,
        currency:,
        customer:,
        digital_products_delivered:,
        has_license_key:,
        # True when this payment also bills metered usage or credit overage. The usage is
        # for the billing cycle before the service period, not for the service period. The
        # value is set for each payment status. It is false when `charge_type` is null.
        includes_usage:,
        # True when one payment starts more than one subscription. Read this field to find
        # the payment type. Do not read the length of `subscription_ids`. Do not read
        # `subscription_id` for null.
        is_multi_subscription:,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
        metadata:,
        payment_id:,
        # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
        # merchant's own payment connector); `dodo` for everything Dodo processed itself.
        payment_provider:,
        # The retry attempt number of this payment. The value is `0` for the original
        # payment. Each retry after a failed subscription renewal adds `1`. The value is
        # always `0` for a payment that is not for a subscription.
        retry_attempt:,
        # The service period of each subscription that this payment pays for. The order is
        # the same as `subscription_ids`. For a plan change charge, the period starts at
        # the plan change and ends at the next billing date. The list is empty unless the
        # payment status is `succeeded`. The list is also empty for a one-time payment, an
        # on-demand charge, or a payment method update. The list is set for `new`,
        # `renewal` and `plan_change` charges that succeeded. It can be empty for some
        # zero-amount payments. A `renewal` with no entry for its subscription bills usage
        # only. That payment does not extend the service period.
        service_periods:,
        # Every subscription that this payment starts or charges, in a stable order. It is
        # empty for a one-time payment. It holds the value of `subscription_id` when the
        # payment names one subscription.
        subscription_ids:,
        total_amount:,
        # Expiry month of the card, as two digits from `01` to `12`. For Apple Pay and
        # Google Pay, this is the expiry of the wallet token, which can differ from the
        # expiry of the physical card.
        card_exp_month: nil,
        # Expiry year of the card, as four digits, for example `2029`. For Apple Pay and
        # Google Pay, this is the expiry of the wallet token, which can differ from the
        # expiry of the physical card.
        card_exp_year: nil,
        # The last four digits of the card
        card_last_four: nil,
        # Card network, in lowercase, for example `visa`, `mastercard` or `amex`. Older
        # payments can carry other casing.
        card_network: nil,
        # The type of card, in lowercase: `credit`, `debit` or `prepaid`. Older payments
        # can carry other casing.
        card_type: nil,
        # The type of subscription charge that this payment is for. Refer to `ChargeType`.
        # The value is set for each payment status, not only for `succeeded`. The value is
        # null when this payment charges no subscription.
        charge_type: nil,
        # The ID of the checkout session for this payment. The value is null when the
        # payment does not use a checkout session.
        checkout_session_id: nil,
        # The most recent dispute status for this payment. None if no disputes exist.
        dispute_status: nil,
        # Invoice ID for this payment. Uses India-specific invoice ID if available.
        invoice_id: nil,
        # DEPRECATED: Use `GET /invoices/payments/{payment_id}` with an API key. URL to
        # download the invoice PDF for this payment. The URL has no signed token. If the
        # business asks for a credential on its invoice links, the URL needs an API key.
        invoice_url: nil,
        payment_method: nil,
        payment_method_type: nil,
        # Summary of the refund status for this payment. None if no succeeded refunds
        # exist.
        refund_status: nil,
        status: nil,
        subscription_id: nil,
        # How the cardholder completed the 3DS authentication. The value is null when the
        # processor does not report it.
        three_ds_flow: nil,
        # The result of the 3DS authentication, as the processor reports it. The value is
        # null when the processor reports no 3DS data, for example when the payment did
        # not use 3DS.
        three_ds_status: nil,
        # The 3DS protocol version, for example `2.2.0`. The value is null when the
        # processor does not report it.
        three_ds_version: nil
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            digital_products_delivered: T::Boolean,
            has_license_key: T::Boolean,
            includes_usage: T::Boolean,
            is_multi_subscription: T::Boolean,
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            payment_id: String,
            payment_provider:
              Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol,
            retry_attempt: Integer,
            service_periods: T::Array[Dodopayments::SubscriptionServicePeriod],
            subscription_ids: T::Array[String],
            total_amount: Integer,
            card_exp_month: T.nilable(String),
            card_exp_year: T.nilable(String),
            card_last_four: T.nilable(String),
            card_network: T.nilable(String),
            card_type: T.nilable(String),
            charge_type: T.nilable(Dodopayments::ChargeType::TaggedSymbol),
            checkout_session_id: T.nilable(String),
            dispute_status:
              T.nilable(Dodopayments::DisputeStatus::TaggedSymbol),
            invoice_id: T.nilable(String),
            invoice_url: T.nilable(String),
            payment_method: T.nilable(String),
            payment_method_type: T.nilable(String),
            refund_status:
              T.nilable(Dodopayments::PaymentRefundStatus::TaggedSymbol),
            status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol),
            subscription_id: T.nilable(String),
            three_ds_flow: T.nilable(Dodopayments::ThreeDSFlow::TaggedSymbol),
            three_ds_status:
              T.nilable(Dodopayments::ThreeDSStatus::TaggedSymbol),
            three_ds_version: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      module PaymentProvider
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::Models::PaymentListResponse::PaymentProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE =
          T.let(
            :stripe,
            Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
          )
        ADYEN =
          T.let(
            :adyen,
            Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
          )
        DODO =
          T.let(
            :dodo,
            Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
