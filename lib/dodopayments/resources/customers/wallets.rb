# frozen_string_literal: true

module Dodopayments
  module Resources
    class Customers
      class Wallets
        # @return [Dodopayments::Resources::Customers::Wallets::LedgerEntries]
        attr_reader :ledger_entries

        # @overload list(customer_id, request_options: {})
        #
        # @param customer_id [String] Customer ID
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Customers::WalletListResponse]
        #
        # @see Dodopayments::Models::Customers::WalletListParams
        def list(customer_id, params = {})
          @client.request(
            method: :get,
            path: ["customers/%1$s/wallets", customer_id],
            model: Dodopayments::Models::Customers::WalletListResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Dodopayments::Client]
        def initialize(client:)
          @client = client
          @ledger_entries = Dodopayments::Resources::Customers::Wallets::LedgerEntries.new(client: client)
        end
      end
    end
  end
end
