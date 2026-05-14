# frozen_string_literal: true

module Dodopayments
  module Models
    class EntitlementGrantRevokedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Detailed view of a single entitlement grant: who it's for, its lifecycle state,
      #   and any integration-specific delivery payload.
      #
      #   @return [Dodopayments::Models::Entitlements::EntitlementGrant]
      required :data, -> { Dodopayments::Entitlements::EntitlementGrant }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"entitlement_grant.revoked"]
      required :type, const: :"entitlement_grant.revoked"

      # @!method initialize(business_id:, data:, timestamp:, type: :"entitlement_grant.revoked")
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::EntitlementGrantRevokedWebhookEvent} for more details.
      #
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Entitlements::EntitlementGrant] Detailed view of a single entitlement grant: who it's for, its
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"entitlement_grant.revoked"] The event type
    end
  end
end
