# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseKeyInstanceUpdateParams < Dodopayments::BaseModel
      # @!parse
      #   extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!parse
      #   # @param name [String]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(name:, request_options: {}, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
