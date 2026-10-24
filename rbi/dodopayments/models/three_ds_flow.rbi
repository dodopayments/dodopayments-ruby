# typed: strong

module Dodopayments
  module Models
    # How the cardholder completed the 3DS authentication.
    module ThreeDSFlow
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::ThreeDSFlow) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CHALLENGE = T.let(:challenge, Dodopayments::ThreeDSFlow::TaggedSymbol)
      FRICTIONLESS =
        T.let(:frictionless, Dodopayments::ThreeDSFlow::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::ThreeDSFlow::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
