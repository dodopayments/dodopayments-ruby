# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      class CustomerPortal
        # @param customer_id [String] Customer Id
        #
        # @param params [Dodopayments::Models::Customers::CustomerPortalCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Boolean, nil] :send_email If true, will send link to user.
        #
        #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Dodopayments::Models::CustomerPortalSession]
        def create(customer_id, params = {})
          parsed, options = Dodopayments::Models::Customers::CustomerPortalCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["customers/%0s/customer-portal/session", customer_id],
            query: parsed,
            model: Dodopayments::Models::CustomerPortalSession,
            options: options
          )
        end

        # @param client [Dodopayments::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
