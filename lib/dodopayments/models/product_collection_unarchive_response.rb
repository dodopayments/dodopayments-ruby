# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#unarchive
    class ProductCollectionUnarchiveResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute collection_id
      #   Collection ID that was unarchived
      #
      #   @return [String]
      required :collection_id, String

      # @!attribute excluded_product_ids
      #   Product IDs that were excluded because they are archived
      #
      #   @return [Array<String>]
      required :excluded_product_ids, Dodopayments::Internal::Type::ArrayOf[String]

      # @!attribute message
      #   Success message
      #
      #   @return [String]
      required :message, String

      # @!method initialize(collection_id:, excluded_product_ids:, message:)
      #   @param collection_id [String] Collection ID that was unarchived
      #
      #   @param excluded_product_ids [Array<String>] Product IDs that were excluded because they are archived
      #
      #   @param message [String] Success message
    end
  end
end
