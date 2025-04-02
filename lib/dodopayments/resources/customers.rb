# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      # @return [Dodopayments::Resources::Customers::CustomerPortal]
      attr_reader :customer_portal

      # @param params [Dodopayments::Models::CustomerCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :email
      #
      #   @option params [String] :name
      #
      #   @option params [String, nil] :phone_number
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Customer]
      def create(params)
        parsed, options = Dodopayments::Models::CustomerCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "customers",
          body: parsed,
          model: Dodopayments::Models::Customer,
          options: options
        )
      end

      # @param customer_id [String] Customer Id
      #
      # @param params [Dodopayments::Models::CustomerRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Customer]
      def retrieve(customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/%1$s", customer_id],
          model: Dodopayments::Models::Customer,
          options: params[:request_options]
        )
      end

      # @param customer_id [String] Customer Id
      #
      # @param params [Dodopayments::Models::CustomerUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :name
      #
      #   @option params [String, nil] :phone_number
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Customer]
      def update(customer_id, params = {})
        parsed, options = Dodopayments::Models::CustomerUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["customers/%1$s", customer_id],
          body: parsed,
          model: Dodopayments::Models::Customer,
          options: options
        )
      end

      # @param params [Dodopayments::Models::CustomerListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::Customer>]
      def list(params = {})
        parsed, options = Dodopayments::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::Customer,
          options: options
        )
      end

      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @customer_portal = Dodopayments::Resources::Customers::CustomerPortal.new(client: client)
      end
    end
  end
end
