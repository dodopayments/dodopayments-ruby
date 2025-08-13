# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      class CustomerPortal
        # @overload create(customer_id, send_email: nil, request_options: {})
        #
        # @param customer_id [String] Customer Id
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
          @client.request(
            method: :post,
            path: ["customers/%1$s/customer-portal/session", customer_id],
            query: parsed,
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
