# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Disputes#list
    class DisputeListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute created_at_gte
      #   Get events after this created time
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time

      # @!attribute created_at_lte
      #   Get events created before this time
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time

      # @!attribute customer_id
      #   Filter by customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String

      # @!attribute dispute_stage
      #   Filter by dispute stage
      #
      #   @return [Symbol, Dodopayments::Models::DisputeListParams::DisputeStage, nil]
      optional :dispute_stage, enum: -> { Dodopayments::DisputeListParams::DisputeStage }

      # @!attribute dispute_status
      #   Filter by dispute status
      #
      #   @return [Symbol, Dodopayments::Models::DisputeListParams::DisputeStatus, nil]
      optional :dispute_status, enum: -> { Dodopayments::DisputeListParams::DisputeStatus }

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(created_at_gte: nil, created_at_lte: nil, customer_id: nil, dispute_stage: nil, dispute_status: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param created_at_gte [Time] Get events after this created time
      #
      #   @param created_at_lte [Time] Get events created before this time
      #
      #   @param customer_id [String] Filter by customer_id
      #
      #   @param dispute_stage [Symbol, Dodopayments::Models::DisputeListParams::DisputeStage] Filter by dispute stage
      #
      #   @param dispute_status [Symbol, Dodopayments::Models::DisputeListParams::DisputeStatus] Filter by dispute status
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      # Filter by dispute stage
      module DisputeStage
        extend Dodopayments::Internal::Type::Enum

        PRE_DISPUTE = :pre_dispute
        DISPUTE = :dispute
        PRE_ARBITRATION = :pre_arbitration

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by dispute status
      module DisputeStatus
        extend Dodopayments::Internal::Type::Enum

        DISPUTE_OPENED = :dispute_opened
        DISPUTE_EXPIRED = :dispute_expired
        DISPUTE_ACCEPTED = :dispute_accepted
        DISPUTE_CANCELLED = :dispute_cancelled
        DISPUTE_CHALLENGED = :dispute_challenged
        DISPUTE_WON = :dispute_won
        DISPUTE_LOST = :dispute_lost

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
