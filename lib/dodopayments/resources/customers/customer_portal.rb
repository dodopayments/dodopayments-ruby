# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      class CustomerPortal
        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Customers::CustomerPortalCreateParams} for more details.
        #
        # @overload create(customer_id, return_url: nil, send_email: nil, request_options: {})
        #
        # @param customer_id [String] Customer Id
        #
        # @param return_url [String] Optional return URL for this session. Overrides the business-level default.
        #
        # @param send_email [Boolean] If true, will send link to user.
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::CustomerPortalSession]
        #
        # @see Dodopayments::Models::Customers::CustomerPortalCreateParams
        def create(customer_id, params = {})
          parsed, options = Dodopayments::Customers::CustomerPortalCreateParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :post,
            path: ["customers/%1$s/customer-portal/session", customer_id],
            query: query,
            model: Dodopayments::CustomerPortalSession,
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
