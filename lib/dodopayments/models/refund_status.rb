# frozen_string_literal: true

module Dodopayments
  module Models
    module RefundStatus
      extend Dodopayments::Internal::Type::Enum

      SUCCEEDED = :succeeded
      FAILED = :failed
      PENDING = :pending
      REVIEW = :review

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
