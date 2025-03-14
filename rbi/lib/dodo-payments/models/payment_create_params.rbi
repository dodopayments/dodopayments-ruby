# typed: strong

module DodoPayments
  module Models
    class PaymentCreateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      sig { returns(DodoPayments::Models::PaymentCreateParams::Billing) }
      def billing
      end

      sig do
        params(_: DodoPayments::Models::PaymentCreateParams::Billing)
          .returns(DodoPayments::Models::PaymentCreateParams::Billing)
      end
      def billing=(_)
      end

      sig do
        returns(
          T.any(
            DodoPayments::Models::PaymentCreateParams::Customer::AttachExistingCustomer,
            DodoPayments::Models::PaymentCreateParams::Customer::CreateNewCustomer
          )
        )
      end
      def customer
      end

      sig do
        params(
          _: T.any(
            DodoPayments::Models::PaymentCreateParams::Customer::AttachExistingCustomer,
            DodoPayments::Models::PaymentCreateParams::Customer::CreateNewCustomer
          )
        )
          .returns(
            T.any(
              DodoPayments::Models::PaymentCreateParams::Customer::AttachExistingCustomer,
              DodoPayments::Models::PaymentCreateParams::Customer::CreateNewCustomer
            )
          )
      end
      def customer=(_)
      end

      # List of products in the cart. Must contain at least 1 and at most 100 items.
      sig { returns(T::Array[DodoPayments::Models::PaymentCreateParams::ProductCart]) }
      def product_cart
      end

      sig do
        params(_: T::Array[DodoPayments::Models::PaymentCreateParams::ProductCart])
          .returns(T::Array[DodoPayments::Models::PaymentCreateParams::ProductCart])
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
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
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
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Billing < DodoPayments::BaseModel
        # City name
        sig { returns(String) }
        def city
        end

        sig { params(_: String).returns(String) }
        def city=(_)
        end

        # ISO country code alpha2 variant
        sig { returns(Symbol) }
        def country
        end

        sig { params(_: Symbol).returns(Symbol) }
        def country=(_)
        end

        # State or province name
        sig { returns(String) }
        def state
        end

        sig { params(_: String).returns(String) }
        def state=(_)
        end

        # Street address including house number and unit/apartment if applicable
        sig { returns(String) }
        def street
        end

        sig { params(_: String).returns(String) }
        def street=(_)
        end

        # Postal code or ZIP code
        sig { returns(String) }
        def zipcode
        end

        sig { params(_: String).returns(String) }
        def zipcode=(_)
        end

        sig do
          params(city: String, country: Symbol, state: String, street: String, zipcode: String)
            .returns(T.attached_class)
        end
        def self.new(city:, country:, state:, street:, zipcode:)
        end

        sig do
          override.returns({city: String, country: Symbol, state: String, street: String, zipcode: String})
        end
        def to_hash
        end
      end

      class Customer < DodoPayments::Union
        abstract!

        class AttachExistingCustomer < DodoPayments::BaseModel
          sig { returns(String) }
          def customer_id
          end

          sig { params(_: String).returns(String) }
          def customer_id=(_)
          end

          sig { params(customer_id: String).returns(T.attached_class) }
          def self.new(customer_id:)
          end

          sig { override.returns({customer_id: String}) }
          def to_hash
          end
        end

        class CreateNewCustomer < DodoPayments::BaseModel
          sig { returns(String) }
          def email
          end

          sig { params(_: String).returns(String) }
          def email=(_)
          end

          sig { returns(String) }
          def name
          end

          sig { params(_: String).returns(String) }
          def name=(_)
          end

          # When false, the most recently created customer object with the given email is
          #   used if exists. When true, a new customer object is always created False by
          #   default
          sig { returns(T.nilable(T::Boolean)) }
          def create_new_customer
          end

          sig { params(_: T::Boolean).returns(T::Boolean) }
          def create_new_customer=(_)
          end

          sig { returns(T.nilable(String)) }
          def phone_number
          end

          sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
          def phone_number=(_)
          end

          sig do
            params(
              email: String,
              name: String,
              create_new_customer: T::Boolean,
              phone_number: T.nilable(String)
            )
              .returns(T.attached_class)
          end
          def self.new(email:, name:, create_new_customer: nil, phone_number: nil)
          end

          sig do
            override
              .returns({
                         email: String,
                         name: String,
                         create_new_customer: T::Boolean,
                         phone_number: T.nilable(String)
                       })
          end
          def to_hash
          end
        end

        class << self
          sig do
            override
              .returns(
                [DodoPayments::Models::PaymentCreateParams::Customer::AttachExistingCustomer, DodoPayments::Models::PaymentCreateParams::Customer::CreateNewCustomer]
              )
          end
          def variants
          end
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
