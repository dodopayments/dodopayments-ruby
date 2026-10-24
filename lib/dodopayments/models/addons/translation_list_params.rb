# frozen_string_literal: true

module Dodopayments
  module Models
    module Addons
      # @see Dodopayments::Resources::Addons::Translations#list
      class TranslationListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute locale
        #   Returns only these locales, for example `?locale=fr&locale=de`. With no value,
        #   the response has all the locales.
        #
        #   @return [Array<String>, nil]
        optional :locale, Dodopayments::Internal::Type::ArrayOf[String]

        # @!method initialize(id:, locale: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::Addons::TranslationListParams} for more details.
        #
        #   @param id [String]
        #
        #   @param locale [Array<String>] Returns only these locales, for example `?locale=fr&locale=de`. With no value, t
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
