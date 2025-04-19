# frozen_string_literal: true

module Dodopayments
  module Models
    module DisputeStage
      extend Dodopayments::Internal::Type::Enum

      PRE_DISPUTE = :pre_dispute
      DISPUTE = :dispute
      PRE_ARBITRATION = :pre_arbitration

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
