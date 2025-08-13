# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeys#update
    class LicenseKeyUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute activations_limit
      #   The updated activation limit for the license key. Use `null` to remove the
      #   limit, or omit this field to leave it unchanged.
      #
      #   @return [Integer, nil]
      optional :activations_limit, Integer, nil?: true

      # @!attribute disabled
      #   Indicates whether the license key should be disabled. A value of `true` disables
      #   the key, while `false` enables it. Omit this field to leave it unchanged.
      #
      #   @return [Boolean, nil]
      optional :disabled, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!attribute expires_at
      #   The updated expiration timestamp for the license key in UTC. Use `null` to
      #   remove the expiration date, or omit this field to leave it unchanged.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!method initialize(activations_limit: nil, disabled: nil, expires_at: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::LicenseKeyUpdateParams} for more details.
      #
      #   @param activations_limit [Integer, nil] The updated activation limit for the license key.
      #
      #   @param disabled [Boolean, nil] Indicates whether the license key should be disabled.
      #
      #   @param expires_at [Time, nil] The updated expiration timestamp for the license key in UTC.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
