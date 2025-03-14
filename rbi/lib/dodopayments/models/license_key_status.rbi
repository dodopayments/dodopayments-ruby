# typed: strong

module Dodopayments
  module Models
    class LicenseKeyStatus < Dodopayments::Enum
      abstract!

      ACTIVE = :active
      EXPIRED = :expired
      DISABLED = :disabled

      class << self
        sig { override.returns(T::Array[Symbol]) }
        def values
        end
      end
    end
  end
end
