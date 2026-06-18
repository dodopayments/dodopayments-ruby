# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Customers::WalletsTest < Dodopayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.customers.wallets.list("cus_TV52uJWWXt2yIoBBxpjaa")

    assert_pattern do
      response => Dodopayments::Models::Customers::WalletListResponse
    end

    assert_pattern do
      response => {
        items: ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Customers::CustomerWallet]),
        total_balance_usd: Integer
      }
    end
  end
end
