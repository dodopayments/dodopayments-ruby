# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseKeyInstanceUpdateParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param name [String]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name:, request_options: {}, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
