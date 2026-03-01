# frozen_string_literal: true

module Dodopayments
  module Models
    module Conjunction
      extend Dodopayments::Internal::Type::Enum

      AND = :and
      OR = :or

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
