# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class DisputeStage < Dodopayments::Enum
      PRE_DISPUTE = :pre_dispute
      DISPUTE = :dispute
      PRE_ARBITRATION = :pre_arbitration

      finalize!
    end
  end
end
