# frozen_string_literal: true

module DodoPayments
  module Resources
    class Customers
      class CustomerPortal
        class Session
          # @param customer_id [String] Customer Id
          #
          # @param params [DodoPayments::Models::Customers::CustomerPortal::SessionCreateParams, Hash{Symbol=>Object}] .
          #
          #   @option params [Boolean, nil] :send_email If true, will send link to user.
          #
          #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
          #
          # @return [nil]
          def create(customer_id, params = {})
            parsed, options = DodoPayments::Models::Customers::CustomerPortal::SessionCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["customers/%0s/customer-portal/session", customer_id],
              query: parsed,
              model: NilClass,
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
  end
end
