# typed: strong

module Dodopayments
  module Models
    MiscListLocalesResponse =
      T.let(
        Dodopayments::Internal::Type::ArrayOf[Dodopayments::LocaleInfo],
        Dodopayments::Internal::Type::Converter
      )
  end
end
