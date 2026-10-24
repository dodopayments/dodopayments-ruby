# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Entitlements#retrieve
    class EntitlementRetrieveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute locale
      #   Shows the translated name, description and unit of the catalog entities in this
      #   locale. The value must be a code from `GET /locales`, for example `fr`. A field
      #   with no translation, an unknown code, or no code shows the base text.
      #
      #   Do not send a text from a localized response back in a create or update request.
      #   The base text then changes to the translated text.
      #
      #   @return [String, nil]
      optional :locale, String

      # @!method initialize(id:, locale: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::EntitlementRetrieveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param locale [String] Shows the translated name, description and unit of the catalog entities in this
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
