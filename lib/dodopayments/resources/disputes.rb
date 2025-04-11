# frozen_string_literal: true

module Dodopayments
  module Resources
    class Disputes
      # @overload retrieve(dispute_id, request_options: {})
      #
      # @param dispute_id [String]
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
      # @param created_at_gte [Time, nil]
      # @param created_at_lte [Time, nil]
      # @param customer_id [String, nil]
      # @param dispute_stage [Symbol, Dodopayments::Models::DisputeStage, nil]
      # @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
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
