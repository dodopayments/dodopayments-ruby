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
          T.any(Dodopayments::AttachExistingCustomer, Dodopayments::NewCustomer)
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
      sig { returns(T.nilable(T::Array[Dodopayments::AttachAddon])) }
      attr_accessor :addons

      # List of payment methods allowed during checkout.
      #
      # Customers will **never** see payment methods that are **not** in this list.
      # However, adding a method here **does not guarantee** customers will see it.
      # Availability still depends on other factors (e.g., customer location, merchant
      # settings).
      sig do
        returns(T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]))
      end
      attr_accessor :allowed_payment_method_types

      # Fix the currency in which the end customer is billed. If Dodo Payments cannot
      # support that currency for this transaction, it will not proceed
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :billing_currency

      # Discount Code to apply to the subscription
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_code

      # Override merchant default 3DS behaviour for this subscription
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :force_3ds

      # Override the merchant-level mandate floor (in INR paise) for INR e-mandates on
      # Indian-card recurring payments. The mandate amount sent to the processor is
      # `max(this_floor, actual_billing_amount)`, so this is effectively the
      # customer-facing authorization ceiling whenever billing is lower. When unset, the
      # merchant setting applies; when that's also unset, the system default of ₹15,000
      # applies.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :mandate_min_amount_inr_paise

      # Additional metadata for the subscription Defaults to empty if not specified
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :metadata

      sig { params(metadata: T::Hash[Symbol, String]).void }
      attr_writer :metadata

      sig { returns(T.nilable(Dodopayments::OnDemandSubscription)) }
      attr_reader :on_demand

      sig do
        params(
          on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash)
        ).void
      end
      attr_writer :on_demand

      # List of one time products that will be bundled with the first payment for this
      # subscription
      sig do
        returns(
          T.nilable(
            T::Array[Dodopayments::SubscriptionCreateParams::OneTimeProductCart]
          )
        )
      end
      attr_accessor :one_time_product_cart

      # If true, generates a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :payment_link

      # Optional payment method ID to use for this subscription. If provided,
      # customer_id must also be provided (via AttachExistingCustomer). The payment
      # method will be validated for eligibility with the subscription's currency.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_id

      # If true, redirects the customer immediately after payment completion False by
      # default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :redirect_immediately

      sig { params(redirect_immediately: T::Boolean).void }
      attr_writer :redirect_immediately

      # If true, the customer's phone number is required to create this subscription.
      # Typically set alongside `payment_link=true` so merchants can enforce phone
      # collection on the hosted payment page. Defaults to false.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_phone_number

      sig { params(require_phone_number: T::Boolean).void }
      attr_writer :require_phone_number

      # Optional URL to redirect after successful subscription creation
      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      # If true, returns a shortened payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :short_link

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
              Dodopayments::NewCustomer::OrHash
            ),
          product_id: String,
          quantity: Integer,
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          allowed_payment_method_types:
            T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          discount_code: T.nilable(String),
          force_3ds: T.nilable(T::Boolean),
          mandate_min_amount_inr_paise: T.nilable(Integer),
          metadata: T::Hash[Symbol, String],
          on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash),
          one_time_product_cart:
            T.nilable(
              T::Array[
                Dodopayments::SubscriptionCreateParams::OneTimeProductCart::OrHash
              ]
            ),
          payment_link: T.nilable(T::Boolean),
          payment_method_id: T.nilable(String),
          redirect_immediately: T::Boolean,
          require_phone_number: T::Boolean,
          return_url: T.nilable(String),
          short_link: T.nilable(T::Boolean),
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
        # Override merchant default 3DS behaviour for this subscription
        force_3ds: nil,
        # Override the merchant-level mandate floor (in INR paise) for INR e-mandates on
        # Indian-card recurring payments. The mandate amount sent to the processor is
        # `max(this_floor, actual_billing_amount)`, so this is effectively the
        # customer-facing authorization ceiling whenever billing is lower. When unset, the
        # merchant setting applies; when that's also unset, the system default of ₹15,000
        # applies.
        mandate_min_amount_inr_paise: nil,
        # Additional metadata for the subscription Defaults to empty if not specified
        metadata: nil,
        on_demand: nil,
        # List of one time products that will be bundled with the first payment for this
        # subscription
        one_time_product_cart: nil,
        # If true, generates a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional payment method ID to use for this subscription. If provided,
        # customer_id must also be provided (via AttachExistingCustomer). The payment
        # method will be validated for eligibility with the subscription's currency.
        payment_method_id: nil,
        # If true, redirects the customer immediately after payment completion False by
        # default
        redirect_immediately: nil,
        # If true, the customer's phone number is required to create this subscription.
        # Typically set alongside `payment_link=true` so merchants can enforce phone
        # collection on the hosted payment page. Defaults to false.
        require_phone_number: nil,
        # Optional URL to redirect after successful subscription creation
        return_url: nil,
        # If true, returns a shortened payment link. Defaults to false if not specified.
        short_link: nil,
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
                Dodopayments::NewCustomer
              ),
            product_id: String,
            quantity: Integer,
            addons: T.nilable(T::Array[Dodopayments::AttachAddon]),
            allowed_payment_method_types:
              T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
            billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            discount_code: T.nilable(String),
            force_3ds: T.nilable(T::Boolean),
            mandate_min_amount_inr_paise: T.nilable(Integer),
            metadata: T::Hash[Symbol, String],
            on_demand: T.nilable(Dodopayments::OnDemandSubscription),
            one_time_product_cart:
              T.nilable(
                T::Array[
                  Dodopayments::SubscriptionCreateParams::OneTimeProductCart
                ]
              ),
            payment_link: T.nilable(T::Boolean),
            payment_method_id: T.nilable(String),
            redirect_immediately: T::Boolean,
            require_phone_number: T::Boolean,
            return_url: T.nilable(String),
            short_link: T.nilable(T::Boolean),
            show_saved_payment_methods: T::Boolean,
            tax_id: T.nilable(String),
            trial_period_days: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class OneTimeProductCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionCreateParams::OneTimeProductCart,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :product_id

        sig { returns(Integer) }
        attr_accessor :quantity

        # Amount the customer pays if pay_what_you_want is enabled. If disabled then
        # amount will be ignored Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount

        sig do
          params(
            product_id: String,
            quantity: Integer,
            amount: T.nilable(Integer)
          ).returns(T.attached_class)
        end
        def self.new(
          product_id:,
          quantity:,
          # Amount the customer pays if pay_what_you_want is enabled. If disabled then
          # amount will be ignored Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          amount: nil
        )
        end

        sig do
          override.returns(
            {
              product_id: String,
              quantity: Integer,
              amount: T.nilable(Integer)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
