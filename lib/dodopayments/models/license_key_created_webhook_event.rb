# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyCreatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #
      #   @return [Dodopayments::Models::LicenseKey]
      required :data, -> { Dodopayments::LicenseKey }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::LicenseKeyCreatedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::LicenseKey]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Type] The event type

      # The event type
      #
      # @see Dodopayments::Models::LicenseKeyCreatedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        LICENSE_KEY_CREATED = :"license_key.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
