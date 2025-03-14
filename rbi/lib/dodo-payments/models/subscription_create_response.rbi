# typed: strong

module DodoPayments
  module Models
    class SubscriptionCreateResponse < DodoPayments::BaseModel
      sig { returns(DodoPayments::Models::SubscriptionCreateResponse::Customer) }
      def customer
      end

      sig do
        params(_: DodoPayments::Models::SubscriptionCreateResponse::Customer)
          .returns(DodoPayments::Models::SubscriptionCreateResponse::Customer)
      end
      def customer=(_)
      end

      sig { returns(T::Hash[Symbol, String]) }
      def metadata
      end

      sig { params(_: T::Hash[Symbol, String]).returns(T::Hash[Symbol, String]) }
      def metadata=(_)
      end

      # Tax will be added to the amount and charged to the customer on each billing
      #   cycle
      sig { returns(Integer) }
      def recurring_pre_tax_amount
      end

      sig { params(_: Integer).returns(Integer) }
      def recurring_pre_tax_amount=(_)
      end

      # Unique identifier for the subscription
      sig { returns(String) }
      def subscription_id
      end

      sig { params(_: String).returns(String) }
      def subscription_id=(_)
      end

      # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      #   coming soon
      sig { returns(T.nilable(String)) }
      def client_secret
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def client_secret=(_)
      end

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      def discount_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def discount_id=(_)
      end

      # URL to checkout page
      sig { returns(T.nilable(String)) }
      def payment_link
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def payment_link=(_)
      end

      sig do
        params(
          customer: DodoPayments::Models::SubscriptionCreateResponse::Customer,
          metadata: T::Hash[Symbol, String],
          recurring_pre_tax_amount: Integer,
          subscription_id: String,
          client_secret: T.nilable(String),
          discount_id: T.nilable(String),
          payment_link: T.nilable(String)
        )
          .returns(T.attached_class)
      end
      def self.new(
        customer:,
        metadata:,
        recurring_pre_tax_amount:,
        subscription_id:,
        client_secret: nil,
        discount_id: nil,
        payment_link: nil
      )
      end

      sig do
        override
          .returns(
            {
              customer: DodoPayments::Models::SubscriptionCreateResponse::Customer,
              metadata: T::Hash[Symbol, String],
              recurring_pre_tax_amount: Integer,
              subscription_id: String,
              client_secret: T.nilable(String),
              discount_id: T.nilable(String),
              payment_link: T.nilable(String)
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
    end
  end
end
