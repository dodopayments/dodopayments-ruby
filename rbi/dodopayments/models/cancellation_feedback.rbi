# typed: strong

module Dodopayments
  module Models
    module CancellationFeedback
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::CancellationFeedback) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TOO_EXPENSIVE =
        T.let(:too_expensive, Dodopayments::CancellationFeedback::TaggedSymbol)
      MISSING_FEATURES =
        T.let(
          :missing_features,
          Dodopayments::CancellationFeedback::TaggedSymbol
        )
      SWITCHED_SERVICE =
        T.let(
          :switched_service,
          Dodopayments::CancellationFeedback::TaggedSymbol
        )
      UNUSED = T.let(:unused, Dodopayments::CancellationFeedback::TaggedSymbol)
      CUSTOMER_SERVICE =
        T.let(
          :customer_service,
          Dodopayments::CancellationFeedback::TaggedSymbol
        )
      LOW_QUALITY =
        T.let(:low_quality, Dodopayments::CancellationFeedback::TaggedSymbol)
      TOO_COMPLEX =
        T.let(:too_complex, Dodopayments::CancellationFeedback::TaggedSymbol)
      OTHER = T.let(:other, Dodopayments::CancellationFeedback::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Dodopayments::CancellationFeedback::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
