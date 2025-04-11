# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Licenses#validate
    class LicenseValidateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute valid
      #
      #   @return [Boolean]
      required :valid, Dodopayments::Internal::Type::BooleanModel

      # @!parse
      #   # @param valid [Boolean]
      #   #
      #   def initialize(valid:, **) = super

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
