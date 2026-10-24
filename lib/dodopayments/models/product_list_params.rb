# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#list
    class ProductListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute archived
      #   List archived products
      #
      #   @return [Boolean, nil]
      optional :archived, Dodopayments::Internal::Type::Boolean

      # @!attribute brand_id
      #   filter by Brand id
      #
      #   @return [String, nil]
      optional :brand_id, String

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

      # @!attribute recurring
      #   Filter products by pricing type:
      #
      #   - `true`: Show only recurring pricing products (e.g. subscriptions)
      #   - `false`: Show only one-time price products
      #   - `null` or absent: Show both types of products
      #
      #   @return [Boolean, nil]
      optional :recurring, Dodopayments::Internal::Type::Boolean

      # @!method initialize(archived: nil, brand_id: nil, locale: nil, page_number: nil, page_size: nil, recurring: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductListParams} for more details.
      #
      #   @param archived [Boolean] List archived products
      #
      #   @param brand_id [String] filter by Brand id
      #
      #   @param locale [String] Shows the translated name, description and unit of the catalog entities in this
      #
      #   @param page_number [Integer] Page number default is 0
      #
      #   @param page_size [Integer] Page size default is 10 max is 100
      #
      #   @param recurring [Boolean] Filter products by pricing type:
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
