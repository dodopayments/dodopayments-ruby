# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Licenses#activate
    class LicenseActivateParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

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
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(license_key:, name:, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
