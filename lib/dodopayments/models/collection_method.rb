# frozen_string_literal: true

module Dodopayments
  module Models
    module CollectionMethod
      extend Dodopayments::Internal::Type::Enum

      AUTO_CHARGE = :auto_charge
      MANUAL = :manual

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
