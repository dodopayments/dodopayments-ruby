# frozen_string_literal: true

module Dodopayments
  module Models
    class LicenseValidateResponse < Dodopayments::BaseModel
      # @!attribute valid
      #
      #   @return [Boolean]
      required :valid, Dodopayments::BooleanModel

      # @!parse
      #   # @param valid [Boolean]
      #   #
      #   def initialize(valid:, **) = super

      # def initialize: (Hash | Dodopayments::BaseModel) -> void
    end
  end
end
