# typed: strong

module Dodopayments
  module Models
    module LicenseKeyStatus
      extend Dodopayments::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::LicenseKeyStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, Dodopayments::Models::LicenseKeyStatus::TaggedSymbol) }

      ACTIVE = T.let(:active, Dodopayments::Models::LicenseKeyStatus::OrSymbol)
      EXPIRED = T.let(:expired, Dodopayments::Models::LicenseKeyStatus::OrSymbol)
      DISABLED = T.let(:disabled, Dodopayments::Models::LicenseKeyStatus::OrSymbol)
    end
  end
end
