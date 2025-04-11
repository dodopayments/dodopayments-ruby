# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      # @return [Dodopayments::Resources::Customers::CustomerPortal]
      attr_reader :customer_portal

      # @overload create(email:, name:, phone_number: nil, request_options: {})
      #
      # @param email [String]
      # @param name [String]
      # @param phone_number [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Customer]
      #
      # @see Dodopayments::Models::CustomerCreateParams
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

      # @overload retrieve(customer_id, request_options: {})
      #
      # @param customer_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Customer]
      #
      # @see Dodopayments::Models::CustomerRetrieveParams
      def retrieve(customer_id, params = {})
        @client.request(
          method: :get,
          path: ["customers/%1$s", customer_id],
          model: Dodopayments::Models::Customer,
          options: params[:request_options]
        )
      end

      # @overload update(customer_id, name: nil, phone_number: nil, request_options: {})
      #
      # @param customer_id [String]
      # @param name [String, nil]
      # @param phone_number [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Customer]
      #
      # @see Dodopayments::Models::CustomerUpdateParams
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

      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Customer>]
      #
      # @see Dodopayments::Models::CustomerListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::CustomerListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "customers",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::Customer,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @customer_portal = Dodopayments::Resources::Customers::CustomerPortal.new(client: client)
      end
    end
  end
end
