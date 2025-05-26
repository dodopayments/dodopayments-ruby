# typed: strong

module Dodopayments
  module Models
    class SubscriptionCreateResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionCreateResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Addons associated with this subscription
      sig { returns(T::Array[Dodopayments::AddonCartResponseItem]) }
      attr_accessor :addons

      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # First payment id for the subscription
      sig { returns(String) }
      attr_accessor :payment_id

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
          addons: T::Array[Dodopayments::AddonCartResponseItem::OrHash],
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          metadata: T::Hash[Symbol, String],
          payment_id: String,
          recurring_pre_tax_amount: Integer,
          subscription_id: String,
          client_secret: T.nilable(String),
          discount_id: T.nilable(String),
          payment_link: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Addons associated with this subscription
        addons:,
        customer:,
        metadata:,
        # First payment id for the subscription
        payment_id:,
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
      )
      end

      sig do
        override.returns(
          {
            addons: T::Array[Dodopayments::AddonCartResponseItem],
            customer: Dodopayments::CustomerLimitedDetails,
            metadata: T::Hash[Symbol, String],
            payment_id: String,
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
