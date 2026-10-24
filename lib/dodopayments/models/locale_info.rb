# frozen_string_literal: true

module Dodopayments
  module Models
    class LocaleInfo < Dodopayments::Internal::Type::BaseModel
      # @!attribute code
      #   The code to send in the `locale` parameter.
      #
      #   @return [Symbol, Dodopayments::Models::Locale]
      required :code, enum: -> { Dodopayments::Locale }

      # @!attribute name
      #   The English name of the language.
      #
      #   @return [String]
      required :name, String

      # @!attribute native_name
      #   The name of the language in that language.
      #
      #   @return [String]
      required :native_name, String

      # @!method initialize(code:, name:, native_name:)
      #   A locale that the checkout and the customer portal can show.
      #
      #   @param code [Symbol, Dodopayments::Models::Locale] The code to send in the `locale` parameter.
      #
      #   @param name [String] The English name of the language.
      #
      #   @param native_name [String] The name of the language in that language.
    end
  end
end
