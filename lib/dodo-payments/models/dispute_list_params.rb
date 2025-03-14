# frozen_string_literal: true

module DodoPayments
  module Models
    class DisputeListParams < DodoPayments::BaseModel
      # @!parse
      #   extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # @!attribute created_at_gte
      #   Get events after this created time
      #
      #   @return [Time, nil]
      optional :created_at_gte, Time, nil?: true

      # @!attribute created_at_lte
      #   Get events created before this time
      #
      #   @return [Time, nil]
      optional :created_at_lte, Time, nil?: true

      # @!attribute customer_id
      #   Filter by customer_id
      #
      #   @return [String, nil]
      optional :customer_id, String, nil?: true

      # @!attribute dispute_stage
      #   Filter by dispute stage
      #
      #   @return [Symbol, DodoPayments::Models::DisputeListParams::DisputeStage, nil]
      optional :dispute_stage, enum: -> { DodoPayments::Models::DisputeListParams::DisputeStage }, nil?: true

      # @!attribute dispute_status
      #   Filter by dispute status
      #
      #   @return [Symbol, DodoPayments::Models::DisputeListParams::DisputeStatus, nil]
      optional :dispute_status, enum: -> { DodoPayments::Models::DisputeListParams::DisputeStatus }, nil?: true

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer, nil?: true

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer, nil?: true

      # @!parse
      #   # @param created_at_gte [Time, nil]
      #   # @param created_at_lte [Time, nil]
      #   # @param customer_id [String, nil]
      #   # @param dispute_stage [Symbol, DodoPayments::Models::DisputeListParams::DisputeStage, nil]
      #   # @param dispute_status [Symbol, DodoPayments::Models::DisputeListParams::DisputeStatus, nil]
      #   # @param page_number [Integer, nil]
      #   # @param page_size [Integer, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     created_at_gte: nil,
      #     created_at_lte: nil,
      #     customer_id: nil,
      #     dispute_stage: nil,
      #     dispute_status: nil,
      #     page_number: nil,
      #     page_size: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      #
      # Filter by dispute stage
      class DisputeStage < DodoPayments::Enum
        PRE_DISPUTE = :pre_dispute
        DISPUTE = :dispute
        PRE_ARBITRATION = :pre_arbitration

        finalize!
      end

      # @abstract
      #
      # Filter by dispute status
      class DisputeStatus < DodoPayments::Enum
        DISPUTE_OPENED = :dispute_opened
        DISPUTE_EXPIRED = :dispute_expired
        DISPUTE_ACCEPTED = :dispute_accepted
        DISPUTE_CANCELLED = :dispute_cancelled
        DISPUTE_CHALLENGED = :dispute_challenged
        DISPUTE_WON = :dispute_won
        DISPUTE_LOST = :dispute_lost

        finalize!
      end
    end
  end
end
