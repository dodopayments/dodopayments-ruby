# frozen_string_literal: true

module Dodopayments
  module Models
    module CreditEntitlements
      module LedgerEntryType
        extend Dodopayments::Internal::Type::Enum

        CREDIT = :credit
        DEBIT = :debit

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
