# frozen_string_literal: true

module Dodopayments
  module Resources
    class Blocklist
      class Customers
        # @return [Dodopayments::Resources::Blocklist::Customers::Notes]
        attr_reader :notes

        # @overload create(create_blocked_customer_request:, request_options: {})
        #
        # @param create_blocked_customer_request [Dodopayments::Models::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID, Dodopayments::Models::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail]
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Blocklist::BlockedCustomer]
        #
        # @see Dodopayments::Models::Blocklist::CustomerCreateParams
        def create(params)
          parsed, options = Dodopayments::Blocklist::CustomerCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "blocklist/customers",
            body: parsed[:create_blocked_customer_request],
            model: Dodopayments::Blocklist::BlockedCustomer,
            options: options
          )
        end

        # @overload retrieve(entry_id, request_options: {})
        #
        # @param entry_id [String] Blocklist entry id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Blocklist::BlockedCustomer]
        #
        # @see Dodopayments::Models::Blocklist::CustomerRetrieveParams
        def retrieve(entry_id, params = {})
          @client.request(
            method: :get,
            path: ["blocklist/customers/%1$s", entry_id],
            model: Dodopayments::Blocklist::BlockedCustomer,
            options: params[:request_options]
          )
        end

        # @overload list(blocked_by_email: nil, created_at_gte: nil, created_at_lte: nil, identifier: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param blocked_by_email [String, nil] Filter by the dashboard user who blocked the customer.
        #
        # @param created_at_gte [Time, nil] Blocked on or after this time.
        #
        # @param created_at_lte [Time, nil] Blocked on or before this time.
        #
        # @param identifier [String, nil] Partial, case-insensitive match on the email and on the customer id.
        #
        # @param page_number [Integer, nil] Page number. Default 0.
        #
        # @param page_size [Integer, nil] Page size. Default 10, maximum 100.
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Blocklist::BlockedCustomer>]
        #
        # @see Dodopayments::Models::Blocklist::CustomerListParams
        def list(params = {})
          parsed, options = Dodopayments::Blocklist::CustomerListParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "blocklist/customers",
            query: query,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::Blocklist::BlockedCustomer,
            options: options
          )
        end

        # @overload delete(entry_id, request_options: {})
        #
        # @param entry_id [String] Blocklist entry id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Blocklist::CustomerDeleteParams
        def delete(entry_id, params = {})
          @client.request(
            method: :delete,
            path: ["blocklist/customers/%1$s", entry_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Dodopayments::Client]
        def initialize(client:)
          @client = client
          @notes = Dodopayments::Resources::Blocklist::Customers::Notes.new(client: client)
        end
      end
    end
  end
end
