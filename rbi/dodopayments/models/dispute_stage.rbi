# typed: strong

module Dodopayments
  module Models
    module DisputeStage
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::DisputeStage) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRE_DISPUTE =
        T.let(:pre_dispute, Dodopayments::DisputeStage::TaggedSymbol)
      DISPUTE = T.let(:dispute, Dodopayments::DisputeStage::TaggedSymbol)
      PRE_ARBITRATION =
        T.let(:pre_arbitration, Dodopayments::DisputeStage::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::DisputeStage::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
