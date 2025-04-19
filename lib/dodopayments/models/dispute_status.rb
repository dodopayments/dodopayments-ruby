# frozen_string_literal: true

module Dodopayments
  module Models
    module DisputeStatus
      extend Dodopayments::Internal::Type::Enum

      DISPUTE_OPENED = :dispute_opened
      DISPUTE_EXPIRED = :dispute_expired
      DISPUTE_ACCEPTED = :dispute_accepted
      DISPUTE_CANCELLED = :dispute_cancelled
      DISPUTE_CHALLENGED = :dispute_challenged
      DISPUTE_WON = :dispute_won
      DISPUTE_LOST = :dispute_lost

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
