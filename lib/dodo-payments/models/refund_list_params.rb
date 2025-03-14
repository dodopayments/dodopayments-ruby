# frozen_string_literal: true

module DodoPayments
  module Models
    class RefundListParams < DodoPayments::BaseModel
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

      # @!attribute status
      #   Filter by status
      #
      #   @return [Symbol, DodoPayments::Models::RefundListParams::Status, nil]
      optional :status, enum: -> { DodoPayments::Models::RefundListParams::Status }, nil?: true

      # @!parse
      #   # @param created_at_gte [Time, nil]
      #   # @param created_at_lte [Time, nil]
      #   # @param customer_id [String, nil]
      #   # @param page_number [Integer, nil]
      #   # @param page_size [Integer, nil]
      #   # @param status [Symbol, DodoPayments::Models::RefundListParams::Status, nil]
      #   # @param request_options [DodoPayments::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(
      #     created_at_gte: nil,
      #     created_at_lte: nil,
      #     customer_id: nil,
      #     page_number: nil,
      #     page_size: nil,
      #     status: nil,
      #     request_options: {},
      #     **
      #   )
      #     super
      #   end

      # def initialize: (Hash | DodoPayments::BaseModel) -> void

      # @abstract
      #
      # Filter by status
      class Status < DodoPayments::Enum
        SUCCEEDED = :succeeded
        FAILED = :failed
        PENDING = :pending
        REVIEW = :review

        finalize!
      end
    end
  end
end
