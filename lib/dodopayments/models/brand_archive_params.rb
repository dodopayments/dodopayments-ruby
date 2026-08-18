# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#archive
    class BrandArchiveParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute move_products_to
      #   Brand that takes over the products and the live subscriptions of the brand you
      #   archive. It must be a brand of the same business, and it must not be archived.
      #   The primary brand (its brand id is the business id) is a valid target. Omit this
      #   field only when the brand holds no products and no live subscriptions.
      #
      #   @return [String, nil]
      optional :move_products_to, String, nil?: true

      # @!method initialize(id:, move_products_to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::BrandArchiveParams} for more details.
      #
      #   @param id [String]
      #
      #   @param move_products_to [String, nil] Brand that takes over the products and the live subscriptions of the
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
