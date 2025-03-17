# typed: strong

module Dodopayments
  module Models
    class DisputeStage < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      PRE_DISPUTE = :pre_dispute
      DISPUTE = :dispute
      PRE_ARBITRATION = :pre_arbitration
    end
  end
end
