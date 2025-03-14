# typed: strong

module DodoPayments
  module Models
    class PaymentCreateResponse < DodoPayments::BaseModel
      # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      #   coming soon
      sig { returns(String) }
      def client_secret
      end

      sig { params(_: String).returns(String) }
      def client_secret=(_)
      end

      sig { returns(DodoPayments::Models::PaymentCreateResponse::Customer) }
      def customer
      end

      sig do
        params(_: DodoPayments::Models::PaymentCreateResponse::Customer)
          .returns(DodoPayments::Models::PaymentCreateResponse::Customer)
      end
      def customer=(_)
      end

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
      sig { returns(T.nilable(T::Array[DodoPayments::Models::PaymentCreateResponse::ProductCart])) }
      def product_cart
      end

      sig do
        params(_: T.nilable(T::Array[DodoPayments::Models::PaymentCreateResponse::ProductCart]))
          .returns(T.nilable(T::Array[DodoPayments::Models::PaymentCreateResponse::ProductCart]))
      end
      def product_cart=(_)
      end

      sig do
        params(
          client_secret: String,
          customer: DodoPayments::Models::PaymentCreateResponse::Customer,
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          total_amount: Integer,
          discount_id: T.nilable(String),
          payment_link: T.nilable(String),
          product_cart: T.nilable(T::Array[DodoPayments::Models::PaymentCreateResponse::ProductCart])
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
      )
      end

      sig do
        override
          .returns(
            {
              client_secret: String,
              customer: DodoPayments::Models::PaymentCreateResponse::Customer,
              metadata: T::Hash[Symbol, String],
              payment_id: String,
              total_amount: Integer,
              discount_id: T.nilable(String),
              payment_link: T.nilable(String),
              product_cart: T.nilable(T::Array[DodoPayments::Models::PaymentCreateResponse::ProductCart])
            }
          )
      end
      def to_hash
      end

      class Customer < DodoPayments::BaseModel
        # Unique identifier for the customer
        sig { returns(String) }
        def customer_id
        end

        sig { params(_: String).returns(String) }
        def customer_id=(_)
        end

        # Email address of the customer
        sig { returns(String) }
        def email
        end

        sig { params(_: String).returns(String) }
        def email=(_)
        end

        # Full name of the customer
        sig { returns(String) }
        def name
        end

        sig { params(_: String).returns(String) }
        def name=(_)
        end

        sig { params(customer_id: String, email: String, name: String).returns(T.attached_class) }
        def self.new(customer_id:, email:, name:)
        end

        sig { override.returns({customer_id: String, email: String, name: String}) }
        def to_hash
        end
      end

      class ProductCart < DodoPayments::BaseModel
        sig { returns(String) }
        def product_id
        end

        sig { params(_: String).returns(String) }
        def product_id=(_)
        end

        sig { returns(Integer) }
        def quantity
        end

        sig { params(_: Integer).returns(Integer) }
        def quantity=(_)
        end

        # Amount the customer pays if pay_what_you_want is enabled. If disabled then
        #   amount will be ignored
        sig { returns(T.nilable(Integer)) }
        def amount
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_)
        end

        sig do
          params(product_id: String, quantity: Integer, amount: T.nilable(Integer)).returns(T.attached_class)
        end
        def self.new(product_id:, quantity:, amount: nil)
        end

        sig { override.returns({product_id: String, quantity: Integer, amount: T.nilable(Integer)}) }
        def to_hash
        end
      end
    end
  end
end
