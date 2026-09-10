# typed: strong

module Dodopayments
  module Models
    module Customers
      # Why an email did not reach the recipient.
      #
      # The code is stable. `send_failed` is the catch-all: it covers every failure that
      # the other codes do not name.
      module EmailFailureCode
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::Customers::EmailFailureCode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MAILBOX_NOT_FOUND =
          T.let(
            :mailbox_not_found,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        ADDRESS_REJECTED =
          T.let(
            :address_rejected,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        ADDRESS_SUPPRESSED =
          T.let(
            :address_suppressed,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        MAILBOX_FULL =
          T.let(
            :mailbox_full,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        TEMPORARY_FAILURE =
          T.let(
            :temporary_failure,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        MESSAGE_TOO_LARGE =
          T.let(
            :message_too_large,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        MARKED_AS_SPAM =
          T.let(
            :marked_as_spam,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )
        SEND_FAILED =
          T.let(
            :send_failed,
            Dodopayments::Customers::EmailFailureCode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::Customers::EmailFailureCode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
