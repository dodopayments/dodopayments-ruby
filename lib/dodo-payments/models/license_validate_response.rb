# frozen_string_literal: true

module DodoPayments
  module Models
    class LicenseValidateResponse < DodoPayments::BaseModel
      # @!attribute valid
      #
      #   @return [Boolean]
      required :valid, DodoPayments::BooleanModel

      # @!parse
      #   # @param valid [Boolean]
      #   #
      #   def initialize(valid:, **) = super

      # def initialize: (Hash | DodoPayments::BaseModel) -> void
    end
  end
end
