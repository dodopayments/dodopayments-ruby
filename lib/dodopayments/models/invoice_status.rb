# frozen_string_literal: true

module Dodopayments
  module Models
    # The `message` of each variant is the label of the invoice document.
    module InvoiceStatus
      extend Dodopayments::Internal::Type::Enum

      OPEN = :open
      PAID = :paid
      VOID = :void
      DRAFT = :draft
      PAST_DUE = :past_due
      UNCOLLECTABLE = :uncollectable

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
