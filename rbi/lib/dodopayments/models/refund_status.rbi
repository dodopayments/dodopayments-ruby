# typed: strong

module Dodopayments
  module Models
    class RefundStatus < Dodopayments::Enum
      abstract!

      SUCCEEDED = :succeeded
      FAILED = :failed
      PENDING = :pending
      REVIEW = :review

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
