# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Payouts::BreakupTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.payouts.breakup.retrieve("payout_id")

    assert_pattern do
      response => ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::Payouts::BreakupRetrieveResponseItem])
    end
  end
end
