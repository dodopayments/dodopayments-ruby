# typed: strong

module Dodopayments
  module Models
    module CollectionMethod
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::CollectionMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AUTO_CHARGE =
        T.let(:auto_charge, Dodopayments::CollectionMethod::TaggedSymbol)
      MANUAL = T.let(:manual, Dodopayments::CollectionMethod::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::CollectionMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
