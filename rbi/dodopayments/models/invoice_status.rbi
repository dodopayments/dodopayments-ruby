# typed: strong

module Dodopayments
  module Models
    # The `message` of each variant is the label of the invoice document.
    module InvoiceStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::InvoiceStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      OPEN = T.let(:open, Dodopayments::InvoiceStatus::TaggedSymbol)
      PAID = T.let(:paid, Dodopayments::InvoiceStatus::TaggedSymbol)
      VOID = T.let(:void, Dodopayments::InvoiceStatus::TaggedSymbol)
      DRAFT = T.let(:draft, Dodopayments::InvoiceStatus::TaggedSymbol)
      PAST_DUE = T.let(:past_due, Dodopayments::InvoiceStatus::TaggedSymbol)
      UNCOLLECTABLE =
        T.let(:uncollectable, Dodopayments::InvoiceStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::InvoiceStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
