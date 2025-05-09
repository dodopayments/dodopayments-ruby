# typed: strong

module Dodopayments
  module Models
    class PaymentCreateResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      # coming soon
      sig { returns(String) }
      attr_accessor :client_secret

      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Unique identifier for the payment
      sig { returns(String) }
      attr_accessor :payment_id

      # Total amount of the payment in smallest currency unit (e.g. cents)
      sig { returns(Integer) }
      attr_accessor :total_amount

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # Optional URL to a hosted payment page
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      # Optional list of products included in the payment
      sig { returns(T.nilable(T::Array[Dodopayments::OneTimeProductCartItem])) }
      attr_accessor :product_cart

      sig do
        params(
          client_secret: String,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          discount_id: T.nilable(String),
          payment_link: T.nilable(String),
          product_cart:
            T.nilable(T::Array[Dodopayments::OneTimeProductCartItem::OrHash])
        ).returns(T.attached_class)
      end
      def self.new(
        # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
        # coming soon
        client_secret:,
        customer:,
        metadata:,
        # Unique identifier for the payment
        payment_id:,
        # Total amount of the payment in smallest currency unit (e.g. cents)
        total_amount:,
        # The discount id if discount is applied
        discount_id: nil,
        # Optional URL to a hosted payment page
        payment_link: nil,
        # Optional list of products included in the payment
        product_cart: nil
      )
      end

      sig do
        override.returns(
          {
            client_secret: String,
            customer: Dodopayments::CustomerLimitedDetails,
            metadata: T::Hash[Symbol, String],
            payment_id: String,
            total_amount: Integer,
            discount_id: T.nilable(String),
            payment_link: T.nilable(String),
            product_cart:
              T.nilable(T::Array[Dodopayments::OneTimeProductCartItem])
          }
        )
      end
      def to_hash
      end
    end
  end
end
