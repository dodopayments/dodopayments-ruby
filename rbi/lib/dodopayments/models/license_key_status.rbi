# typed: strong

module Dodopayments
  module Models
    class LicenseKeyStatus < Dodopayments::Enum
      abstract!

      Value = type_template(:out) { {fixed: Symbol} }

      ACTIVE = :active
      EXPIRED = :expired
      DISABLED = :disabled
    end
  end
end
