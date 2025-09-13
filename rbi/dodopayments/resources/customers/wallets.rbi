# typed: strong

module Dodopayments
  module Resources
    class Customers
      class Wallets
        sig do
          returns(Dodopayments::Resources::Customers::Wallets::LedgerEntries)
        end
        attr_reader :ledger_entries

        sig do
          params(
            customer_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Models::Customers::WalletListResponse)
        end
        def list(
          # Customer ID
          customer_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
