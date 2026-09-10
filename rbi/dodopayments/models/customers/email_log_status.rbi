# typed: strong

module Dodopayments
  module Models
    module Customers
      # The delivery status of one email.
      #
      # `sent` also covers an email that is still on its way. A status only becomes
      # `delivered`, `failed` or `complained` when the mail server answers.
      module EmailLogStatus
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::Customers::EmailLogStatus)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SENT =
          T.let(:sent, Dodopayments::Customers::EmailLogStatus::TaggedSymbol)
        DELIVERED =
          T.let(
            :delivered,
            Dodopayments::Customers::EmailLogStatus::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Dodopayments::Customers::EmailLogStatus::TaggedSymbol)
        COMPLAINED =
          T.let(
            :complained,
            Dodopayments::Customers::EmailLogStatus::TaggedSymbol
          )
        BLOCKED =
          T.let(:blocked, Dodopayments::Customers::EmailLogStatus::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::Customers::EmailLogStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
