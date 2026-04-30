# typed: strong

module Dodopayments
  module Models
    class EntitlementGrantDeliveredWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::EntitlementGrantDeliveredWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

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
      sig do
        returns(
          Dodopayments::EntitlementGrantDeliveredWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::Entitlements::EntitlementGrant::OrHash,
          timestamp: Time,
          type:
            Dodopayments::EntitlementGrantDeliveredWebhookEvent::Type::OrSymbol
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
            data: Dodopayments::Entitlements::EntitlementGrant,
            timestamp: Time,
            type:
              Dodopayments::EntitlementGrantDeliveredWebhookEvent::Type::TaggedSymbol
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
              Dodopayments::EntitlementGrantDeliveredWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTITLEMENT_GRANT_DELIVERED =
          T.let(
            :"entitlement_grant.delivered",
            Dodopayments::EntitlementGrantDeliveredWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::EntitlementGrantDeliveredWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
