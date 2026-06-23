# typed: strong

module Dodopayments
  module Models
    Metadata =
      T.let(
        Dodopayments::Internal::Type::HashOf[String],
        Dodopayments::Internal::Type::Converter
      )
  end
end
