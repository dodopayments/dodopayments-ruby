# typed: strong

module Dodopayments
  module Models
    module CbbProrationBehavior
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::CbbProrationBehavior) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRORATE =
        T.let(:prorate, Dodopayments::CbbProrationBehavior::TaggedSymbol)
      NO_PRORATE =
        T.let(:no_prorate, Dodopayments::CbbProrationBehavior::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::CbbProrationBehavior::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
