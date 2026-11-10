# typed: strong

module Dodopayments
  module Models
    module DunningState
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::DunningState) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NOT_STARTED =
        T.let(:not_started, Dodopayments::DunningState::TaggedSymbol)
      ACTIVE = T.let(:active, Dodopayments::DunningState::TaggedSymbol)
      PAUSED = T.let(:paused, Dodopayments::DunningState::TaggedSymbol)
      EXHAUSTED = T.let(:exhausted, Dodopayments::DunningState::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::DunningState::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
