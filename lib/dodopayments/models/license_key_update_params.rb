# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeys#update
    class LicenseKeyUpdateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute activations_limit
      #   The updated activation limit for the license key. Use `null` to remove the
      #     limit, or omit this field to leave it unchanged.
      #
      #   @return [Integer, nil]
      optional :activations_limit, Integer, nil?: true

      # @!attribute disabled
      #   Indicates whether the license key should be disabled. A value of `true` disables
      #     the key, while `false` enables it. Omit this field to leave it unchanged.
      #
      #   @return [Boolean, nil]
      optional :disabled, Dodopayments::BooleanModel, nil?: true

      # @!attribute expires_at
      #   The updated expiration timestamp for the license key in UTC. Use `null` to
      #     remove the expiration date, or omit this field to leave it unchanged.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!parse
      #   # @param activations_limit [Integer, nil]
      #   # @param disabled [Boolean, nil]
      #   # @param expires_at [Time, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(activations_limit: nil, disabled: nil, expires_at: nil, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
