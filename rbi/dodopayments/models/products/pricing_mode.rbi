# typed: strong

module Dodopayments
  module Models
    module Products
      module PricingMode
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::Products::PricingMode) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BY_CURRENCY =
          T.let(:by_currency, Dodopayments::Products::PricingMode::TaggedSymbol)
        BY_COUNTRY =
          T.let(:by_country, Dodopayments::Products::PricingMode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::Products::PricingMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
