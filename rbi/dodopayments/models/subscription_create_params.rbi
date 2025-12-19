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
      sig { returns(T.nilable(T::Array[Dodopayments::OneTimeProductCartItem])) }
      attr_accessor :one_time_product_cart

      # If true, generates a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :payment_link

      # If true, redirects the customer immediately after payment completion False by
      # default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :redirect_immediately

      sig { params(redirect_immediately: T::Boolean).void }
      attr_writer :redirect_immediately

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
          metadata: T::Hash[Symbol, String],
          on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash),
          one_time_product_cart:
            T.nilable(T::Array[Dodopayments::OneTimeProductCartItem::OrHash]),
          payment_link: T.nilable(T::Boolean),
          redirect_immediately: T::Boolean,
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
        # Additional metadata for the subscription Defaults to empty if not specified
        metadata: nil,
        on_demand: nil,
        # List of one time products that will be bundled with the first payment for this
        # subscription
        one_time_product_cart: nil,
        # If true, generates a payment link. Defaults to false if not specified.
        payment_link: nil,
        # If true, redirects the customer immediately after payment completion False by
        # default
        redirect_immediately: nil,
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
            metadata: T::Hash[Symbol, String],
            on_demand: T.nilable(Dodopayments::OnDemandSubscription),
            one_time_product_cart:
              T.nilable(T::Array[Dodopayments::OneTimeProductCartItem]),
            payment_link: T.nilable(T::Boolean),
            redirect_immediately: T::Boolean,
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
    end
  end
end
