# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::CreditEntitlements#list
    class CreditEntitlementListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute deleted
      #   List deleted credit entitlements
      #
      #   @return [Boolean, nil]
      optional :deleted, Dodopayments::Internal::Type::Boolean

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

      # @!attribute page_number
      #   Page number default is 0
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Page size default is 10 max is 100
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(deleted: nil, locale: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::CreditEntitlementListParams} for more details.
      #
      #   @param deleted [Boolean] List deleted credit entitlements
      #
      #   @param locale [String] Shows the translated name, description and unit of the catalog entities in this
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
