# frozen_string_literal: true

module Dodopayments
  module Models
    # The verdict. `allow` means the content passed. `deny` means block the content.
    # `flag` means apply your own judgement. It is not a soft deny.
    module ModerationDecision
      extend Dodopayments::Internal::Type::Enum

      ALLOW = :allow
      FLAG = :flag
      DENY = :deny

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
