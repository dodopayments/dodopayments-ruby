# frozen_string_literal: true

module Dodopayments
  module Models
    MiscListSupportedCountriesResponse =
      Dodopayments::Internal::Type::ArrayOf[enum: -> { Dodopayments::Models::CountryCode }]
  end
end
