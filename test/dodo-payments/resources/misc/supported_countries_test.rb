# frozen_string_literal: true

require_relative "../../test_helper"

class DodoPayments::Test::Resources::Misc::SupportedCountriesTest < DodoPayments::Test::ResourceTest
  def test_list
    response = @dodo_payments.misc.supported_countries.list

    assert_pattern do
      response => ^(DodoPayments::ArrayOf[enum: DodoPayments::Models::Misc::CountryCode])
    end
  end
end
