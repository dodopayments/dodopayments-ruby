# typed: strong

module Dodopayments
  module Models
    class SubscriptionExpiredWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionExpiredWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Subscription payload sent on a webhook. It carries every field of
      # `SubscriptionResponse`, plus the grace-period deadline.
      sig { returns(Dodopayments::SubscriptionExpiredWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::SubscriptionExpiredWebhookEvent::Data::OrHash
        ).void
      end
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
          data: Dodopayments::SubscriptionExpiredWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Subscription payload sent on a webhook. It carries every field of
        # `SubscriptionResponse`, plus the grace-period deadline.
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"subscription.expired"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::SubscriptionExpiredWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Models::Subscription
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionExpiredWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        # Time when the grace period ends. The subscription moves to `on_hold` or to
        # `cancelled` at this time.
        #
        # Read in the same query as the rest of the payload, so it always comes from the
        # row snapshot that produced `status`. It is set whenever the subscription sits in
        # a window at that moment. A delayed event of another type therefore carries the
        # deadline too, next to a `past_due` status.
        sig { returns(T.nilable(Time)) }
        attr_accessor :past_due_ends_at

        # Subscription payload sent on a webhook. It carries every field of
        # `SubscriptionResponse`, plus the grace-period deadline.
        sig do
          params(past_due_ends_at: T.nilable(Time)).returns(T.attached_class)
        end
        def self.new(
          # Time when the grace period ends. The subscription moves to `on_hold` or to
          # `cancelled` at this time.
          #
          # Read in the same query as the rest of the payload, so it always comes from the
          # row snapshot that produced `status`. It is set whenever the subscription sits in
          # a window at that moment. A delayed event of another type therefore carries the
          # deadline too, next to a `past_due` status.
          past_due_ends_at: nil
        )
        end

        sig { override.returns({ past_due_ends_at: T.nilable(Time) }) }
        def to_hash
        end
      end
    end
  end
end
