# frozen_string_literal: true

module Dodopayments
  module Resources
    class Invoices
      class Payments
        # @overload retrieve(payment_id, request_options: {})
        #
        # @param payment_id [String]
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Invoices::PaymentRetrieveParams
        def retrieve(payment_id, params = {})
          @client.request(
            method: :get,
            path: ["invoices/payments/%1$s", payment_id],
            model: NilClass,
            options: params[:request_options]
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
