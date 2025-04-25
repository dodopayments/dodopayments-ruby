# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateResponse < Dodopayments::Internal::Type::BaseModel
      sig { returns(Dodopayments::Models::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash)).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Tax will be added to the amount and charged to the customer on each billing
      # cycle
      sig { returns(Integer) }
      attr_accessor :recurring_pre_tax_amount

      # Unique identifier for the subscription
      sig { returns(String) }
      attr_accessor :subscription_id

      # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
      # coming soon
      sig { returns(T.nilable(String)) }
      attr_accessor :client_secret

      # The discount id if discount is applied
      sig { returns(T.nilable(String)) }
      attr_accessor :discount_id

      # URL to checkout page
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_link

      sig do
        params(
          customer: T.any(Dodopayments::Models::CustomerLimitedDetails, Dodopayments::Internal::AnyHash),
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
        # Tax will be added to the amount and charged to the customer on each billing
        # cycle
        recurring_pre_tax_amount:,
        # Unique identifier for the subscription
        subscription_id:,
        # Client secret used to load Dodo checkout SDK NOTE : Dodo checkout SDK will be
        # coming soon
        client_secret: nil,
        # The discount id if discount is applied
        discount_id: nil,
        # URL to checkout page
        payment_link: nil
      ); end
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
      def to_hash; end
    end
  end
end
