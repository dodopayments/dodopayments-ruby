# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Licenses#deactivate
    class LicenseDeactivateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute license_key
      #
      #   @return [String]
      required :license_key, String

      # @!attribute license_key_instance_id
      #
      #   @return [String]
      required :license_key_instance_id, String

      # @!method initialize(license_key:, license_key_instance_id:, request_options: {})
      #   @param license_key [String]
      #   @param license_key_instance_id [String]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
