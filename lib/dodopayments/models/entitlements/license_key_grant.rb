# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      class LicenseKeyGrant < Dodopayments::Internal::Type::BaseModel
        # @!attribute activations_used
        #   Number of activations consumed so far.
        #
        #   @return [Integer]
        required :activations_used, Integer

        # @!attribute key
        #   Issued license key.
        #
        #   @return [String]
        required :key, String

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

        # @!method initialize(activations_used:, key:, activations_limit: nil, expires_at: nil)
        #   License-key delivery payload, present on grants for `license_key` entitlements.
        #   The grant's top-level `status` is the source of truth for the grant's lifecycle.
        #
        #   @param activations_used [Integer] Number of activations consumed so far.
        #
        #   @param key [String] Issued license key.
        #
        #   @param activations_limit [Integer, nil] Maximum activations allowed by the entitlement, when set.
        #
        #   @param expires_at [Time, nil] When the license key expires, when applicable.
      end
    end
  end
end
