# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#create
    class ProductCollectionCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute groups
      #   Groups of products in this collection
      #
      #   @return [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails>]
      required :groups,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::ProductCollectionGroupDetails] }

      # @!attribute name
      #   Name of the product collection
      #
      #   @return [String]
      required :name, String

      # @!attribute brand_id
      #   Brand id for the collection, if not provided will default to primary brand
      #
      #   @return [String, nil]
      optional :brand_id, String, nil?: true

      # @!attribute description
      #   Optional description of the product collection
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(groups:, name:, brand_id: nil, description: nil, request_options: {})
      #   @param groups [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails>] Groups of products in this collection
      #
      #   @param name [String] Name of the product collection
      #
      #   @param brand_id [String, nil] Brand id for the collection, if not provided will default to primary brand
      #
      #   @param description [String, nil] Optional description of the product collection
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
