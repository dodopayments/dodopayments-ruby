# frozen_string_literal: true

module Dodopayments
  module Models
    module RefundStatus
      extend Dodopayments::Enum

      SUCCEEDED = :succeeded
      FAILED = :failed
      PENDING = :pending
      REVIEW = :review

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end
