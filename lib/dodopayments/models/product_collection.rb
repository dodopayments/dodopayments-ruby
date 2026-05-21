# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#create
    class ProductCollection < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the product collection
      #
      #   @return [String]
      required :id, String

      # @!attribute brand_id
      #   Brand ID for the collection
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute created_at
      #   Timestamp when the collection was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute groups
      #   Groups in this collection
      #
      #   @return [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupResponse>]
      required :groups,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::ProductCollectionGroupResponse] }

      # @!attribute name
      #   Name of the collection
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #   Timestamp when the collection was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Description of the collection
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   URL of the collection image
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!method initialize(id:, brand_id:, created_at:, groups:, name:, updated_at:, description: nil, image: nil)
      #   @param id [String] Unique identifier for the product collection
      #
      #   @param brand_id [String] Brand ID for the collection
      #
      #   @param created_at [Time] Timestamp when the collection was created
      #
      #   @param groups [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupResponse>] Groups in this collection
      #
      #   @param name [String] Name of the collection
      #
      #   @param updated_at [Time] Timestamp when the collection was last updated
      #
      #   @param description [String, nil] Description of the collection
      #
      #   @param image [String, nil] URL of the collection image
    end
  end
end
