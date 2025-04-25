# frozen_string_literal: true

module Dodopayments
  module Resources
    class Disputes
      # @overload retrieve(dispute_id, request_options: {})
      #
      # @param dispute_id [String] Dispute Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Dispute]
      #
      # @see Dodopayments::Models::DisputeRetrieveParams
      def retrieve(dispute_id, params = {})
        @client.request(
          method: :get,
          path: ["disputes/%1$s", dispute_id],
          model: Dodopayments::Models::Dispute,
          options: params[:request_options]
        )
      end

      # @overload list(created_at_gte: nil, created_at_lte: nil, customer_id: nil, dispute_stage: nil, dispute_status: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param created_at_gte [Time, nil] Get events after this created time
      #
      # @param created_at_lte [Time, nil] Get events created before this time
      #
      # @param customer_id [String, nil] Filter by customer_id
      #
      # @param dispute_stage [Symbol, Dodopayments::Models::DisputeStage, nil] Filter by dispute stage
      #
      # @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus, nil] Filter by dispute status
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Dispute>]
      #
      # @see Dodopayments::Models::DisputeListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::DisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "disputes",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::Dispute,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
