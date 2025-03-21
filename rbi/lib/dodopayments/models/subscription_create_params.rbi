# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig { returns(Dodopayments::Models::BillingAddress) }
      def billing
      end

      sig do
        params(_: T.any(Dodopayments::Models::BillingAddress, Dodopayments::Util::AnyHash))
          .returns(T.any(Dodopayments::Models::BillingAddress, Dodopayments::Util::AnyHash))
      end
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

      # Unique identifier of the product to subscribe to
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      # Number of units to subscribe for. Must be at least 1.
      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      # Discount Code to apply to the subscription
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

      # If true, generates a payment link. Defaults to false if not specified.
      sig { returns(T.nilable(T::Boolean)) }
      def payment_link
      end

      sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def payment_link=(_)
      end

      # Optional URL to redirect after successful subscription creation
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

      # Optional trial period in days If specified, this value overrides the trial
      #   period set in the product's price Must be between 0 and 10000 days
      sig { returns(T.nilable(Integer)) }
      def trial_period_days
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def trial_period_days=(_)
      end

      sig do
        params(
          billing: Dodopayments::Models::BillingAddress,
          customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
          product_id: String,
          quantity: Integer,
          discount_code: T.nilable(String),
          metadata: T::Hash[Symbol, String],
          payment_link: T.nilable(T::Boolean),
          return_url: T.nilable(String),
          tax_id: T.nilable(String),
          trial_period_days: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        billing:,
        customer:,
        product_id:,
        quantity:,
        discount_code: nil,
        metadata: nil,
        payment_link: nil,
        return_url: nil,
        tax_id: nil,
        trial_period_days: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              billing: Dodopayments::Models::BillingAddress,
              customer: T.any(Dodopayments::Models::AttachExistingCustomer, Dodopayments::Models::CreateNewCustomer),
              product_id: String,
              quantity: Integer,
              discount_code: T.nilable(String),
              metadata: T::Hash[Symbol, String],
              payment_link: T.nilable(T::Boolean),
              return_url: T.nilable(String),
              tax_id: T.nilable(String),
              trial_period_days: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
