# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionUpdatedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Response struct representing subscription details
      sig { returns(Dodopayments::Subscription) }
      attr_reader :data

      sig { params(data: Dodopayments::Subscription::OrHash).void }
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::Subscription::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Response struct representing subscription details
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"subscription.updated"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::Subscription,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
