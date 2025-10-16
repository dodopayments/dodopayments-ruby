# typed: strong

module Dodopayments
  module Resources
    class Subscriptions
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
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::SubscriptionCreateResponse)
      end
      def create(
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
        params(
          subscription_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Subscription)
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
          billing: T.nilable(Dodopayments::BillingAddress::OrHash),
          cancel_at_next_billing_date: T.nilable(T::Boolean),
          disable_on_demand:
            T.nilable(
              Dodopayments::SubscriptionUpdateParams::DisableOnDemand::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          next_billing_date: T.nilable(Time),
          status: T.nilable(Dodopayments::SubscriptionStatus::OrSymbol),
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Subscription)
      end
      def update(
        # Subscription Id
        subscription_id,
        billing: nil,
        # When set, the subscription will remain active until the end of billing period
        cancel_at_next_billing_date: nil,
        disable_on_demand: nil,
        metadata: nil,
        next_billing_date: nil,
        status: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          brand_id: String,
          created_at_gte: Time,
          created_at_lte: Time,
          customer_id: String,
          page_number: Integer,
          page_size: Integer,
          status: Dodopayments::SubscriptionListParams::Status::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::SubscriptionListResponse
          ]
        )
      end
      def list(
        # filter by Brand id
        brand_id: nil,
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

      sig do
        params(
          subscription_id: String,
          product_id: String,
          proration_billing_mode:
            Dodopayments::SubscriptionChangePlanParams::ProrationBillingMode::OrSymbol,
          quantity: Integer,
          addons: T.nilable(T::Array[Dodopayments::AttachAddon::OrHash]),
          request_options: Dodopayments::RequestOptions::OrHash
        ).void
      end
      def change_plan(
        # Subscription Id
        subscription_id,
        # Unique identifier of the product to subscribe to
        product_id:,
        # Proration Billing Mode
        proration_billing_mode:,
        # Number of units to subscribe for. Must be at least 1.
        quantity:,
        # Addons for the new plan. Note : Leaving this empty would remove any existing
        # addons
        addons: nil,
        request_options: {}
      )
      end

      sig do
        params(
          subscription_id: String,
          product_price: Integer,
          adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
          customer_balance_config:
            T.nilable(
              Dodopayments::SubscriptionChargeParams::CustomerBalanceConfig::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          product_description: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::SubscriptionChargeResponse)
      end
      def charge(
        # Subscription Id
        subscription_id,
        # The product price. Represented in the lowest denomination of the currency (e.g.,
        # cents for USD). For example, to charge $1.00, pass `100`.
        product_price:,
        # Whether adaptive currency fees should be included in the product_price (true) or
        # added on top (false). This field is ignored if adaptive pricing is not enabled
        # for the business.
        adaptive_currency_fees_inclusive: nil,
        # Specify how customer balance is used for the payment
        customer_balance_config: nil,
        # Metadata for the payment. If not passed, the metadata of the subscription will
        # be taken
        metadata: nil,
        # Optional currency of the product price. If not specified, defaults to the
        # currency of the product.
        product_currency: nil,
        # Optional product description override for billing and line items. If not
        # specified, the stored description of the product will be used.
        product_description: nil,
        request_options: {}
      )
      end

      # Get detailed usage history for a subscription that includes usage-based billing
      # (metered components). This endpoint provides insights into customer usage
      # patterns and billing calculations over time.
      #
      # ## What You'll Get:
      #
      # - **Billing periods**: Each item represents a billing cycle with start and end
      #   dates
      # - **Meter usage**: Detailed breakdown of usage for each meter configured on the
      #   subscription
      # - **Usage calculations**: Total units consumed, free threshold units, and
      #   chargeable units
      # - **Historical tracking**: Complete audit trail of usage-based charges
      #
      # ## Use Cases:
      #
      # - **Customer support**: Investigate billing questions and usage discrepancies
      # - **Usage analytics**: Analyze customer consumption patterns over time
      # - **Billing transparency**: Provide customers with detailed usage breakdowns
      # - **Revenue optimization**: Identify usage trends to optimize pricing strategies
      #
      # ## Filtering Options:
      #
      # - **Date range filtering**: Get usage history for specific time periods
      # - **Meter-specific filtering**: Focus on usage for a particular meter
      # - **Pagination**: Navigate through large usage histories efficiently
      #
      # ## Important Notes:
      #
      # - Only returns data for subscriptions with usage-based (metered) components
      # - Usage history is organized by billing periods (subscription cycles)
      # - Free threshold units are calculated and displayed separately from chargeable
      #   units
      # - Historical data is preserved even if meter configurations change
      #
      # ## Example Query Patterns:
      #
      # - Get last 3 months:
      #   `?start_date=2024-01-01T00:00:00Z&end_date=2024-03-31T23:59:59Z`
      # - Filter by meter: `?meter_id=mtr_api_requests`
      # - Paginate results: `?page_size=20&page_number=1`
      # - Recent usage: `?start_date=2024-03-01T00:00:00Z` (from March 1st to now)
      sig do
        params(
          subscription_id: String,
          end_date: T.nilable(Time),
          meter_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          start_date: T.nilable(Time),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::SubscriptionRetrieveUsageHistoryResponse
          ]
        )
      end
      def retrieve_usage_history(
        # Unique subscription identifier
        subscription_id,
        # Filter by end date (inclusive)
        end_date: nil,
        # Filter by specific meter ID
        meter_id: nil,
        # Page number (default: 0)
        page_number: nil,
        # Page size (default: 10, max: 100)
        page_size: nil,
        # Filter by start date (inclusive)
        start_date: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Dodopayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
