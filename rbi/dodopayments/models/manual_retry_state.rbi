# typed: strong

module Dodopayments
  module Models
    class ManualRetryState < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::ManualRetryState, Dodopayments::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :can_retry

      sig { returns(Integer) }
      attr_accessor :sends_allowed

      sig { returns(Integer) }
      attr_accessor :sends_used

      # The code `POST` would fail with. Null when `can_retry` is true.
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # When the next send becomes available. Null when no send is left, or when the
      # block has nothing to do with the cooldown.
      sig { returns(T.nilable(Time)) }
      attr_accessor :retry_available_at

      sig do
        params(
          can_retry: T::Boolean,
          sends_allowed: Integer,
          sends_used: Integer,
          reason: T.nilable(String),
          retry_available_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        can_retry:,
        sends_allowed:,
        sends_used:,
        # The code `POST` would fail with. Null when `can_retry` is true.
        reason: nil,
        # When the next send becomes available. Null when no send is left, or when the
        # block has nothing to do with the cooldown.
        retry_available_at: nil
      )
      end

      sig do
        override.returns(
          {
            can_retry: T::Boolean,
            sends_allowed: Integer,
            sends_used: Integer,
            reason: T.nilable(String),
            retry_available_at: T.nilable(Time)
          }
        )
      end
      def to_hash
      end
    end
  end
end
