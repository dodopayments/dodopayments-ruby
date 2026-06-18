# frozen_string_literal: true

require_relative "../../test_helper"

class Dodopayments::Test::Resources::Payouts::BreakupTest < Dodopayments::Test::ResourceTest
  def test_retrieve
    response = @dodo_payments.payouts.breakup.retrieve("pyt_zFTrrn4sk3x3y2vjDBW3T")

    assert_pattern do
      response => ^(Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::Payouts::BreakupRetrieveResponseItem])
    end
  end
end
