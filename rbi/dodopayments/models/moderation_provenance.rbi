# typed: strong

module Dodopayments
  module Models
    # How a score was measured. `targeted` means a check for that one category
    # measured it. `broad` means the general check that covers all categories measured
    # it.
    module ModerationProvenance
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::ModerationProvenance) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TARGETED =
        T.let(:targeted, Dodopayments::ModerationProvenance::TaggedSymbol)
      BROAD = T.let(:broad, Dodopayments::ModerationProvenance::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::ModerationProvenance::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
