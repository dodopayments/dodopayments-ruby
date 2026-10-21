# frozen_string_literal: true

module Dodopayments
  module Resources
    class Invoices
      class Payments
        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Invoices::PaymentRetrieveParams} for more details.
        #
        # @overload retrieve(payment_id, token: nil, request_options: {})
        #
        # @param payment_id [String] Payment ID
        #
        # @param token [String] The signed link token. If the business asks for a credential on its invoice link
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Dodopayments::Models::Invoices::PaymentRetrieveParams
        def retrieve(payment_id, params = {})
          parsed, options = Dodopayments::Invoices::PaymentRetrieveParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["invoices/payments/%1$s", payment_id],
            query: query,
            headers: {"accept" => "application/pdf"},
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Invoices::PaymentRetrievePayoutParams} for more details.
        #
        # @overload retrieve_payout(payout_id, token: nil, request_options: {})
        #
        # @param payout_id [String] Payout ID
        #
        # @param token [String] The signed link token. If the business asks for a credential on its invoice link
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Dodopayments::Models::Invoices::PaymentRetrievePayoutParams
        def retrieve_payout(payout_id, params = {})
          parsed, options = Dodopayments::Invoices::PaymentRetrievePayoutParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["invoices/payouts/%1$s", payout_id],
            query: query,
            headers: {"accept" => "application/pdf"},
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Invoices::PaymentRetrieveRefundParams} for more details.
        #
        # @overload retrieve_refund(refund_id, token: nil, request_options: {})
        #
        # @param refund_id [String] Refund ID
        #
        # @param token [String] The signed link token. If the business asks for a credential on its invoice link
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see Dodopayments::Models::Invoices::PaymentRetrieveRefundParams
        def retrieve_refund(refund_id, params = {})
          parsed, options = Dodopayments::Invoices::PaymentRetrieveRefundParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["invoices/refunds/%1$s", refund_id],
            query: query,
            headers: {"accept" => "application/pdf"},
            model: StringIO,
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
