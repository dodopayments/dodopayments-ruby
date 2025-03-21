# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateResponse < Dodopayments::BaseModel
      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      def customer
      end

      sig do
        params(_: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Util::AnyHash))
          .returns(T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Util::AnyHash))
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
          customer: Dodopayments::Models::CustomerLimitedDetails,
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
              customer: Dodopayments::Models::CustomerLimitedDetails,
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
    end
  end
end
