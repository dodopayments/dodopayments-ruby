# frozen_string_literal: true

module Dodopayments
  module Models
    # The kind of reference number that the card network or the bank gives to a
    # refund.
    module RefundNetworkReferenceType
      extend Dodopayments::Internal::Type::Enum

      ACQUIRER_REFERENCE_NUMBER = :acquirer_reference_number
      SYSTEM_TRACE_AUDIT_NUMBER = :system_trace_audit_number
      RETRIEVAL_REFERENCE_NUMBER = :retrieval_reference_number
      OTHER = :other

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
