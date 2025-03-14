# frozen_string_literal: true

module Dodopayments
  module Resources
    class Invoices
      class Payments
        # @param payment_id [String]
        #
        # @param params [Dodopayments::Models::Invoices::PaymentRetrieveParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [nil]
        def retrieve(payment_id, params = {})
          @client.request(
            method: :get,
            path: ["invoices/payments/%0s", payment_id],
            model: NilClass,
            options: params[:request_options]
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
