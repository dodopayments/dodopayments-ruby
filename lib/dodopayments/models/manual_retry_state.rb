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

      # @!method initialize(can_retry:, sends_allowed:, sends_used:, reason: nil, retry_available_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ManualRetryState} for more details.
      #
      #   @param can_retry [Boolean]
      #
      #   @param sends_allowed [Integer]
      #
      #   @param sends_used [Integer]
      #
      #   @param reason [String, nil] The code `POST` would fail with. Null when `can_retry` is true.
      #
      #   @param retry_available_at [Time, nil] When the next send becomes available. Null when no send is left, or when
    end
  end
end
