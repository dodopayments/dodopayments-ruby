# frozen_string_literal: true

module Dodopayments
  module Models
    module PaymentRefundStatus
      extend Dodopayments::Internal::Type::Enum

      PARTIAL = :partial
      FULL = :full

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
