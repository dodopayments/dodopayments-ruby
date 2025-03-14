# typed: strong

module Dodopayments
  module Models
    class DisputeStage < Dodopayments::Enum
      abstract!

      PRE_DISPUTE = :pre_dispute
      DISPUTE = :dispute
      PRE_ARBITRATION = :pre_arbitration

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
