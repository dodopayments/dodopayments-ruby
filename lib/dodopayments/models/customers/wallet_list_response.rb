# frozen_string_literal: true

module Dodopayments
  module Models
    module Customers
      # @see Dodopayments::Resources::Customers::Wallets#list
      class WalletListResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dodopayments::Models::Customers::CustomerWallet>]
        required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Customers::CustomerWallet] }

        # @!attribute total_balance_usd
        #   Sum of all wallet balances converted to USD (in smallest unit)
        #
        #   @return [Integer]
        required :total_balance_usd, Integer

        # @!method initialize(items:, total_balance_usd:)
        #   @param items [Array<Dodopayments::Models::Customers::CustomerWallet>]
        #
        #   @param total_balance_usd [Integer] Sum of all wallet balances converted to USD (in smallest unit)
      end
    end
  end
end
