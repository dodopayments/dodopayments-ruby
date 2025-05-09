# typed: strong

module Dodopayments
  module Models
    # Represents the different categories of taxation applicable to various products
    # and services.
    module TaxCategory
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::TaxCategory) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DIGITAL_PRODUCTS = T.let(:digital_products, Dodopayments::Models::TaxCategory::TaggedSymbol)
      SAAS = T.let(:saas, Dodopayments::Models::TaxCategory::TaggedSymbol)
      E_BOOK = T.let(:e_book, Dodopayments::Models::TaxCategory::TaggedSymbol)
      EDTECH = T.let(:edtech, Dodopayments::Models::TaxCategory::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::TaxCategory::TaggedSymbol]) }
      def self.values; end
    end
  end
end
