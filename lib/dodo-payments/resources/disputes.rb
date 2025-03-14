# frozen_string_literal: true

module DodoPayments
  module Resources
    class Disputes
      # @param dispute_id [String] Dispute Id
      #
      # @param params [DodoPayments::Models::DisputeRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Dispute]
      def retrieve(dispute_id, params = {})
        @client.request(
          method: :get,
          path: ["disputes/%0s", dispute_id],
          model: DodoPayments::Models::Dispute,
          options: params[:request_options]
        )
      end

      # @param params [DodoPayments::Models::DisputeListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Time, nil] :created_at_gte Get events after this created time
      #
      #   @option params [Time, nil] :created_at_lte Get events created before this time
      #
      #   @option params [String, nil] :customer_id Filter by customer_id
      #
      #   @option params [Symbol, DodoPayments::Models::DisputeListParams::DisputeStage, nil] :dispute_stage Filter by dispute stage
      #
      #   @option params [Symbol, DodoPayments::Models::DisputeListParams::DisputeStatus, nil] :dispute_status Filter by dispute status
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::Dispute>]
      def list(params = {})
        parsed, options = DodoPayments::Models::DisputeListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "disputes",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::Dispute,
          options: options
        )
      end

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
