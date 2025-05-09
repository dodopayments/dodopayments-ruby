# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payouts#list
    class PayoutListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute amount
      #   The total amount of the payout.
      #
      #   @return [Integer]
      required :amount, Integer

      # @!attribute business_id
      #   The unique identifier of the business associated with the payout.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute chargebacks
      #   The total value of chargebacks associated with the payout.
      #
      #   @return [Integer]
      required :chargebacks, Integer

      # @!attribute created_at
      #   The timestamp when the payout was created, in UTC.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute fee
      #   The fee charged for processing the payout.
      #
      #   @return [Integer]
      required :fee, Integer

      # @!attribute payment_method
      #   The payment method used for the payout (e.g., bank transfer, card, etc.).
      #
      #   @return [String]
      required :payment_method, String

      # @!attribute payout_id
      #   The unique identifier of the payout.
      #
      #   @return [String]
      required :payout_id, String

      # @!attribute refunds
      #   The total value of refunds associated with the payout.
      #
      #   @return [Integer]
      required :refunds, Integer

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::PayoutListResponse::Status]
      required :status, enum: -> { Dodopayments::Models::PayoutListResponse::Status }

      # @!attribute tax
      #   The tax applied to the payout.
      #
      #   @return [Integer]
      required :tax, Integer

      # @!attribute updated_at
      #   The timestamp when the payout was last updated, in UTC.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute name
      #   The name of the payout recipient or purpose.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute payout_document_url
      #   The URL of the document associated with the payout.
      #
      #   @return [String, nil]
      optional :payout_document_url, String, nil?: true

      # @!attribute remarks
      #   Any additional remarks or notes associated with the payout.
      #
      #   @return [String, nil]
      optional :remarks, String, nil?: true

      # @!method initialize(amount:, business_id:, chargebacks:, created_at:, currency:, fee:, payment_method:, payout_id:, refunds:, status:, tax:, updated_at:, name: nil, payout_document_url: nil, remarks: nil)
      #   @param amount [Integer] The total amount of the payout.
      #
      #   @param business_id [String] The unique identifier of the business associated with the payout.
      #
      #   @param chargebacks [Integer] The total value of chargebacks associated with the payout.
      #
      #   @param created_at [Time] The timestamp when the payout was created, in UTC.
      #
      #   @param currency [Symbol, Dodopayments::Currency]
      #
      #   @param fee [Integer] The fee charged for processing the payout.
      #
      #   @param payment_method [String] The payment method used for the payout (e.g., bank transfer, card, etc.).
      #
      #   @param payout_id [String] The unique identifier of the payout.
      #
      #   @param refunds [Integer] The total value of refunds associated with the payout.
      #
      #   @param status [Symbol, Dodopayments::Models::PayoutListResponse::Status]
      #
      #   @param tax [Integer] The tax applied to the payout.
      #
      #   @param updated_at [Time] The timestamp when the payout was last updated, in UTC.
      #
      #   @param name [String, nil] The name of the payout recipient or purpose.
      #
      #   @param payout_document_url [String, nil] The URL of the document associated with the payout.
      #
      #   @param remarks [String, nil] Any additional remarks or notes associated with the payout.

      # @see Dodopayments::Models::PayoutListResponse#status
      module Status
        extend Dodopayments::Internal::Type::Enum

        NOT_INITIATED = :not_initiated
        IN_PROGRESS = :in_progress
        ON_HOLD = :on_hold
        FAILED = :failed
        SUCCESS = :success

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
