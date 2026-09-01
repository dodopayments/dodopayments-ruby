# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#retry_
    class ManualRetry < Dodopayments::Internal::Type::BaseModel
      # @!attribute invoice_id
      #   The invoice the send charged.
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute is_manual_retry
      #   Always true on this route. Tells the row apart from an automatic attempt.
      #
      #   @return [Boolean]
      required :is_manual_retry, Dodopayments::Internal::Type::Boolean

      # @!attribute payment_id
      #   The payment row this send created.
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute retry_attempt
      #   Which attempt this send is, counting manual sends on the invoice.
      #
      #   @return [Integer]
      required :retry_attempt, Integer

      # @!attribute sends_allowed
      #
      #   @return [Integer]
      required :sends_allowed, Integer

      # @!attribute sends_used
      #   Manual sends spent on this invoice, including this one.
      #
      #   @return [Integer]
      required :sends_used, Integer

      # @!attribute retry_available_at
      #   When the next send becomes available. Null when no send is left.
      #
      #   @return [Time, nil]
      optional :retry_available_at, Time, nil?: true

      # @!attribute status
      #   Outcome of the charge. `processing` means the processor has not settled it yet,
      #   and the payment webhooks report the result.
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::IntentStatus }, nil?: true

      # @!method initialize(invoice_id:, is_manual_retry:, payment_id:, retry_attempt:, sends_allowed:, sends_used:, retry_available_at: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ManualRetry} for more details.
      #
      #   @param invoice_id [String] The invoice the send charged.
      #
      #   @param is_manual_retry [Boolean] Always true on this route. Tells the row apart from an automatic attempt.
      #
      #   @param payment_id [String] The payment row this send created.
      #
      #   @param retry_attempt [Integer] Which attempt this send is, counting manual sends on the invoice.
      #
      #   @param sends_allowed [Integer]
      #
      #   @param sends_used [Integer] Manual sends spent on this invoice, including this one.
      #
      #   @param retry_available_at [Time, nil] When the next send becomes available. Null when no send is left.
      #
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil] Outcome of the charge. `processing` means the processor has not settled it
    end
  end
end
