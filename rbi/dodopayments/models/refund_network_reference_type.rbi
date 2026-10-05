# typed: strong

module Dodopayments
  module Models
    # The kind of reference number that the card network or the bank gives to a
    # refund.
    module RefundNetworkReferenceType
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::RefundNetworkReferenceType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACQUIRER_REFERENCE_NUMBER =
        T.let(
          :acquirer_reference_number,
          Dodopayments::RefundNetworkReferenceType::TaggedSymbol
        )
      SYSTEM_TRACE_AUDIT_NUMBER =
        T.let(
          :system_trace_audit_number,
          Dodopayments::RefundNetworkReferenceType::TaggedSymbol
        )
      RETRIEVAL_REFERENCE_NUMBER =
        T.let(
          :retrieval_reference_number,
          Dodopayments::RefundNetworkReferenceType::TaggedSymbol
        )
      OTHER =
        T.let(:other, Dodopayments::RefundNetworkReferenceType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::RefundNetworkReferenceType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
