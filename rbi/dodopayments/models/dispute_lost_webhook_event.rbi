# typed: strong

module Dodopayments
  module Models
    class DisputeLostWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DisputeLostWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Dodopayments::Dispute) }
      attr_reader :data

      sig { params(data: Dodopayments::Dispute::OrHash).void }
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig { returns(Dodopayments::DisputeLostWebhookEvent::Type::TaggedSymbol) }
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::Dispute::OrHash,
          timestamp: Time,
          type: Dodopayments::DisputeLostWebhookEvent::Type::OrSymbol
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
            data: Dodopayments::Dispute,
            timestamp: Time,
            type: Dodopayments::DisputeLostWebhookEvent::Type::TaggedSymbol
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
            T.all(Symbol, Dodopayments::DisputeLostWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISPUTE_LOST =
          T.let(
            :"dispute.lost",
            Dodopayments::DisputeLostWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::DisputeLostWebhookEvent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
