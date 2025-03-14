# frozen_string_literal: true

module DodoPayments
  module Resources
    class Customers
      # @return [DodoPayments::Resources::Customers::CustomerPortal]
      attr_reader :customer_portal

      # @param params [DodoPayments::Models::CustomerCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email
      #
      #   @option params [String] :name
      #
      #   @option params [String, nil] :phone_number
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Customer]
      def create(params)
        parsed, options = DodoPayments::Models::CustomerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customers",
          body: parsed,
          model: DodoPayments::Models::Customer,
          options: options
        )
      end

      # @param customer_id [String] Customer Id
      #
      # @param params [DodoPayments::Models::CustomerRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Customer]
      def retrieve(customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/%0s", customer_id],
          model: DodoPayments::Models::Customer,
          options: params[:request_options]
        )
      end

      # @param customer_id [String] Customer Id
      #
      # @param params [DodoPayments::Models::CustomerUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :name
      #
      #   @option params [String, nil] :phone_number
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Customer]
      def update(customer_id, params = {})
        parsed, options = DodoPayments::Models::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["customers/%0s", customer_id],
          body: parsed,
          model: DodoPayments::Models::Customer,
          options: options
        )
      end

      # @param params [DodoPayments::Models::CustomerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::Customer>]
      def list(params = {})
        parsed, options = DodoPayments::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::Customer,
          options: options
        )
      end

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
        @customer_portal = DodoPayments::Resources::Customers::CustomerPortal.new(client: client)
      end
    end
  end
end
