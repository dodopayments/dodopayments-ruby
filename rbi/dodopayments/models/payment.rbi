# typed: strong

module Dodopayments
  module Models
    class Payment < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Payment, Dodopayments::Internal::AnyHash)
        end

      # Billing address details for payments
      sig { returns(Dodopayments::BillingAddress) }
      attr_reader :billing

      sig { params(billing: Dodopayments::BillingAddress::OrHash).void }
      attr_writer :billing

      # brand id this payment belongs to
      sig { returns(String) }
      attr_accessor :brand_id

      # Identifier of the business associated with the payment
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the payment was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Currency used for the payment
      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Details about the customer who made the payment
      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      # Whether the digital products purchased in this payment have been delivered.
      sig { returns(T::Boolean) }
      attr_accessor :digital_products_delivered

      # List of disputes associated with this payment
      sig { returns(T::Array[Dodopayments::Dispute]) }
      attr_accessor :disputes

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

      # Whether this payment was created solely to update a subscription's payment
      # method (a zero-/setup-amount charge). `false` for normal charges.
      sig { returns(T::Boolean) }
      attr_accessor :is_update_payment_method

      # Additional custom data associated with the payment
      sig { returns(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]) }
      attr_accessor :metadata

      # Unique identifier for the payment
      sig { returns(String) }
      attr_accessor :payment_id

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      sig { returns(Dodopayments::Payment::PaymentProvider::TaggedSymbol) }
      attr_accessor :payment_provider

      # List of refunds issued for this payment
      sig { returns(T::Array[Dodopayments::RefundListItem]) }
      attr_accessor :refunds

      # Retry attempt number for subscription renewal payments. `0` for the original
      # payment, `1`+ for each scheduled off-session retry after a failed renewal.
      # Always `0` for non-subscription payments.
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

      # The amount that will be credited to your Dodo balance after currency conversion
      # and processing. Especially relevant for adaptive pricing where the customer's
      # payment currency differs from your settlement currency.
      sig { returns(Integer) }
      attr_accessor :settlement_amount

      # The currency in which the settlement_amount will be credited to your Dodo
      # balance. This may differ from the customer's payment currency in adaptive
      # pricing scenarios.
      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :settlement_currency

      # Every subscription that this payment starts or charges, in a stable order. It is
      # empty for a one-time payment. It holds the value of `subscription_id` when the
      # payment names one subscription.
      sig { returns(T::Array[String]) }
      attr_accessor :subscription_ids

      # Total amount charged to the customer including tax, in the currency's smallest
      # unit (e.g. cents for USD, yen for JPY, fils for KWD — see the currency's decimal
      # places)
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

      # Cardholder name
      sig { returns(T.nilable(String)) }
      attr_accessor :card_holder_name

      # ISO2 country code of the card
      sig { returns(T.nilable(Dodopayments::CountryCode::TaggedSymbol)) }
      attr_accessor :card_issuing_country

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

      # If payment is made using a checkout session, this field is set to the id of the
      # session.
      sig { returns(T.nilable(String)) }
      attr_accessor :checkout_session_id

      # Customer's responses to custom fields collected during checkout
      sig { returns(T.nilable(T::Array[Dodopayments::CustomFieldResponse])) }
      attr_accessor :custom_field_responses

      # DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # All stacked discounts applied, ordered by position
      sig { returns(T.nilable(T::Array[Dodopayments::DiscountDetail])) }
      attr_accessor :discounts

      # An error code if the payment failed
      sig { returns(T.nilable(String)) }
      attr_accessor :error_code

      # An error message if the payment failed. When `error_code` is a recognised
      # unified code, this is the merchant-facing headline + recommended action (Payment
      # Details copy) rather than the raw connector text.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # Invoice ID for this payment. Uses India-specific invoice ID if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

      # DEPRECATED: Use `GET /invoices/payments/{payment_id}` with an API key. URL to
      # download the invoice PDF for this payment. The URL has no signed token. If the
      # business asks for a credential on its invoice links, the URL needs an API key.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_url

      # Checkout URL
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      # Payment method used by customer (e.g. "card", "bank_transfer")
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method

      # Identifier of the saved payment method used for this payment, if any.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # Specific type of payment method (e.g. "visa", "mastercard")
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_type

      # List of products purchased in a one-time payment
      sig { returns(T.nilable(T::Array[Dodopayments::Payment::ProductCart])) }
      attr_accessor :product_cart

      # Summary of the refund status for this payment. None if no succeeded refunds
      # exist.
      sig do
        returns(T.nilable(Dodopayments::PaymentRefundStatus::TaggedSymbol))
      end
      attr_accessor :refund_status

      # This represents the portion of settlement_amount that corresponds to taxes
      # collected. Especially relevant for adaptive pricing where the tax component must
      # be tracked separately in your Dodo balance.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :settlement_tax

      # Current status of the payment intent
      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      # Identifier of the subscription if payment is part of a subscription. A
      # multi-subscription payment leaves this null, because no single subscription owns
      # the payment. Read `subscription_ids` for those.
      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      # Amount of tax collected in the currency's smallest unit (e.g. cents for USD, yen
      # for JPY, fils for KWD)
      sig { returns(T.nilable(Integer)) }
      attr_accessor :tax

      # Timestamp when the payment was last updated
      sig { returns(T.nilable(Time)) }
      attr_accessor :updated_at

      sig do
        params(
          billing: Dodopayments::BillingAddress::OrHash,
          brand_id: String,
          business_id: String,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          digital_products_delivered: T::Boolean,
          disputes: T::Array[Dodopayments::Dispute::OrHash],
          includes_usage: T::Boolean,
          is_multi_subscription: T::Boolean,
          is_update_payment_method: T::Boolean,
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          payment_id: String,
          payment_provider: Dodopayments::Payment::PaymentProvider::OrSymbol,
          refunds: T::Array[Dodopayments::RefundListItem::OrHash],
          retry_attempt: Integer,
          service_periods:
            T::Array[Dodopayments::SubscriptionServicePeriod::OrHash],
          settlement_amount: Integer,
          settlement_currency: Dodopayments::Currency::OrSymbol,
          subscription_ids: T::Array[String],
          total_amount: Integer,
          card_exp_month: T.nilable(String),
          card_exp_year: T.nilable(String),
          card_holder_name: T.nilable(String),
          card_issuing_country: T.nilable(Dodopayments::CountryCode::OrSymbol),
          card_last_four: T.nilable(String),
          card_network: T.nilable(String),
          card_type: T.nilable(String),
          charge_type: T.nilable(Dodopayments::ChargeType::OrSymbol),
          checkout_session_id: T.nilable(String),
          custom_field_responses:
            T.nilable(T::Array[Dodopayments::CustomFieldResponse::OrHash]),
          discount_id: T.nilable(String),
          discounts: T.nilable(T::Array[Dodopayments::DiscountDetail::OrHash]),
          error_code: T.nilable(String),
          error_message: T.nilable(String),
          invoice_id: T.nilable(String),
          invoice_url: T.nilable(String),
          payment_link: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_id: T.nilable(String),
          payment_method_type: T.nilable(String),
          product_cart:
            T.nilable(T::Array[Dodopayments::Payment::ProductCart::OrHash]),
          refund_status: T.nilable(Dodopayments::PaymentRefundStatus::OrSymbol),
          settlement_tax: T.nilable(Integer),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          tax: T.nilable(Integer),
          updated_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing address details for payments
        billing:,
        # brand id this payment belongs to
        brand_id:,
        # Identifier of the business associated with the payment
        business_id:,
        # Timestamp when the payment was created
        created_at:,
        # Currency used for the payment
        currency:,
        # Details about the customer who made the payment
        customer:,
        # Whether the digital products purchased in this payment have been delivered.
        digital_products_delivered:,
        # List of disputes associated with this payment
        disputes:,
        # True when this payment also bills metered usage or credit overage. The usage is
        # for the billing cycle before the service period, not for the service period. The
        # value is set for each payment status. It is false when `charge_type` is null.
        includes_usage:,
        # True when one payment starts more than one subscription. Read this field to find
        # the payment type. Do not read the length of `subscription_ids`. Do not read
        # `subscription_id` for null.
        is_multi_subscription:,
        # Whether this payment was created solely to update a subscription's payment
        # method (a zero-/setup-amount charge). `false` for normal charges.
        is_update_payment_method:,
        # Additional custom data associated with the payment
        metadata:,
        # Unique identifier for the payment
        payment_id:,
        # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
        # merchant's own payment connector); `dodo` for everything Dodo processed itself.
        payment_provider:,
        # List of refunds issued for this payment
        refunds:,
        # Retry attempt number for subscription renewal payments. `0` for the original
        # payment, `1`+ for each scheduled off-session retry after a failed renewal.
        # Always `0` for non-subscription payments.
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
        # The amount that will be credited to your Dodo balance after currency conversion
        # and processing. Especially relevant for adaptive pricing where the customer's
        # payment currency differs from your settlement currency.
        settlement_amount:,
        # The currency in which the settlement_amount will be credited to your Dodo
        # balance. This may differ from the customer's payment currency in adaptive
        # pricing scenarios.
        settlement_currency:,
        # Every subscription that this payment starts or charges, in a stable order. It is
        # empty for a one-time payment. It holds the value of `subscription_id` when the
        # payment names one subscription.
        subscription_ids:,
        # Total amount charged to the customer including tax, in the currency's smallest
        # unit (e.g. cents for USD, yen for JPY, fils for KWD — see the currency's decimal
        # places)
        total_amount:,
        # Expiry month of the card, as two digits from `01` to `12`. For Apple Pay and
        # Google Pay, this is the expiry of the wallet token, which can differ from the
        # expiry of the physical card.
        card_exp_month: nil,
        # Expiry year of the card, as four digits, for example `2029`. For Apple Pay and
        # Google Pay, this is the expiry of the wallet token, which can differ from the
        # expiry of the physical card.
        card_exp_year: nil,
        # Cardholder name
        card_holder_name: nil,
        # ISO2 country code of the card
        card_issuing_country: nil,
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
        # If payment is made using a checkout session, this field is set to the id of the
        # session.
        checkout_session_id: nil,
        # Customer's responses to custom fields collected during checkout
        custom_field_responses: nil,
        # DEPRECATED: Use discounts instead. Returns the first discount's ID if present.
        discount_id: nil,
        # All stacked discounts applied, ordered by position
        discounts: nil,
        # An error code if the payment failed
        error_code: nil,
        # An error message if the payment failed. When `error_code` is a recognised
        # unified code, this is the merchant-facing headline + recommended action (Payment
        # Details copy) rather than the raw connector text.
        error_message: nil,
        # Invoice ID for this payment. Uses India-specific invoice ID if available.
        invoice_id: nil,
        # DEPRECATED: Use `GET /invoices/payments/{payment_id}` with an API key. URL to
        # download the invoice PDF for this payment. The URL has no signed token. If the
        # business asks for a credential on its invoice links, the URL needs an API key.
        invoice_url: nil,
        # Checkout URL
        payment_link: nil,
        # Payment method used by customer (e.g. "card", "bank_transfer")
        payment_method: nil,
        # Identifier of the saved payment method used for this payment, if any.
        payment_method_id: nil,
        # Specific type of payment method (e.g. "visa", "mastercard")
        payment_method_type: nil,
        # List of products purchased in a one-time payment
        product_cart: nil,
        # Summary of the refund status for this payment. None if no succeeded refunds
        # exist.
        refund_status: nil,
        # This represents the portion of settlement_amount that corresponds to taxes
        # collected. Especially relevant for adaptive pricing where the tax component must
        # be tracked separately in your Dodo balance.
        settlement_tax: nil,
        # Current status of the payment intent
        status: nil,
        # Identifier of the subscription if payment is part of a subscription. A
        # multi-subscription payment leaves this null, because no single subscription owns
        # the payment. Read `subscription_ids` for those.
        subscription_id: nil,
        # Amount of tax collected in the currency's smallest unit (e.g. cents for USD, yen
        # for JPY, fils for KWD)
        tax: nil,
        # Timestamp when the payment was last updated
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            billing: Dodopayments::BillingAddress,
            brand_id: String,
            business_id: String,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            digital_products_delivered: T::Boolean,
            disputes: T::Array[Dodopayments::Dispute],
            includes_usage: T::Boolean,
            is_multi_subscription: T::Boolean,
            is_update_payment_method: T::Boolean,
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            payment_id: String,
            payment_provider:
              Dodopayments::Payment::PaymentProvider::TaggedSymbol,
            refunds: T::Array[Dodopayments::RefundListItem],
            retry_attempt: Integer,
            service_periods: T::Array[Dodopayments::SubscriptionServicePeriod],
            settlement_amount: Integer,
            settlement_currency: Dodopayments::Currency::TaggedSymbol,
            subscription_ids: T::Array[String],
            total_amount: Integer,
            card_exp_month: T.nilable(String),
            card_exp_year: T.nilable(String),
            card_holder_name: T.nilable(String),
            card_issuing_country:
              T.nilable(Dodopayments::CountryCode::TaggedSymbol),
            card_last_four: T.nilable(String),
            card_network: T.nilable(String),
            card_type: T.nilable(String),
            charge_type: T.nilable(Dodopayments::ChargeType::TaggedSymbol),
            checkout_session_id: T.nilable(String),
            custom_field_responses:
              T.nilable(T::Array[Dodopayments::CustomFieldResponse]),
            discount_id: T.nilable(String),
            discounts: T.nilable(T::Array[Dodopayments::DiscountDetail]),
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            invoice_id: T.nilable(String),
            invoice_url: T.nilable(String),
            payment_link: T.nilable(String),
            payment_method: T.nilable(String),
            payment_method_id: T.nilable(String),
            payment_method_type: T.nilable(String),
            product_cart:
              T.nilable(T::Array[Dodopayments::Payment::ProductCart]),
            refund_status:
              T.nilable(Dodopayments::PaymentRefundStatus::TaggedSymbol),
            settlement_tax: T.nilable(Integer),
            status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol),
            subscription_id: T.nilable(String),
            tax: T.nilable(Integer),
            updated_at: T.nilable(Time)
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
          T.type_alias { T.all(Symbol, Dodopayments::Payment::PaymentProvider) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE =
          T.let(:stripe, Dodopayments::Payment::PaymentProvider::TaggedSymbol)
        ADYEN =
          T.let(:adyen, Dodopayments::Payment::PaymentProvider::TaggedSymbol)
        DODO =
          T.let(:dodo, Dodopayments::Payment::PaymentProvider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::Payment::PaymentProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ProductCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Payment::ProductCart,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig do
          params(product_id: String, quantity: Integer).returns(
            T.attached_class
          )
        end
        def self.new(product_id:, quantity:)
        end

        sig { override.returns({ product_id: String, quantity: Integer }) }
        def to_hash
        end
      end
    end
  end
end
