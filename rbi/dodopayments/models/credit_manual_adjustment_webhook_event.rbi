# typed: strong

module Dodopayments
  module Models
    class CreditManualAdjustmentWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditManualAdjustmentWebhookEvent,
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
      sig do
        returns(
          Dodopayments::CreditManualAdjustmentWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::CreditEntitlements::CreditLedgerEntry::OrHash,
          timestamp: Time,
          type: Dodopayments::CreditManualAdjustmentWebhookEvent::Type::OrSymbol
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
        type:
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::CreditEntitlements::CreditLedgerEntry,
            timestamp: Time,
            type:
              Dodopayments::CreditManualAdjustmentWebhookEvent::Type::TaggedSymbol
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
            T.all(
              Symbol,
              Dodopayments::CreditManualAdjustmentWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDIT_MANUAL_ADJUSTMENT =
          T.let(
            :"credit.manual_adjustment",
            Dodopayments::CreditManualAdjustmentWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::CreditManualAdjustmentWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
