# frozen_string_literal: true

module Dodopayments
  module Models
    module LicenseKeyStatus
      extend Dodopayments::Internal::Type::Enum

      ACTIVE = :active
      EXPIRED = :expired
      DISABLED = :disabled

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
