# typed: strong

module Dodopayments
  module Models
    class DisputeStatus < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      DISPUTE_OPENED = :dispute_opened
      DISPUTE_EXPIRED = :dispute_expired
      DISPUTE_ACCEPTED = :dispute_accepted
      DISPUTE_CANCELLED = :dispute_cancelled
      DISPUTE_CHALLENGED = :dispute_challenged
      DISPUTE_WON = :dispute_won
      DISPUTE_LOST = :dispute_lost
    end
  end
end
