# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class RefundStatus < Dodopayments::Enum
      SUCCEEDED = :succeeded
      FAILED = :failed
      PENDING = :pending
      REVIEW = :review

      finalize!
    end
  end
end
