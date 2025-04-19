# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Licenses#validate
    class LicenseValidateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute valid
      #
      #   @return [Boolean]
      required :valid, Dodopayments::Internal::Type::Boolean

      # @!method initialize(valid:)
      #   @param valid [Boolean]
    end
  end
end
