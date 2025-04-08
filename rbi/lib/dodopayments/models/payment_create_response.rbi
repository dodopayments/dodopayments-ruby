# typed: strong

module Dodopayments
  module Models
    class PaymentCreateResponse < Dodopayments::Internal::Type::BaseModel
      # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      # coming soon
      sig { returns(String) }
      def client_secret
      end

      sig { params(_: String).returns(String) }
      def client_secret=(_)
      end

      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      def customer
      end

      sig do
        params(customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash)).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Unique identifier for the payment
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      # Total amount of the payment in smallest currency unit (e.g. cents)
      sig { returns(Integer) }
      def total_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def total_amount=(_)
      end

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      def discount_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def discount_id=(_)
      end

      # Optional URL to a hosted payment page
      sig { returns(T.nilable(String)) }
      def payment_link
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_link=(_)
      end

      # Optional list of products included in the payment
      sig { returns(T.nilable(T::Array[Dodopayments::Models::OneTimeProductCartItem])) }
      def product_cart
      end

      sig do
        params(_: T.nilable(T::Array[Dodopayments::Models::OneTimeProductCartItem]))
          .returns(T.nilable(T::Array[Dodopayments::Models::OneTimeProductCartItem]))
      end
      def product_cart=(_)
      end

      sig do
        params(
          client_secret: String,
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          discount_id: T.nilable(String),
          payment_link: T.nilable(String),
          product_cart: T.nilable(T::Array[T.any(Dodopayments::Models::OneTimeProductCartItem, Dodopayments::Internal::AnyHash)])
        )
          .returns(T.attached_class)
      end
      def self.new(
        client_secret:,
        customer:,
        metadata:,
        payment_id:,
        total_amount:,
        discount_id: nil,
        payment_link: nil,
        product_cart: nil
      ); end
      sig do
        override
          .returns(
            {
              client_secret: String,
              customer: Dodopayments::Models::CustomerLimitedDetails,
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              total_amount: Integer,
              discount_id: T.nilable(String),
              payment_link: T.nilable(String),
              product_cart: T.nilable(T::Array[Dodopayments::Models::OneTimeProductCartItem])
            }
          )
      end
      def to_hash; end
    end
  end
end
