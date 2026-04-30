# frozen_string_literal: true

module Dodopayments
  module Models
    class EntitlementGrantCreatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #
      #   @return [Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data]
      required :data, -> { Dodopayments::EntitlementGrantCreatedWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Type]
      required :type, enum: -> { Dodopayments::EntitlementGrantCreatedWebhookEvent::Type }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data]
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Type] The event type

      # @see Dodopayments::Models::EntitlementGrantCreatedWebhookEvent#data
      class Data < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute business_id
        #
        #   @return [String]
        required :business_id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute entitlement_id
        #
        #   @return [String]
        required :entitlement_id, String

        # @!attribute external_id
        #
        #   @return [String]
        required :external_id, String

        # @!attribute status
        #
        #   @return [Symbol, Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data::Status]
        required :status, enum: -> { Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute delivered_at
        #
        #   @return [Time, nil]
        optional :delivered_at, Time, nil?: true

        # @!attribute digital_product_delivery
        #   Present only when the entitlement integration_type is `digital_files`. Populated
        #   eagerly on every list and single-record endpoint.
        #
        #   @return [Dodopayments::Models::DigitalProductDelivery, nil]
        optional :digital_product_delivery, -> { Dodopayments::DigitalProductDelivery }, nil?: true

        # @!attribute error_code
        #
        #   @return [String, nil]
        optional :error_code, String, nil?: true

        # @!attribute error_message
        #
        #   @return [String, nil]
        optional :error_message, String, nil?: true

        # @!attribute license_key
        #   Present only when the entitlement integration_type is `license_key`.
        #
        #   @return [Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey, nil]
        optional :license_key,
                 -> { Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey },
                 nil?: true

        # @!attribute metadata
        #
        #   @return [Object, nil]
        optional :metadata, Dodopayments::Internal::Type::Unknown

        # @!attribute oauth_expires_at
        #
        #   @return [Time, nil]
        optional :oauth_expires_at, Time, nil?: true

        # @!attribute oauth_url
        #
        #   @return [String, nil]
        optional :oauth_url, String, nil?: true

        # @!attribute payment_id
        #
        #   @return [String, nil]
        optional :payment_id, String, nil?: true

        # @!attribute revocation_reason
        #
        #   @return [String, nil]
        optional :revocation_reason, String, nil?: true

        # @!attribute revoked_at
        #
        #   @return [Time, nil]
        optional :revoked_at, Time, nil?: true

        # @!attribute subscription_id
        #
        #   @return [String, nil]
        optional :subscription_id, String, nil?: true

        # @!method initialize(id:, business_id:, created_at:, customer_id:, entitlement_id:, external_id:, status:, updated_at:, delivered_at: nil, digital_product_delivery: nil, error_code: nil, error_message: nil, license_key: nil, metadata: nil, oauth_expires_at: nil, oauth_url: nil, payment_id: nil, revocation_reason: nil, revoked_at: nil, subscription_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data} for more
        #   details.
        #
        #   @param id [String]
        #
        #   @param business_id [String]
        #
        #   @param created_at [Time]
        #
        #   @param customer_id [String]
        #
        #   @param entitlement_id [String]
        #
        #   @param external_id [String]
        #
        #   @param status [Symbol, Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data::Status]
        #
        #   @param updated_at [Time]
        #
        #   @param delivered_at [Time, nil]
        #
        #   @param digital_product_delivery [Dodopayments::Models::DigitalProductDelivery, nil] Present only when the entitlement integration_type is `digital_files`.
        #
        #   @param error_code [String, nil]
        #
        #   @param error_message [String, nil]
        #
        #   @param license_key [Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey, nil] Present only when the entitlement integration_type is `license_key`.
        #
        #   @param metadata [Object]
        #
        #   @param oauth_expires_at [Time, nil]
        #
        #   @param oauth_url [String, nil]
        #
        #   @param payment_id [String, nil]
        #
        #   @param revocation_reason [String, nil]
        #
        #   @param revoked_at [Time, nil]
        #
        #   @param subscription_id [String, nil]

        # @see Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          PENDING = :Pending
          DELIVERED = :Delivered
          FAILED = :Failed
          REVOKED = :Revoked

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::EntitlementGrantCreatedWebhookEvent::Data#license_key
        class LicenseKey < Dodopayments::Internal::Type::BaseModel
          # @!attribute activations_used
          #
          #   @return [Integer]
          required :activations_used, Integer

          # @!attribute key
          #
          #   @return [String]
          required :key, String

          # @!attribute activations_limit
          #
          #   @return [Integer, nil]
          optional :activations_limit, Integer, nil?: true

          # @!attribute expires_at
          #
          #   @return [Time, nil]
          optional :expires_at, Time, nil?: true

          # @!method initialize(activations_used:, key:, activations_limit: nil, expires_at: nil)
          #   Present only when the entitlement integration_type is `license_key`.
          #
          #   @param activations_used [Integer]
          #   @param key [String]
          #   @param activations_limit [Integer, nil]
          #   @param expires_at [Time, nil]
        end
      end

      # The event type
      #
      # @see Dodopayments::Models::EntitlementGrantCreatedWebhookEvent#type
      module Type
        extend Dodopayments::Internal::Type::Enum

        ENTITLEMENT_GRANT_CREATED = :"entitlement_grant.created"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
