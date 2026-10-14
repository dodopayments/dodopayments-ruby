# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retrieve_retry_state
    class ManualRetryState < Dodopayments::Internal::Type::BaseModel
      # @!attribute can_retry
      #
      #   @return [Boolean]
      required :can_retry, Dodopayments::Internal::Type::Boolean

      # @!attribute sends_allowed
      #
      #   @return [Integer]
      required :sends_allowed, Integer

      # @!attribute sends_used
      #
      #   @return [Integer]
      required :sends_used, Integer

      # @!attribute automatic_retry_number
      #   The number of the queued automatic retry, starting at 1.
      #
      #   @return [Integer, nil]
      optional :automatic_retry_number, Integer, nil?: true

      # @!attribute automatic_retry_total
      #   The number of automatic retries that the current configuration plans for this
      #   invoice. It is never less than `automatic_retry_number`.
      #
      #   @return [Integer, nil]
      optional :automatic_retry_total, Integer, nil?: true

      # @!attribute next_automatic_retry_at
      #   When the next automatic retry on this invoice is scheduled. Null when no
      #   automatic retry is queued or automatic retries are disabled.
      #
      #   @return [Time, nil]
      optional :next_automatic_retry_at, Time, nil?: true

      # @!attribute reason
      #   The code `POST` would fail with. Null when `can_retry` is true.
      #
      #   @return [String, nil]
      optional :reason, String, nil?: true

      # @!attribute retry_available_at
      #   When the next send becomes available. Null when no send is left, or when the
      #   block has nothing to do with the cooldown.
      #
      #   @return [Time, nil]
      optional :retry_available_at, Time, nil?: true

      # @!method initialize(can_retry:, sends_allowed:, sends_used:, automatic_retry_number: nil, automatic_retry_total: nil, next_automatic_retry_at: nil, reason: nil, retry_available_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ManualRetryState} for more details.
      #
      #   @param can_retry [Boolean]
      #
      #   @param sends_allowed [Integer]
      #
      #   @param sends_used [Integer]
      #
      #   @param automatic_retry_number [Integer, nil] The number of the queued automatic retry, starting at 1.
      #
      #   @param automatic_retry_total [Integer, nil] The number of automatic retries that the current configuration plans for
      #
      #   @param next_automatic_retry_at [Time, nil] When the next automatic retry on this invoice is scheduled. Null when no
      #
      #   @param reason [String, nil] The code `POST` would fail with. Null when `can_retry` is true.
      #
      #   @param retry_available_at [Time, nil] When the next send becomes available. Null when no send is left, or when
    end
  end
end
