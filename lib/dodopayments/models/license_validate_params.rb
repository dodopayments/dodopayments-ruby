# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Licenses#validate
    class LicenseValidateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute license_key
      #
      #   @return [String]
      required :license_key, String

      # @!attribute license_key_instance_id
      #
      #   @return [String, nil]
      optional :license_key_instance_id, String, nil?: true

      # @!method initialize(license_key:, license_key_instance_id: nil, request_options: {})
      #   @param license_key [String]
      #   @param license_key_instance_id [String, nil]
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
