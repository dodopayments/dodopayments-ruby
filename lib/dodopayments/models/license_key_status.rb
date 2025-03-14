# frozen_string_literal: true

module Dodopayments
  module Models
    # @abstract
    class LicenseKeyStatus < Dodopayments::Enum
      ACTIVE = :active
      EXPIRED = :expired
      DISABLED = :disabled

      finalize!
    end
  end
end
