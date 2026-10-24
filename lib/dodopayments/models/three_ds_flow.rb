# frozen_string_literal: true

module Dodopayments
  module Models
    # How the cardholder completed the 3DS authentication.
    module ThreeDSFlow
      extend Dodopayments::Internal::Type::Enum

      CHALLENGE = :challenge
      FRICTIONLESS = :frictionless

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
