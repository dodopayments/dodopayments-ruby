# typed: strong

module Dodopayments
  module Resources
    class Payments
      sig do
        params(
          billing: Dodopayments::BillingAddress::OrHash,
          customer:
            T.any(
              Dodopayments::AttachExistingCustomer::OrHash,
              Dodopayments::CreateNewCustomer::OrHash
            ),
          product_cart: T::Array[Dodopayments::OneTimeProductCartItem::OrHash],
          allowed_payment_method_types:
            T.nilable(
              T::Array[
                Dodopayments::PaymentCreateParams::AllowedPaymentMethodType::OrSymbol
              ]
            ),
          billing_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          show_saved_payment_methods: T::Boolean,
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::PaymentCreateResponse)
      end
      def create(
        billing:,
        customer:,
        # List of products in the cart. Must contain at least 1 and at most 100 items.
        product_cart:,
        # List of payment methods allowed during checkout.
        #
        # Customers will **never** see payment methods that are **not** in this list.
        # However, adding a method here **does not guarantee** customers will see it.
        # Availability still depends on other factors (e.g., customer location, merchant
        # settings).
        allowed_payment_method_types: nil,
        billing_currency: nil,
        # Discount Code to apply to the transaction
        discount_code: nil,
        metadata: nil,
        # Whether to generate a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect the customer after payment. Must be a valid URL if
        # provided.
        return_url: nil,
        # Display saved payment methods of a returning customer False by default
        show_saved_payment_methods: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        # creation will fail
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          payment_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Payment)
      end
      def retrieve(
        # Payment Id
        payment_id,
        request_options: {}
      )
      end

      sig do
        params(
          brand_id: T.nilable(String),
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(
          Dodopayments::Internal::DefaultPageNumberPagination[
            Dodopayments::Models::PaymentListResponse
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
        # Filter by subscription id
        subscription_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          payment_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(Dodopayments::Models::PaymentRetrieveLineItemsResponse)
      end
      def retrieve_line_items(
        # Payment Id
        payment_id,
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
