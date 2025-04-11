# typed: strong

module Dodopayments
  module Models
    MiscListSupportedCountriesResponse =
      T.let(Dodopayments::ArrayOf[enum: Dodopayments::Models::CountryCode], Dodopayments::Type::Converter)
  end
end
