# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Grants#list
      class EntitlementGrant < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the grant.
        #
        #   @return [String]
        required :id, String

        # @!attribute brand_id
        #   Brand id this grant belongs to.
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute business_id
        #   Identifier of the business that owns the grant.
        #
        #   @return [String]
        required :business_id, String

        # @!attribute created_at
        #   Timestamp when the grant was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute customer_id
        #   Identifier of the customer the grant was issued to.
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute entitlement_id
        #   Identifier of the entitlement this grant was issued from.
        #
        #   @return [String]
        required :entitlement_id, String

        # @!attribute integration_type
        #   The integration type of the grant's entitlement (e.g. `license_key`).
        #
        #   @return [Symbol, Dodopayments::Models::EntitlementIntegrationType]
        required :integration_type, enum: -> { Dodopayments::EntitlementIntegrationType }

        # @!attribute metadata
        #   Arbitrary key-value metadata recorded on the grant.
        #
        #   @return [Hash{Symbol=>String, Float, Boolean}]
        required :metadata, -> { Dodopayments::Internal::Type::HashOf[union: Dodopayments::MetadataItem] }

        # @!attribute status
        #   Lifecycle status of the grant.
        #
        #   @return [Symbol, Dodopayments::Models::Entitlements::EntitlementGrant::Status]
        required :status, enum: -> { Dodopayments::Entitlements::EntitlementGrant::Status }

        # @!attribute updated_at
        #   Timestamp when the grant was last modified.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute delivered_at
        #   Timestamp when the grant transitioned to `delivered`, when applicable.
        #
        #   @return [Time, nil]
        optional :delivered_at, Time, nil?: true

        # @!attribute digital_product_delivery
        #   Digital-product-delivery payload, present when the entitlement integration is
        #   `digital_files`.
        #
        #   @return [Dodopayments::Models::DigitalProductDelivery, nil]
        optional :digital_product_delivery, -> { Dodopayments::DigitalProductDelivery }, nil?: true

        # @!attribute error_code
        #   Machine-readable code reported when delivery failed, when applicable.
        #
        #   @return [String, nil]
        optional :error_code, String, nil?: true

        # @!attribute error_message
        #   Human-readable message reported when delivery failed, when applicable.
        #
        #   @return [String, nil]
        optional :error_message, String, nil?: true

        # @!attribute feature
        #   Typed feature payload, present only when the entitlement integration is
        #   `feature_flag`; `null` for every other integration type.
        #
        #   @return [Dodopayments::Models::Feature, nil]
        optional :feature, -> { Dodopayments::Feature }, nil?: true

        # @!attribute license_key
        #   License-key delivery payload, present when the entitlement integration is
        #   `license_key`.
        #
        #   @return [Dodopayments::Models::Entitlements::LicenseKeyGrant, nil]
        optional :license_key, -> { Dodopayments::Entitlements::LicenseKeyGrant }, nil?: true

        # @!attribute oauth_expires_at
        #   Timestamp when `oauth_url` stops being valid, when applicable.
        #
        #   @return [Time, nil]
        optional :oauth_expires_at, Time, nil?: true

        # @!attribute oauth_url
        #   Customer-facing OAuth URL for OAuth-style integrations. Populated during the
        #   customer-portal accept flow; `null` until the customer completes that step, and
        #   on grants for non-OAuth integrations.
        #
        #   @return [String, nil]
        optional :oauth_url, String, nil?: true

        # @!attribute payment_id
        #   Identifier of the payment that triggered this grant, when applicable.
        #
        #   @return [String, nil]
        optional :payment_id, String, nil?: true

        # @!attribute revocation_reason
        #   Reason recorded when the grant was revoked, when applicable.
        #
        #   @return [String, nil]
        optional :revocation_reason, String, nil?: true

        # @!attribute revoked_at
        #   Timestamp when the grant transitioned to `revoked`, when applicable.
        #
        #   @return [Time, nil]
        optional :revoked_at, Time, nil?: true

        # @!attribute subscription_id
        #   Identifier of the subscription that triggered this grant, when applicable.
        #
        #   @return [String, nil]
        optional :subscription_id, String, nil?: true

        # @!method initialize(id:, brand_id:, business_id:, created_at:, customer_id:, entitlement_id:, integration_type:, metadata:, status:, updated_at:, delivered_at: nil, digital_product_delivery: nil, error_code: nil, error_message: nil, feature: nil, license_key: nil, oauth_expires_at: nil, oauth_url: nil, payment_id: nil, revocation_reason: nil, revoked_at: nil, subscription_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::EntitlementGrant} for more details.
        #
        #   Detailed view of a single entitlement grant: who it's for, its lifecycle state,
        #   and any integration-specific delivery payload.
        #
        #   @param id [String] Unique identifier of the grant.
        #
        #   @param brand_id [String] Brand id this grant belongs to.
        #
        #   @param business_id [String] Identifier of the business that owns the grant.
        #
        #   @param created_at [Time] Timestamp when the grant was created.
        #
        #   @param customer_id [String] Identifier of the customer the grant was issued to.
        #
        #   @param entitlement_id [String] Identifier of the entitlement this grant was issued from.
        #
        #   @param integration_type [Symbol, Dodopayments::Models::EntitlementIntegrationType] The integration type of the grant's entitlement (e.g. `license_key`).
        #
        #   @param metadata [Hash{Symbol=>String, Float, Boolean}] Arbitrary key-value metadata recorded on the grant.
        #
        #   @param status [Symbol, Dodopayments::Models::Entitlements::EntitlementGrant::Status] Lifecycle status of the grant.
        #
        #   @param updated_at [Time] Timestamp when the grant was last modified.
        #
        #   @param delivered_at [Time, nil] Timestamp when the grant transitioned to `delivered`, when applicable.
        #
        #   @param digital_product_delivery [Dodopayments::Models::DigitalProductDelivery, nil] Digital-product-delivery payload, present when the entitlement
        #
        #   @param error_code [String, nil] Machine-readable code reported when delivery failed, when applicable.
        #
        #   @param error_message [String, nil] Human-readable message reported when delivery failed, when applicable.
        #
        #   @param feature [Dodopayments::Models::Feature, nil] Typed feature payload, present only when the entitlement integration is
        #
        #   @param license_key [Dodopayments::Models::Entitlements::LicenseKeyGrant, nil] License-key delivery payload, present when the entitlement integration
        #
        #   @param oauth_expires_at [Time, nil] Timestamp when `oauth_url` stops being valid, when applicable.
        #
        #   @param oauth_url [String, nil] Customer-facing OAuth URL for OAuth-style integrations. Populated
        #
        #   @param payment_id [String, nil] Identifier of the payment that triggered this grant, when applicable.
        #
        #   @param revocation_reason [String, nil] Reason recorded when the grant was revoked, when applicable.
        #
        #   @param revoked_at [Time, nil] Timestamp when the grant transitioned to `revoked`, when applicable.
        #
        #   @param subscription_id [String, nil] Identifier of the subscription that triggered this grant, when applicable.

        # Lifecycle status of the grant.
        #
        # @see Dodopayments::Models::Entitlements::EntitlementGrant#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          PENDING = :Pending
          DELIVERED = :Delivered
          FAILED = :Failed
          REVOKED = :Revoked

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    EntitlementGrant = Entitlements::EntitlementGrant
  end
end
