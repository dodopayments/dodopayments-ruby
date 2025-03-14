# typed: strong

module Dodopayments
  module Models
    class DisputeStatus < Dodopayments::Enum
      abstract!

      DISPUTE_OPENED = :dispute_opened
      DISPUTE_EXPIRED = :dispute_expired
      DISPUTE_ACCEPTED = :dispute_accepted
      DISPUTE_CANCELLED = :dispute_cancelled
      DISPUTE_CHALLENGED = :dispute_challenged
      DISPUTE_WON = :dispute_won
      DISPUTE_LOST = :dispute_lost

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
