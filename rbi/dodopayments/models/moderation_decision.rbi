# typed: strong

module Dodopayments
  module Models
    # The verdict. `allow` means the content passed. `deny` means block the content.
    # `flag` means apply your own judgement. It is not a soft deny.
    module ModerationDecision
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::ModerationDecision) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ALLOW = T.let(:allow, Dodopayments::ModerationDecision::TaggedSymbol)
      FLAG = T.let(:flag, Dodopayments::ModerationDecision::TaggedSymbol)
      DENY = T.let(:deny, Dodopayments::ModerationDecision::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::ModerationDecision::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
