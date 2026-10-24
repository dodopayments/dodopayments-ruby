# frozen_string_literal: true

module Dodopayments
  module Models
    module Entitlements
      # @see Dodopayments::Resources::Entitlements::Translations#delete
      class TranslationDeleteParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute locale
        #   A locale that the checkout and the customer portal can show.
        #
        #   The codes are a copy of the checkout locales. `GET /locales` lists them.
        #
        #   @return [Symbol, Dodopayments::Models::Locale]
        required :locale, enum: -> { Dodopayments::Locale }

        # @!method initialize(id:, locale:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Entitlements::TranslationDeleteParams} for more details.
        #
        #   @param id [String]
        #
        #   @param locale [Symbol, Dodopayments::Models::Locale] A locale that the checkout and the customer portal can show.
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
