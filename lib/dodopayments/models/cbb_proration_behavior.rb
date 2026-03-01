# frozen_string_literal: true

module Dodopayments
  module Models
    module CbbProrationBehavior
      extend Dodopayments::Internal::Type::Enum

      PRORATE = :prorate
      NO_PRORATE = :no_prorate

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
