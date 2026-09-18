# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # Why an email did not reach the recipient.
      #
      # The code is stable. `send_failed` is the catch-all: it covers every failure that
      # the other codes do not name.
      module EmailFailureCode
        extend Dodopayments::Internal::Type::Enum

        MAILBOX_NOT_FOUND = :mailbox_not_found
        ADDRESS_REJECTED = :address_rejected
        ADDRESS_SUPPRESSED = :address_suppressed
        MAILBOX_FULL = :mailbox_full
        TEMPORARY_FAILURE = :temporary_failure
        MESSAGE_TOO_LARGE = :message_too_large
        MARKED_AS_SPAM = :marked_as_spam
        SEND_FAILED = :send_failed
        TEST_MODE_QUOTA_SPENT = :test_mode_quota_spent

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
