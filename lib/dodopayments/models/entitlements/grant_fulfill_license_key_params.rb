# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Grants#fulfill_license_key
      class GrantFulfillLicenseKeyParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute grant_id
        #
        #   @return [String]
        required :grant_id, String

        # @!attribute key
        #   The license key value to deliver to the customer.
        #
        #   @return [String]
        required :key, String

        # @!attribute activations_limit
        #   Per-key activation limit. Defaults to the entitlement's license-key
        #   configuration.
        #
        #   @return [Integer, nil]
        optional :activations_limit, Integer, nil?: true

        # @!attribute expires_at
        #   When the key expires. Defaults to the duration in the entitlement's license-key
        #   configuration.
        #
        #   @return [Time, nil]
        optional :expires_at, Time, nil?: true

        # @!method initialize(grant_id:, key:, activations_limit: nil, expires_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::GrantFulfillLicenseKeyParams} for more
        #   details.
        #
        #   @param grant_id [String]
        #
        #   @param key [String] The license key value to deliver to the customer.
        #
        #   @param activations_limit [Integer, nil] Per-key activation limit. Defaults to the entitlement's license-key configuratio
        #
        #   @param expires_at [Time, nil] When the key expires. Defaults to the duration in the entitlement's license-key
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
