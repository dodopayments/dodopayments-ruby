# typed: strong

module Dodopayments
  module Models
    MiscListSupportedCountriesResponse =
      T.let(
        Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::Models::CountryCode],
        Dodopayments::Internal::Type::Converter
      )
  end
end
