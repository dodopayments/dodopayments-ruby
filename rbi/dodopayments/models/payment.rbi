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

      # Total amount charged to the customer including tax, in the currency's smallest
      # unit (e.g. cents for USD, yen for JPY, fils for KWD — see the currency's decimal
      # places)
      sig { returns(Integer) }
      attr_accessor :total_amount

      # Cardholder name
      sig { returns(T.nilable(String)) }
      attr_accessor :card_holder_name

      # ISO2 country code of the card
      sig { returns(T.nilable(Dodopayments::CountryCode::TaggedSymbol)) }
      attr_accessor :card_issuing_country

      # The last four digits of the card
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last_four

      # Card network like VISA, MASTERCARD etc.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_network

      # The type of card DEBIT or CREDIT
      sig { returns(T.nilable(String)) }
      attr_accessor :card_type

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

      # An error message if the payment failed
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # Purpose-built failure messaging for the merchant and the customer, derived from
      # `error_code`. Present whenever `error_code` is set, regardless of payment
      # status; unrecognised codes still resolve via a generic fallback rather than
      # being omitted. The customer copy is always generic for fraud-sensitive declines
      # (lost/stolen/pickup/fraudulent) so the true reason is never leaked.
      sig { returns(T.nilable(Dodopayments::Payment::FailureDetails)) }
      attr_reader :failure_details

      sig do
        params(
          failure_details:
            T.nilable(Dodopayments::Payment::FailureDetails::OrHash)
        ).void
      end
      attr_writer :failure_details

      # Invoice ID for this payment. Uses India-specific invoice ID if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

      # URL to download the invoice PDF for this payment.
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

      # Identifier of the subscription if payment is part of a subscription
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
          is_update_payment_method: T::Boolean,
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          payment_id: String,
          payment_provider: Dodopayments::Payment::PaymentProvider::OrSymbol,
          refunds: T::Array[Dodopayments::RefundListItem::OrHash],
          retry_attempt: Integer,
          settlement_amount: Integer,
          settlement_currency: Dodopayments::Currency::OrSymbol,
          total_amount: Integer,
          card_holder_name: T.nilable(String),
          card_issuing_country: T.nilable(Dodopayments::CountryCode::OrSymbol),
          card_last_four: T.nilable(String),
          card_network: T.nilable(String),
          card_type: T.nilable(String),
          checkout_session_id: T.nilable(String),
          custom_field_responses:
            T.nilable(T::Array[Dodopayments::CustomFieldResponse::OrHash]),
          discount_id: T.nilable(String),
          discounts: T.nilable(T::Array[Dodopayments::DiscountDetail::OrHash]),
          error_code: T.nilable(String),
          error_message: T.nilable(String),
          failure_details:
            T.nilable(Dodopayments::Payment::FailureDetails::OrHash),
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
        # The amount that will be credited to your Dodo balance after currency conversion
        # and processing. Especially relevant for adaptive pricing where the customer's
        # payment currency differs from your settlement currency.
        settlement_amount:,
        # The currency in which the settlement_amount will be credited to your Dodo
        # balance. This may differ from the customer's payment currency in adaptive
        # pricing scenarios.
        settlement_currency:,
        # Total amount charged to the customer including tax, in the currency's smallest
        # unit (e.g. cents for USD, yen for JPY, fils for KWD — see the currency's decimal
        # places)
        total_amount:,
        # Cardholder name
        card_holder_name: nil,
        # ISO2 country code of the card
        card_issuing_country: nil,
        # The last four digits of the card
        card_last_four: nil,
        # Card network like VISA, MASTERCARD etc.
        card_network: nil,
        # The type of card DEBIT or CREDIT
        card_type: nil,
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
        # An error message if the payment failed
        error_message: nil,
        # Purpose-built failure messaging for the merchant and the customer, derived from
        # `error_code`. Present whenever `error_code` is set, regardless of payment
        # status; unrecognised codes still resolve via a generic fallback rather than
        # being omitted. The customer copy is always generic for fraud-sensitive declines
        # (lost/stolen/pickup/fraudulent) so the true reason is never leaked.
        failure_details: nil,
        # Invoice ID for this payment. Uses India-specific invoice ID if available.
        invoice_id: nil,
        # URL to download the invoice PDF for this payment.
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
        # Identifier of the subscription if payment is part of a subscription
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
            is_update_payment_method: T::Boolean,
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            payment_id: String,
            payment_provider:
              Dodopayments::Payment::PaymentProvider::TaggedSymbol,
            refunds: T::Array[Dodopayments::RefundListItem],
            retry_attempt: Integer,
            settlement_amount: Integer,
            settlement_currency: Dodopayments::Currency::TaggedSymbol,
            total_amount: Integer,
            card_holder_name: T.nilable(String),
            card_issuing_country:
              T.nilable(Dodopayments::CountryCode::TaggedSymbol),
            card_last_four: T.nilable(String),
            card_network: T.nilable(String),
            card_type: T.nilable(String),
            checkout_session_id: T.nilable(String),
            custom_field_responses:
              T.nilable(T::Array[Dodopayments::CustomFieldResponse]),
            discount_id: T.nilable(String),
            discounts: T.nilable(T::Array[Dodopayments::DiscountDetail]),
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            failure_details: T.nilable(Dodopayments::Payment::FailureDetails),
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

      class FailureDetails < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Payment::FailureDetails,
              Dodopayments::Internal::AnyHash
            )
          end

        # The unified error code (echoes `error_code`).
        sig { returns(String) }
        attr_accessor :code

        # The primary CTA to show the customer.
        sig do
          returns(
            Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
          )
        end
        attr_accessor :customer_cta

        # Whether the customer can resolve this themselves (e.g. fix CVC).
        sig { returns(T::Boolean) }
        attr_accessor :customer_fixable

        # The customer-facing string. Always generic (`C11`) for the fraud-4.
        sig { returns(String) }
        attr_accessor :customer_message

        # The customer message template identifier (C1..C20).
        sig do
          returns(
            Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
          )
        end
        attr_accessor :customer_template

        # Soft or hard decline.
        sig do
          returns(
            Dodopayments::Payment::FailureDetails::DeclineType::TaggedSymbol
          )
        end
        attr_accessor :decline_type

        # Merchant-facing headline + recommended action (Payment Details). For the fraud-4
        # this includes the operator "do not reveal" warning.
        sig { returns(String) }
        attr_accessor :merchant_message

        # Purpose-built failure messaging for the merchant and the customer, derived from
        # `error_code`. Present whenever `error_code` is set, regardless of payment
        # status; unrecognised codes still resolve via a generic fallback rather than
        # being omitted. The customer copy is always generic for fraud-sensitive declines
        # (lost/stolen/pickup/fraudulent) so the true reason is never leaked.
        sig do
          params(
            code: String,
            customer_cta:
              Dodopayments::Payment::FailureDetails::CustomerCta::OrSymbol,
            customer_fixable: T::Boolean,
            customer_message: String,
            customer_template:
              Dodopayments::Payment::FailureDetails::CustomerTemplate::OrSymbol,
            decline_type:
              Dodopayments::Payment::FailureDetails::DeclineType::OrSymbol,
            merchant_message: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The unified error code (echoes `error_code`).
          code:,
          # The primary CTA to show the customer.
          customer_cta:,
          # Whether the customer can resolve this themselves (e.g. fix CVC).
          customer_fixable:,
          # The customer-facing string. Always generic (`C11`) for the fraud-4.
          customer_message:,
          # The customer message template identifier (C1..C20).
          customer_template:,
          # Soft or hard decline.
          decline_type:,
          # Merchant-facing headline + recommended action (Payment Details). For the fraud-4
          # this includes the operator "do not reveal" warning.
          merchant_message:
        )
        end

        sig do
          override.returns(
            {
              code: String,
              customer_cta:
                Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol,
              customer_fixable: T::Boolean,
              customer_message: String,
              customer_template:
                Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol,
              decline_type:
                Dodopayments::Payment::FailureDetails::DeclineType::TaggedSymbol,
              merchant_message: String
            }
          )
        end
        def to_hash
        end

        # The primary CTA to show the customer.
        module CustomerCta
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dodopayments::Payment::FailureDetails::CustomerCta)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EDIT_AND_RETRY =
            T.let(
              :edit_and_retry,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )
          USE_ANOTHER_METHOD =
            T.let(
              :use_another_method,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )
          TRY_AGAIN =
            T.let(
              :try_again,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )
          TRY_LATER =
            T.let(
              :try_later,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )
          RETRY_AND_VERIFY =
            T.let(
              :retry_and_verify,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )
          RESTART =
            T.let(
              :restart,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )
          UPDATE_METHOD =
            T.let(
              :update_method,
              Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Payment::FailureDetails::CustomerCta::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The customer message template identifier (C1..C20).
        module CustomerTemplate
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Payment::FailureDetails::CustomerTemplate
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          C1 =
            T.let(
              :C1,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C2 =
            T.let(
              :C2,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C3 =
            T.let(
              :C3,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C4 =
            T.let(
              :C4,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C5 =
            T.let(
              :C5,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C6 =
            T.let(
              :C6,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C7 =
            T.let(
              :C7,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C8 =
            T.let(
              :C8,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C9 =
            T.let(
              :C9,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C10 =
            T.let(
              :C10,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C11 =
            T.let(
              :C11,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C12 =
            T.let(
              :C12,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C13 =
            T.let(
              :C13,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C14 =
            T.let(
              :C14,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C15 =
            T.let(
              :C15,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C16 =
            T.let(
              :C16,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C17 =
            T.let(
              :C17,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C18 =
            T.let(
              :C18,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C19 =
            T.let(
              :C19,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )
          C20 =
            T.let(
              :C20,
              Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Payment::FailureDetails::CustomerTemplate::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Soft or hard decline.
        module DeclineType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dodopayments::Payment::FailureDetails::DeclineType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SOFT =
            T.let(
              :soft,
              Dodopayments::Payment::FailureDetails::DeclineType::TaggedSymbol
            )
          HARD =
            T.let(
              :hard,
              Dodopayments::Payment::FailureDetails::DeclineType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Payment::FailureDetails::DeclineType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
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
