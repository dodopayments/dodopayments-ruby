# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseDeactivateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute license_key
      #
      #   @return [String]
      required :license_key, String

      # @!attribute license_key_instance_id
      #
      #   @return [String]
      required :license_key_instance_id, String

      # @!parse
      #   # @param license_key [String]
      #   # @param license_key_instance_id [String]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(license_key:, license_key_instance_id:, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
