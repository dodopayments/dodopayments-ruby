# frozen_string_literal: true

module Dodopayments
  module Models
    class EntitlementGrantFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
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
      #   @return [Symbol, Dodopayments::Models::EntitlementGrantFailedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::EntitlementGrantFailedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::Entitlements::EntitlementGrant]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::EntitlementGrantFailedWebhookEvent::Type] The event type

      # The event type
      #
      # @see Dodopayments::Models::EntitlementGrantFailedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        ENTITLEMENT_GRANT_FAILED = :"entitlement_grant.failed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
