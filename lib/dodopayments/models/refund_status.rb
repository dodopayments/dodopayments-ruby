# frozen_string_literal: true

module Dodopayments
  module Models
    module RefundStatus
      extend Dodopayments::Internal::Type::Enum

      SUCCEEDED = :succeeded
      FAILED = :failed
      PENDING = :pending
      REVIEW = :review

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
