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

      # The number of the queued automatic retry, starting at 1.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :automatic_retry_number

      # The number of automatic retries that the current configuration plans for this
      # invoice. It is never less than `automatic_retry_number`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :automatic_retry_total

      # When the next automatic retry on this invoice is scheduled. Null when no
      # automatic retry is queued or automatic retries are disabled.
      sig { returns(T.nilable(Time)) }
      attr_accessor :next_automatic_retry_at

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
          automatic_retry_number: T.nilable(Integer),
          automatic_retry_total: T.nilable(Integer),
          next_automatic_retry_at: T.nilable(Time),
          reason: T.nilable(String),
          retry_available_at: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        can_retry:,
        sends_allowed:,
        sends_used:,
        # The number of the queued automatic retry, starting at 1.
        automatic_retry_number: nil,
        # The number of automatic retries that the current configuration plans for this
        # invoice. It is never less than `automatic_retry_number`.
        automatic_retry_total: nil,
        # When the next automatic retry on this invoice is scheduled. Null when no
        # automatic retry is queued or automatic retries are disabled.
        next_automatic_retry_at: nil,
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
            automatic_retry_number: T.nilable(Integer),
            automatic_retry_total: T.nilable(Integer),
            next_automatic_retry_at: T.nilable(Time),
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
