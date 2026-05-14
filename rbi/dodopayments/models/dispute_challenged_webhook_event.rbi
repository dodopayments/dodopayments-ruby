# typed: strong

module Dodopayments
  module Models
    class DisputeChallengedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DisputeChallengedWebhookEvent,
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
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::Dispute::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"dispute.challenged"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::Dispute,
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
