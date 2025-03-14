# typed: strong

module DodoPayments
  module Resources
    class Payments
      sig do
        params(
          billing: DodoPayments::Models::PaymentCreateParams::Billing,
          customer: T.any(
            DodoPayments::Models::PaymentCreateParams::Customer::AttachExistingCustomer,
            DodoPayments::Models::PaymentCreateParams::Customer::CreateNewCustomer
          ),
          product_cart: T::Array[DodoPayments::Models::PaymentCreateParams::ProductCart],
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          tax_id: T.nilable(String),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::PaymentCreateResponse)
      end
      def create(
        billing:,
        customer:,
        # List of products in the cart. Must contain at least 1 and at most 100 items.
        product_cart:,
        # Discount Code to apply to the transaction
        discount_code: nil,
        metadata: nil,
        # Whether to generate a payment link. Defaults to false if not specified.
        payment_link: nil,
        # Optional URL to redirect the customer after payment. Must be a valid URL if
        #   provided.
        return_url: nil,
        # Tax ID in case the payment is B2B. If tax id validation fails the payment
        #   creation will fail
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        params(
          payment_id: String,
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::Models::Payment)
      end
      def retrieve(
        # Payment Id
        payment_id,
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
          subscription_id: T.nilable(String),
          request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
        )
          .returns(DodoPayments::DefaultPageNumberPagination[DodoPayments::Models::PaymentListResponse])
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
        # Filter by subscription id
        subscription_id: nil,
        request_options: {}
      )
      end

      sig { params(client: DodoPayments::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
