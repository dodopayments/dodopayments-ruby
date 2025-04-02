# typed: strong

module Dodopayments
  module Models
    module LicenseKeyStatus
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::LicenseKeyStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String, Dodopayments::Models::LicenseKeyStatus::TaggedSymbol) }

      ACTIVE = T.let(:active, Dodopayments::Models::LicenseKeyStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Dodopayments::Models::LicenseKeyStatus::TaggedSymbol)
      DISABLED = T.let(:disabled, Dodopayments::Models::LicenseKeyStatus::TaggedSymbol)

      class << self
        sig { override.returns(T::Array[Dodopayments::Models::LicenseKeyStatus::TaggedSymbol]) }
        def values
        end
      end
    end
  end
end
