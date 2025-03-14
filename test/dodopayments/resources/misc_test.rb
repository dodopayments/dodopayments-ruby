# frozen_string_literal: true

require_relative "../test_helper"

class Dodopayments::Test::Resources::MiscTest < Dodopayments::Test::ResourceTest
  def test_list_supported_countries
    response = @dodo_payments.misc.list_supported_countries

    assert_pattern do
      response => ^(Dodopayments::ArrayOf[enum: Dodopayments::Models::CountryCode])
    end
  end
end
