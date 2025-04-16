# frozen_string_literal: true

module Dodopayments
  module Models
    module LicenseKeyStatus
      extend Dodopayments::Internal::Type::Enum

      ACTIVE = :active
      EXPIRED = :expired
      DISABLED = :disabled

      finalize!

      # @!parse
      #   # @return [Array<Symbol>]
      #   def self.values; end
    end
  end
end
