# typed: strong

module Dodopayments
  module Models
    # The result of the 3DS authentication of a card payment, as the processor reports
    # it.
    module ThreeDSStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::ThreeDSStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AUTHENTICATED =
        T.let(:authenticated, Dodopayments::ThreeDSStatus::TaggedSymbol)
      ATTEMPT_ACKNOWLEDGED =
        T.let(:attempt_acknowledged, Dodopayments::ThreeDSStatus::TaggedSymbol)
      EXEMPTED = T.let(:exempted, Dodopayments::ThreeDSStatus::TaggedSymbol)
      FAILED = T.let(:failed, Dodopayments::ThreeDSStatus::TaggedSymbol)
      NOT_SUPPORTED =
        T.let(:not_supported, Dodopayments::ThreeDSStatus::TaggedSymbol)
      PROCESSING_ERROR =
        T.let(:processing_error, Dodopayments::ThreeDSStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::ThreeDSStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
