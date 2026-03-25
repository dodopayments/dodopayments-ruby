# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#list
    class ProductCollectionListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Collection ID
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   Timestamp when created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute name
      #   Collection name
      #
      #   @return [String]
      required :name, String

      # @!attribute products_count
      #   Number of products in the collection
      #
      #   @return [Integer]
      required :products_count, Integer

      # @!attribute updated_at
      #   Timestamp when last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Collection description
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   Collection image URL
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!method initialize(id:, created_at:, name:, products_count:, updated_at:, description: nil, image: nil)
      #   @param id [String] Collection ID
      #
      #   @param created_at [Time] Timestamp when created
      #
      #   @param name [String] Collection name
      #
      #   @param products_count [Integer] Number of products in the collection
      #
      #   @param updated_at [Time] Timestamp when last updated
      #
      #   @param description [String, nil] Collection description
      #
      #   @param image [String, nil] Collection image URL
    end
  end
end
