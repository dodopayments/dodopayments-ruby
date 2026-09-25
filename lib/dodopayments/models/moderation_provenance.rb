# frozen_string_literal: true

module Dodopayments
  module Models
    # How a score was measured. `targeted` means a check for that one category
    # measured it. `broad` means the general check that covers all categories measured
    # it.
    module ModerationProvenance
      extend Dodopayments::Internal::Type::Enum

      TARGETED = :targeted
      BROAD = :broad

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
