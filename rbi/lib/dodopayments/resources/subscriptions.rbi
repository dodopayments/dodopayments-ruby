# typed: strong

module Dodopayments
  module Resources
    class Subscriptions
      sig do
        params(
          billing: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash),
          customer: T.any(
            Dodopayments::Models::AttachExistingCustomer,
            Dodopayments::Internal::AnyHash,
            Dodopayments::Models::CreateNewCustomer
          ),
          product_id: String,
          quantity: Integer,
          allowed_payment_method_types: T.nilable(T::Array[Dodopayments::Models::SubscriptionCreateParams::AllowedPaymentMethodType::OrSymbol]),
          billing_currency: T.nilable(Dodopayments::Models::SubscriptionCreateParams::BillingCurrency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          on_demand: T.nilable(
            T.any(Dodopayments::Models::SubscriptionCreateParams::OnDemand, Dodopayments::Internal::AnyHash)
          ),
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Models::SubscriptionCreateResponse)
      end
      def create(
        billing:,
        customer:,
        # Unique identifier of the product to subscribe to
        product_id:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # List of payment methods allowed during checkout.
        #
        #   Customers will **never** see payment methods that are **not** in this list.
        #   However, adding a method here **does not guarantee** customers will see it.
        #   Availability still depends on other factors (e.g., customer location, merchant
        #   settings).
        allowed_payment_method_types: nil,
        billing_currency: nil,
        # Discount Code to apply to the subscription
        discount_code: nil,
        metadata: nil,
        on_demand: nil,
        # If true, generates a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect after successful subscription creation
        return_url: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        #   creation will fail
        tax_id: nil,
        # Optional trial period in days If specified, this value overrides the trial
        #   period set in the product's price Must be between 0 and 10000 days
        trial_period_days: nil,
        request_options: {}
      ); end
      sig do
        params(
          subscription_id: String,
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Models::Subscription)
      end
      def retrieve(
        # Subscription Id
        subscription_id,
        request_options: {}
      ); end
      sig do
        params(
          subscription_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Models::Subscription)
      end
      def update(
        # Subscription Id
        subscription_id,
        metadata: nil,
        status: nil,
        request_options: {}
      ); end
      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Internal::DefaultPageNumberPagination[Dodopayments::Models::Subscription])
      end
      def list(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Filter by customer id
        customer_id: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by status
        status: nil,
        request_options: {}
      ); end
      sig do
        params(
          subscription_id: String,
          product_price: Integer,
          request_options: T.nilable(T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash))
        )
          .returns(Dodopayments::Models::SubscriptionChargeResponse)
      end
      def charge(
        # Subscription Id
        subscription_id,
        # The product price. Represented in the lowest denomination of the currency (e.g.,
        #   cents for USD). For example, to charge $1.00, pass `100`.
        product_price:,
        request_options: {}
      ); end
      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:); end
    end
  end
end
