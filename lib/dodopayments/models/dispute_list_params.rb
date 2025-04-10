# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Disputes#list
    class DisputeListParams < Dodopayments::Internal::Type::BaseModel
      # @!parse
      #   extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

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
      #   @return [Symbol, Dodopayments::Models::DisputeStage, nil]
      optional :dispute_stage, enum: -> { Dodopayments::Models::DisputeStage }, nil?: true

      # @!attribute dispute_status
      #   Filter by dispute status
      #
      #   @return [Symbol, Dodopayments::Models::DisputeStatus, nil]
      optional :dispute_status, enum: -> { Dodopayments::Models::DisputeStatus }, nil?: true

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
      #   # @param dispute_stage [Symbol, Dodopayments::Models::DisputeStage, nil]
      #   # @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus, nil]
      #   # @param page_number [Integer, nil]
      #   # @param page_size [Integer, nil]
      #   # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
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

      # def initialize: (Hash | Dodopayments::Internal::Type::BaseModel) -> void
    end
  end
end
