# frozen_string_literal: true

module Dodopayments
  module Models
    module DisputeStage
      extend Dodopayments::Internal::Type::Enum

      PRE_DISPUTE = :pre_dispute
      DISPUTE = :dispute
      PRE_ARBITRATION = :pre_arbitration

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end
