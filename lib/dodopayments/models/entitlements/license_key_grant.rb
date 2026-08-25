# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      class LicenseKeyGrant < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier of the issued license key.
        #
        #   @return [String]
        required :id, String

        # @!attribute activations_used
        #   Number of instances currently active. Activation increments it and deactivation
        #   decrements it, so it is a live count and not a total.
        #
        #   @return [Integer]
        required :activations_used, Integer

        # @!attribute key
        #   Issued license key.
        #
        #   @return [String]
        required :key, String

        # @!attribute status
        #   Current status of the license key. Activation fails unless it is `active`, so a
        #   client can warn before the customer tries.
        #
        #   @return [Symbol, Dodopayments::Models::LicenseKeyStatus]
        required :status, enum: -> { Dodopayments::LicenseKeyStatus }

        # @!attribute activations_limit
        #   Maximum activations allowed by the entitlement, when set.
        #
        #   @return [Integer, nil]
        optional :activations_limit, Integer, nil?: true

        # @!attribute expires_at
        #   When the license key expires, when applicable.
        #
        #   @return [Time, nil]
        optional :expires_at, Time, nil?: true

        # @!method initialize(id:, activations_used:, key:, status:, activations_limit: nil, expires_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::LicenseKeyGrant} for more details.
        #
        #   License-key delivery payload, present on grants for `license_key` entitlements.
        #   The grant's top-level `status` is the source of truth for the grant's lifecycle.
        #
        #   @param id [String] Identifier of the issued license key.
        #
        #   @param activations_used [Integer] Number of instances currently active. Activation increments it and
        #
        #   @param key [String] Issued license key.
        #
        #   @param status [Symbol, Dodopayments::Models::LicenseKeyStatus] Current status of the license key. Activation fails unless it is
        #
        #   @param activations_limit [Integer, nil] Maximum activations allowed by the entitlement, when set.
        #
        #   @param expires_at [Time, nil] When the license key expires, when applicable.
      end
    end
  end
end
