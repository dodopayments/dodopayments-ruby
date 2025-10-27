# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CheckoutSessions#retrieve
    class CheckoutSessionStatus < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Id of the checkout session
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Created at timestamp
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer_email
      #   Customer email: prefers payment's customer, falls back to session
      #
      #   @return [String, nil]
      optional :customer_email, String, nil?: true

      # @!attribute customer_name
      #   Customer name: prefers payment's customer, falls back to session
      #
      #   @return [String, nil]
      optional :customer_name, String, nil?: true

      # @!attribute payment_id
      #   Id of the payment created by the checkout sessions.
      #
      #   Null if checkout sessions is still at the details collection stage.
      #
      #   @return [String, nil]
      optional :payment_id, String, nil?: true

      # @!attribute payment_status
      #   status of the payment.
      #
      #   Null if checkout sessions is still at the details collection stage.
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :payment_status, enum: -> { Dodopayments::IntentStatus }, nil?: true

      # @!method initialize(id:, created_at:, customer_email: nil, customer_name: nil, payment_id: nil, payment_status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CheckoutSessionStatus} for more details.
      #
      #   @param id [String] Id of the checkout session
      #
      #   @param created_at [Time] Created at timestamp
      #
      #   @param customer_email [String, nil] Customer email: prefers payment's customer, falls back to session
      #
      #   @param customer_name [String, nil] Customer name: prefers payment's customer, falls back to session
      #
      #   @param payment_id [String, nil] Id of the payment created by the checkout sessions.
      #
      #   @param payment_status [Symbol, Dodopayments::Models::IntentStatus, nil] status of the payment.
    end
  end
end
