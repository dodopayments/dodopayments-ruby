# frozen_string_literal: true

module Dodopayments
  module Models
    # @type [Dodopayments::Internal::Type::Converter]
    MiscListSupportedCountriesResponse =
      Dodopayments::Internal::Type::ArrayOf[enum: -> { Dodopayments::CountryCode }]
  end
end
