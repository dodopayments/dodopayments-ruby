# typed: strong

module Dodopayments
  module Models
    class EntitlementGrantFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::EntitlementGrantFailedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Detailed view of a single entitlement grant: who it's for, its lifecycle state,
      # and any integration-specific delivery payload.
      sig { returns(Dodopayments::Entitlements::EntitlementGrant) }
      attr_reader :data

      sig do
        params(data: Dodopayments::Entitlements::EntitlementGrant::OrHash).void
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
          data: Dodopayments::Entitlements::EntitlementGrant::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Detailed view of a single entitlement grant: who it's for, its lifecycle state,
        # and any integration-specific delivery payload.
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"entitlement_grant.failed"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::Entitlements::EntitlementGrant,
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
