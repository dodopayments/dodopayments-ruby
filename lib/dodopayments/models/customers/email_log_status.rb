# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # The delivery status of one email.
      #
      # `sent` also covers an email that is still on its way. A status only becomes
      # `delivered`, `failed` or `complained` when the mail server answers.
      module EmailLogStatus
        extend Dodopayments::Internal::Type::Enum

        SENT = :sent
        DELIVERED = :delivered
        FAILED = :failed
        COMPLAINED = :complained
        BLOCKED = :blocked

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
