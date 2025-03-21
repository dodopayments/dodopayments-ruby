# typed: strong

module Dodopayments
  module Models
    module DisputeStage
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DisputeStage) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::DisputeStage::TaggedSymbol) }

      PRE_DISPUTE = T.let(:pre_dispute, Dodopayments::Models::DisputeStage::OrSymbol)
      DISPUTE = T.let(:dispute, Dodopayments::Models::DisputeStage::OrSymbol)
      PRE_ARBITRATION = T.let(:pre_arbitration, Dodopayments::Models::DisputeStage::OrSymbol)
    end
  end
end
