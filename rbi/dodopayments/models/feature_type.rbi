# typed: strong

module Dodopayments
  module Models
    # Type of capability a `feature_flag` entitlement confers.
    module FeatureType
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::FeatureType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BOOLEAN = T.let(:boolean, Dodopayments::FeatureType::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::FeatureType::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
