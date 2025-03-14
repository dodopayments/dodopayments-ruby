# typed: strong

module Dodopayments
  module Models
    class PaymentCreateParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig { returns(Dodopayments::Models::BillingAddress) }
      def billing
      end

      sig { params(_: Dodopayments::Models::BillingAddress).returns(Dodopayments::Models::BillingAddress) }
      def billing=(_)
      end

      sig { returns(T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer)) }
      def customer
      end

      sig do
        params(_: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer))
          .returns(T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer))
      end
      def customer=(_)
      end

      # List of products in the cart. Must contain at least 1 and at most 100 items.
      sig { returns(T::Array[Dodopayments::Models::OneTimeProductCartItem]) }
      def product_cart
      end

      sig do
        params(_: T::Array[Dodopayments::Models::OneTimeProductCartItem])
          .returns(T::Array[Dodopayments::Models::OneTimeProductCartItem])
      end
      def product_cart=(_)
      end

      # Discount Code to apply to the transaction
      sig { returns(T.nilable(String)) }
      def discount_code
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def discount_code=(_)
      end

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Whether to generate a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      def payment_link
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def payment_link=(_)
      end

      # Optional URL to redirect the customer after payment. Must be a valid URL if
      #   provided.
      sig { returns(T.nilable(String)) }
      def return_url
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_)
      end

      # Tax ID in case the payment is B2B. If tax id validation fails the payment
      #   creation will fail
      sig { returns(T.nilable(String)) }
      def tax_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def tax_id=(_)
      end

      sig do
        params(
          billing: Dodopayments::Models::BillingAddress,
          customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
          product_cart: T::Array[Dodopayments::Models::OneTimeProductCartItem],
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          tax_id: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        customer:,
        product_cart:,
        discount_code: nil,
        metadata: nil,
        payment_link: nil,
        return_url: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
              product_cart: T::Array[Dodopayments::Models::OneTimeProductCartItem],
              discount_code: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              payment_link: T.nilable(T::Boolean),
              return_url: T.nilable(String),
              tax_id: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
