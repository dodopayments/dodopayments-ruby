# frozen_string_literal: true

module Dodopayments
  module Models
    module DunningState
      extend Dodopayments::Internal::Type::Enum

      NOT_STARTED = :not_started
      ACTIVE = :active
      PAUSED = :paused
      EXHAUSTED = :exhausted

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
