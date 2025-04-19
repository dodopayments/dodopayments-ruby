# typed: strong

module Dodopayments
  module Models
    module DisputeStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::DisputeStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DISPUTE_OPENED = T.let(:dispute_opened, Dodopayments::Models::DisputeStatus::TaggedSymbol)
      DISPUTE_EXPIRED = T.let(:dispute_expired, Dodopayments::Models::DisputeStatus::TaggedSymbol)
      DISPUTE_ACCEPTED = T.let(:dispute_accepted, Dodopayments::Models::DisputeStatus::TaggedSymbol)
      DISPUTE_CANCELLED = T.let(:dispute_cancelled, Dodopayments::Models::DisputeStatus::TaggedSymbol)
      DISPUTE_CHALLENGED = T.let(:dispute_challenged, Dodopayments::Models::DisputeStatus::TaggedSymbol)
      DISPUTE_WON = T.let(:dispute_won, Dodopayments::Models::DisputeStatus::TaggedSymbol)
      DISPUTE_LOST = T.let(:dispute_lost, Dodopayments::Models::DisputeStatus::TaggedSymbol)

      sig { override.returns(T::Array[Dodopayments::Models::DisputeStatus::TaggedSymbol]) }
      def self.values; end
    end
  end
end
