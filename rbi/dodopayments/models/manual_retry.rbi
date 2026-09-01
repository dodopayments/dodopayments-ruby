# typed: strong

module Dodopayments
  module Models
    class ManualRetry < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::ManualRetry, Dodopayments::Internal::AnyHash)
        end

      # The invoice the send charged.
      sig { returns(String) }
      attr_accessor :invoice_id

      # Always true on this route. Tells the row apart from an automatic attempt.
      sig { returns(T::Boolean) }
      attr_accessor :is_manual_retry

      # The payment row this send created.
      sig { returns(String) }
      attr_accessor :payment_id

      # Which attempt this send is, counting manual sends on the invoice.
      sig { returns(Integer) }
      attr_accessor :retry_attempt

      sig { returns(Integer) }
      attr_accessor :sends_allowed

      # Manual sends spent on this invoice, including this one.
      sig { returns(Integer) }
      attr_accessor :sends_used

      # When the next send becomes available. Null when no send is left.
      sig { returns(T.nilable(Time)) }
      attr_accessor :retry_available_at

      # Outcome of the charge. `processing` means the processor has not settled it yet,
      # and the payment webhooks report the result.
      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      sig do
        params(
          invoice_id: String,
          is_manual_retry: T::Boolean,
          payment_id: String,
          retry_attempt: Integer,
          sends_allowed: Integer,
          sends_used: Integer,
          retry_available_at: T.nilable(Time),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # The invoice the send charged.
        invoice_id:,
        # Always true on this route. Tells the row apart from an automatic attempt.
        is_manual_retry:,
        # The payment row this send created.
        payment_id:,
        # Which attempt this send is, counting manual sends on the invoice.
        retry_attempt:,
        sends_allowed:,
        # Manual sends spent on this invoice, including this one.
        sends_used:,
        # When the next send becomes available. Null when no send is left.
        retry_available_at: nil,
        # Outcome of the charge. `processing` means the processor has not settled it yet,
        # and the payment webhooks report the result.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            invoice_id: String,
            is_manual_retry: T::Boolean,
            payment_id: String,
            retry_attempt: Integer,
            sends_allowed: Integer,
            sends_used: Integer,
            retry_available_at: T.nilable(Time),
            status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end
