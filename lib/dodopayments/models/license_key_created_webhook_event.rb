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
      #   Event-specific data
      #
      #   @return [Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Data]
      required :data, -> { Dodopayments::LicenseKeyCreatedWebhookEvent::Data }

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
      #   @param data [Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Data] Event-specific data
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::LicenseKeyCreatedWebhookEvent#data
      class Data < Dodopayments::Models::LicenseKey
        # @!attribute payload_type
        #   The type of payload in the data field
        #
        #   @return [Symbol, Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Data::PayloadType, nil]
        optional :payload_type, enum: -> { Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType }

        # @!method initialize(payload_type: nil)
        #   Event-specific data
        #
        #   @param payload_type [Symbol, Dodopayments::Models::LicenseKeyCreatedWebhookEvent::Data::PayloadType] The type of payload in the data field

        # The type of payload in the data field
        module PayloadType
          extend Dodopayments::Internal::Type::Enum

          LICENSE_KEY = :LicenseKey

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

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
