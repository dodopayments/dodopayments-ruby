# frozen_string_literal: true

module Dodopayments
  module Models
    module LicenseKeyStatus
      extend Dodopayments::Enum

      ACTIVE = :active
      EXPIRED = :expired
      DISABLED = :disabled

      finalize!

      class << self
        # @!parse
        #   # @return [Array<Symbol>]
        #   def values; end
      end
    end
  end
end
