# typed: strong

module Dodopayments
  module Models
    module DisputeStage
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DisputeStage) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PRE_DISPUTE = T.let(:pre_dispute, Dodopayments::Models::DisputeStage::TaggedSymbol)
      DISPUTE = T.let(:dispute, Dodopayments::Models::DisputeStage::TaggedSymbol)
      PRE_ARBITRATION = T.let(:pre_arbitration, Dodopayments::Models::DisputeStage::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::DisputeStage::TaggedSymbol]) }
      def self.values; end
    end
  end
end
