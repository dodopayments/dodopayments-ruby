# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      class LicenseKeyGrant < Dodopayments::Internal::Type::BaseModel
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
        #   Nested representation of license-key grant fields. Present only when the grant's
        #   entitlement has `integration_type = 'license_key'` and a row exists in
        #   `license_keys`. The grant's top-level `status` is the source of truth for the
        #   grant's lifecycle — no per-license-key status is exposed here.
        #
        #   @param activations_used [Integer]
        #   @param key [String]
        #   @param activations_limit [Integer, nil]
        #   @param expires_at [Time, nil]
      end
    end
  end
end
