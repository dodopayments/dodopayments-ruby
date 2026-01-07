# typed: strong

module Dodopayments
  module Models
    class RefundFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::RefundFailedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Dodopayments::Refund) }
      attr_reader :data

      sig { params(data: Dodopayments::Refund::OrHash).void }
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(Dodopayments::RefundFailedWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::Refund::OrHash,
          timestamp: Time,
          type: Dodopayments::RefundFailedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type:
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::Refund,
            timestamp: Time,
            type: Dodopayments::RefundFailedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The event type
      module Type
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::RefundFailedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUND_FAILED =
          T.let(
            :"refund.failed",
            Dodopayments::RefundFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::RefundFailedWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
