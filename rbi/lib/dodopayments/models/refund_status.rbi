# typed: strong

module Dodopayments
  module Models
    class RefundStatus < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      SUCCEEDED = :succeeded
      FAILED = :failed
      PENDING = :pending
      REVIEW = :review
    end
  end
end
