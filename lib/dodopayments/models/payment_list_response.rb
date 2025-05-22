# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Payments#list
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute customer
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute metadata
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute payment_id
      #
      #   @return [String]
      required :payment_id, String

      # @!attribute total_amount
      #
      #   @return [Integer]
      required :total_amount, Integer

      # @!attribute payment_method
      #
      #   @return [String, nil]
      optional :payment_method, String, nil?: true

      # @!attribute payment_method_type
      #
      #   @return [String, nil]
      optional :payment_method_type, String, nil?: true

      # @!attribute status
      #
      #   @return [Symbol, Dodopayments::Models::IntentStatus, nil]
      optional :status, enum: -> { Dodopayments::IntentStatus }, nil?: true

      # @!attribute subscription_id
      #
      #   @return [String, nil]
      optional :subscription_id, String, nil?: true

      # @!method initialize(created_at:, currency:, customer:, metadata:, payment_id:, total_amount:, payment_method: nil, payment_method_type: nil, status: nil, subscription_id: nil)
      #   @param created_at [Time]
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails]
      #   @param metadata [Hash{Symbol=>String}]
      #   @param payment_id [String]
      #   @param total_amount [Integer]
      #   @param payment_method [String, nil]
      #   @param payment_method_type [String, nil]
      #   @param status [Symbol, Dodopayments::Models::IntentStatus, nil]
      #   @param subscription_id [String, nil]
    end
  end
end
