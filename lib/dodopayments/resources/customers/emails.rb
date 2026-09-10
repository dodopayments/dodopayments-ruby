# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      class Emails
        # Returns every transactional email sent to this customer in the last 180 days,
        # newest first, with its delivery outcome. Delivery status comes from the email
        # provider and is as fresh as replication, typically seconds.
        #
        # @overload list(customer_id, page_number: nil, page_size: nil, request_options: {})
        #
        # @param customer_id [String] The customer's id
        #
        # @param page_number [Integer] Which page to return. The default is 0.
        #
        # @param page_size [Integer] How many emails to return. The default is 10 and the maximum is 100.
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Customers::EmailLogItem>]
        #
        # @see Dodopayments::Models::Customers::EmailListParams
        def list(customer_id, params = {})
          parsed, options = Dodopayments::Customers::EmailListParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["customers/%1$s/emails", customer_id],
            query: query,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::Customers::EmailLogItem,
            options: options
          )
        end

        # Returns the email exactly as it was sent, plus the reason it failed when it did.
        # Some emails have no body to show: an authentication email carries a live login
        # token, a blocked email never reached the provider, and the provider clears
        # bodies at 180 days.
        #
        # @overload retrieve_body(email_log_id, customer_id:, request_options: {})
        #
        # @param email_log_id [String] The email log entry's id
        #
        # @param customer_id [String] The customer's id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Customers::EmailBody]
        #
        # @see Dodopayments::Models::Customers::EmailRetrieveBodyParams
        def retrieve_body(email_log_id, params)
          parsed, options = Dodopayments::Customers::EmailRetrieveBodyParams.dump_request(params)
          customer_id =
            parsed.delete(:customer_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["customers/%1$s/emails/%2$s/body", customer_id, email_log_id],
            model: Dodopayments::Customers::EmailBody,
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
end
