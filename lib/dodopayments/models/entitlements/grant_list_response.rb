# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Grants#list
      class GrantListResponse < Dodopayments::Internal::Type::BaseModel
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
        #   @return [Symbol, Dodopayments::Models::Entitlements::GrantListResponse::Status]
        required :status, enum: -> { Dodopayments::Models::Entitlements::GrantListResponse::Status }

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
        #   @return [Dodopayments::Models::Entitlements::GrantListResponse::LicenseKey, nil]
        optional :license_key,
                 -> { Dodopayments::Models::Entitlements::GrantListResponse::LicenseKey },
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
        #   {Dodopayments::Models::Entitlements::GrantListResponse} for more details.
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
        #   @param status [Symbol, Dodopayments::Models::Entitlements::GrantListResponse::Status]
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
        #   @param license_key [Dodopayments::Models::Entitlements::GrantListResponse::LicenseKey, nil] Present only when the entitlement integration_type is `license_key`.
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

        # @see Dodopayments::Models::Entitlements::GrantListResponse#status
        module Status
          extend Dodopayments::Internal::Type::Enum

          PENDING = :Pending
          DELIVERED = :Delivered
          FAILED = :Failed
          REVOKED = :Revoked

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Dodopayments::Models::Entitlements::GrantListResponse#license_key
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
    end
  end
end
