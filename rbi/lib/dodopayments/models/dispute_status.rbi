# typed: strong

module Dodopayments
  module Models
    module DisputeStatus
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DisputeStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::DisputeStatus::TaggedSymbol) }

      DISPUTE_OPENED = T.let(:dispute_opened, Dodopayments::Models::DisputeStatus::OrSymbol)
      DISPUTE_EXPIRED = T.let(:dispute_expired, Dodopayments::Models::DisputeStatus::OrSymbol)
      DISPUTE_ACCEPTED = T.let(:dispute_accepted, Dodopayments::Models::DisputeStatus::OrSymbol)
      DISPUTE_CANCELLED = T.let(:dispute_cancelled, Dodopayments::Models::DisputeStatus::OrSymbol)
      DISPUTE_CHALLENGED = T.let(:dispute_challenged, Dodopayments::Models::DisputeStatus::OrSymbol)
      DISPUTE_WON = T.let(:dispute_won, Dodopayments::Models::DisputeStatus::OrSymbol)
      DISPUTE_LOST = T.let(:dispute_lost, Dodopayments::Models::DisputeStatus::OrSymbol)
    end
  end
end
