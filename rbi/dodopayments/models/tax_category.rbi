# typed: strong

module Dodopayments
  module Models
    # Represents the different categories of taxation applicable to various products
    # and services.
    module TaxCategory
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::TaxCategory) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DIGITAL_PRODUCTS =
        T.let(:digital_products, Dodopayments::TaxCategory::TaggedSymbol)
      SAAS = T.let(:saas, Dodopayments::TaxCategory::TaggedSymbol)
      E_BOOK = T.let(:e_book, Dodopayments::TaxCategory::TaggedSymbol)
      EDTECH = T.let(:edtech, Dodopayments::TaxCategory::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::TaxCategory::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
