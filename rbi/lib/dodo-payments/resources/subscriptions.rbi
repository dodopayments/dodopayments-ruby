# typed: strong

module DodoPayments
  module Resources
    class Subscriptions
      sig do
        params(
          billing: DodoPayments::Models::SubscriptionCreateParams::Billing,
          customer: T.any(
            DodoPayments::Models::SubscriptionCreateParams::Customer::AttachExistingCustomer,
            DodoPayments::Models::SubscriptionCreateParams::Customer::CreateNewCustomer
          ),
          product_id: String,
          quantity: Integer,
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::SubscriptionCreateResponse)
      end
      def create(
        billing:,
        customer:,
        # Unique identifier of the product to subscribe to
        product_id:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # Discount Code to apply to the subscription
        discount_code: nil,
        metadata: nil,
        # If true, generates a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect after successful subscription creation
        return_url: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        #   creation will fail
        tax_id: nil,
        # Optional trial period in days If specified, this value overrides the trial
        #   period set in the product's price Must be between 0 and 10000 days
        trial_period_days: nil,
        request_options: {}
      )
      end

      sig do
        params(
          subscription_id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Subscription)
      end
      def retrieve(
        # Subscription Id
        subscription_id,
        request_options: {}
      )
      end

      sig do
        params(
          subscription_id: String,
          metadata: T.nilable(T::Hash[Symbol, String]),
          status: T.nilable(Symbol),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Subscription)
      end
      def update(
        # Subscription Id
        subscription_id,
        metadata: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Symbol),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::DefaultPageNumberPagination[DodoPayments::Models::Subscription])
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
      )
      end

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
