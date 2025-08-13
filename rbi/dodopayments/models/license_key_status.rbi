# typed: strong

module Dodopayments
  module Models
    module LicenseKeyStatus
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::LicenseKeyStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, Dodopayments::LicenseKeyStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Dodopayments::LicenseKeyStatus::TaggedSymbol)
      DISABLED = T.let(:disabled, Dodopayments::LicenseKeyStatus::TaggedSymbol)

      sig do
        override.returns(T::Array[Dodopayments::LicenseKeyStatus::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
