# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseActivateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute license_key
      #
      #   @return [String]
      required :license_key, String

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param license_key [String]
      #   # @param name [String]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(license_key:, name:, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
