# frozen_string_literal: true

module Dodopayments
  module Models
    MiscListSupportedCountriesResponse = Dodopayments::ArrayOf[enum: -> { Dodopayments::Models::CountryCode }]
  end
end
