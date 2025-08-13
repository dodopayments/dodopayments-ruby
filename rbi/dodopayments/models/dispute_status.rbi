# typed: strong

module Dodopayments
  module Models
    module DisputeStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::DisputeStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DISPUTE_OPENED =
        T.let(:dispute_opened, Dodopayments::DisputeStatus::TaggedSymbol)
      DISPUTE_EXPIRED =
        T.let(:dispute_expired, Dodopayments::DisputeStatus::TaggedSymbol)
      DISPUTE_ACCEPTED =
        T.let(:dispute_accepted, Dodopayments::DisputeStatus::TaggedSymbol)
      DISPUTE_CANCELLED =
        T.let(:dispute_cancelled, Dodopayments::DisputeStatus::TaggedSymbol)
      DISPUTE_CHALLENGED =
        T.let(:dispute_challenged, Dodopayments::DisputeStatus::TaggedSymbol)
      DISPUTE_WON =
        T.let(:dispute_won, Dodopayments::DisputeStatus::TaggedSymbol)
      DISPUTE_LOST =
        T.let(:dispute_lost, Dodopayments::DisputeStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::DisputeStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
