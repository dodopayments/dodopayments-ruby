# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Billing address information for the subscription
      sig { returns(Dodopayments::BillingAddress) }
      attr_reader :billing

      sig { params(billing: Dodopayments::BillingAddress::OrHash).void }
      attr_writer :billing

      # Customer details for the subscription
      sig do
        returns(
          T.any(
            Dodopayments::AttachExistingCustomer,
            Dodopayments::CreateNewCustomer
          )
        )
      end
      attr_accessor :customer

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      attr_accessor :product_id

      # Number of units to subscribe for. Must be at least 1.
      sig { returns(Integer) }
      attr_accessor :quantity

      # Attach addons to this subscription
      sig do
        returns(
          T.nilable(T::Array[Dodopayments::SubscriptionCreateParams::Addon])
        )
      end
      attr_accessor :addons

      # List of payment methods allowed during checkout.
      #
      # Customers will **never** see payment methods that are **not** in this list.
      # However, adding a method here **does not guarantee** customers will see it.
      # Availability still depends on other factors (e.g., customer location, merchant
      # settings).
      sig do
        returns(
          T.nilable(
            T::Array[
              Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol
            ]
          )
        )
      end
      attr_accessor :allowed_payment_method_types

      # Fix the currency in which the end customer is billed. If Dodo Payments cannot
      # support that currency for this transaction, it will not proceed
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # Discount Code to apply to the subscription
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      # Additional metadata for the subscription Defaults to empty if not specified
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig do
        returns(T.nilable(Dodopayments::SubscriptionCreateParams::OnDemand))
      end
      attr_reader :on_demand

      sig do
        params(
          on_demand:
            T.nilable(Dodopayments::SubscriptionCreateParams::OnDemand::OrHash)
        ).void
      end
      attr_writer :on_demand

      # If true, generates a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :payment_link

      # Optional URL to redirect after successful subscription creation
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # Display saved payment methods of a returning customer False by default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :show_saved_payment_methods

      sig { params(show_saved_payment_methods: T::Boolean).void }
      attr_writer :show_saved_payment_methods

      # Tax ID in case the payment is B2B. If tax id validation fails the payment
      # creation will fail
      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      # Optional trial period in days If specified, this value overrides the trial
      # period set in the product's price Must be between 0 and 10000 days
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      sig do
        params(
          billing: Dodopayments::BillingAddress::OrHash,
          customer:
            T.any(
              Dodopayments::AttachExistingCustomer::OrHash,
              Dodopayments::CreateNewCustomer::OrHash
            ),
          product_id: String,
          quantity: Integer,
          addons:
            T.nilable(
              T::Array[Dodopayments::SubscriptionCreateParams::Addon::OrHash]
            ),
          allowed_payment_method_types:
            T.nilable(
              T::Array[
                Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol
              ]
            ),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          on_demand:
            T.nilable(Dodopayments::SubscriptionCreateParams::OnDemand::OrHash),
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Billing address information for the subscription
        billing:,
        # Customer details for the subscription
        customer:,
        # Unique identifier of the product to subscribe to
        product_id:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # Attach addons to this subscription
        addons: nil,
        # List of payment methods allowed during checkout.
        #
        # Customers will **never** see payment methods that are **not** in this list.
        # However, adding a method here **does not guarantee** customers will see it.
        # Availability still depends on other factors (e.g., customer location, merchant
        # settings).
        allowed_payment_method_types: nil,
        # Fix the currency in which the end customer is billed. If Dodo Payments cannot
        # support that currency for this transaction, it will not proceed
        billing_currency: nil,
        # Discount Code to apply to the subscription
        discount_code: nil,
        # Additional metadata for the subscription Defaults to empty if not specified
        metadata: nil,
        on_demand: nil,
        # If true, generates a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect after successful subscription creation
        return_url: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        # creation will fail
        tax_id: nil,
        # Optional trial period in days If specified, this value overrides the trial
        # period set in the product's price Must be between 0 and 10000 days
        trial_period_days: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing: Dodopayments::BillingAddress,
            customer:
              T.any(
                Dodopayments::AttachExistingCustomer,
                Dodopayments::CreateNewCustomer
              ),
            product_id: String,
            quantity: Integer,
            addons:
              T.nilable(
                T::Array[Dodopayments::SubscriptionCreateParams::Addon]
              ),
            allowed_payment_method_types:
              T.nilable(
                T::Array[
                  Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol
                ]
              ),
            billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            discount_code: T.nilable(String),
            metadata: T::Hash[Symbol, String],
            on_demand:
              T.nilable(Dodopayments::SubscriptionCreateParams::OnDemand),
            payment_link: T.nilable(T::Boolean),
            return_url: T.nilable(String),
            show_saved_payment_methods: T::Boolean,
            tax_id: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Addon < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionCreateParams::Addon,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :addon_id

        sig { returns(Integer) }
        attr_accessor :quantity

        sig do
          params(addon_id: String, quantity: Integer).returns(T.attached_class)
        end
        def self.new(addon_id:, quantity:)
        end

        sig { override.returns({ addon_id: String, quantity: Integer }) }
        def to_hash
        end
      end

      module AllowedPaymentMethodType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT =
          T.let(
            :credit,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        DEBIT =
          T.let(
            :debit,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        UPI_COLLECT =
          T.let(
            :upi_collect,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        UPI_INTENT =
          T.let(
            :upi_intent,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        APPLE_PAY =
          T.let(
            :apple_pay,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        CASHAPP =
          T.let(
            :cashapp,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        GOOGLE_PAY =
          T.let(
            :google_pay,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        MULTIBANCO =
          T.let(
            :multibanco,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        BANCONTACT_CARD =
          T.let(
            :bancontact_card,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        EPS =
          T.let(
            :eps,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        IDEAL =
          T.let(
            :ideal,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        PRZELEWY24 =
          T.let(
            :przelewy24,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        AFFIRM =
          T.let(
            :affirm,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        KLARNA =
          T.let(
            :klarna,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        SEPA =
          T.let(
            :sepa,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        ACH =
          T.let(
            :ach,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        AMAZON_PAY =
          T.let(
            :amazon_pay,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )
        AFTERPAY_CLEARPAY =
          T.let(
            :afterpay_clearpay,
            Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionCreateParams::AllowedPaymentMethodType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class OnDemand < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionCreateParams::OnDemand,
              Dodopayments::Internal::AnyHash
            )
          end

        # If set as True, does not perform any charge and only authorizes payment method
        # details for future use.
        sig { returns(T::Boolean) }
        attr_accessor :mandate_only

        # Whether adaptive currency fees should be included in the product_price (true) or
        # added on top (false). This field is ignored if adaptive pricing is not enabled
        # for the business.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :adaptive_currency_fees_inclusive

        # Optional currency of the product price. If not specified, defaults to the
        # currency of the product.
        sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
        attr_accessor :product_currency

        # Optional product description override for billing and line items. If not
        # specified, the stored description of the product will be used.
        sig { returns(T.nilable(String)) }
        attr_accessor :product_description

        # Product price for the initial charge to customer If not specified the stored
        # price of the product will be used Represented in the lowest denomination of the
        # currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :product_price

        sig do
          params(
            mandate_only: T::Boolean,
            adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
            product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            product_description: T.nilable(String),
            product_price: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          # If set as True, does not perform any charge and only authorizes payment method
          # details for future use.
          mandate_only:,
          # Whether adaptive currency fees should be included in the product_price (true) or
          # added on top (false). This field is ignored if adaptive pricing is not enabled
          # for the business.
          adaptive_currency_fees_inclusive: nil,
          # Optional currency of the product price. If not specified, defaults to the
          # currency of the product.
          product_currency: nil,
          # Optional product description override for billing and line items. If not
          # specified, the stored description of the product will be used.
          product_description: nil,
          # Product price for the initial charge to customer If not specified the stored
          # price of the product will be used Represented in the lowest denomination of the
          # currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          product_price: nil
        )
        end

        sig do
          override.returns(
            {
              mandate_only: T::Boolean,
              adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
              product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
              product_description: T.nilable(String),
              product_price: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
