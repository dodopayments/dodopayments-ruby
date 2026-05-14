# typed: strong

module Dodopayments
  module Models
    class CreditOverageChargedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditOverageChargedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Response for a ledger entry
      sig { returns(Dodopayments::CreditEntitlements::CreditLedgerEntry) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::CreditEntitlements::CreditLedgerEntry::OrHash
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
          data: Dodopayments::CreditEntitlements::CreditLedgerEntry::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Response for a ledger entry
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"credit.overage_charged"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::CreditEntitlements::CreditLedgerEntry,
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
