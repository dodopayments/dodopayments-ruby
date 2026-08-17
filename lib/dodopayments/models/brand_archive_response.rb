# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#archive
    class BrandArchiveResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute archived_at
      #   Time the brand was archived.
      #
      #   @return [Time]
      required :archived_at, Time

      # @!attribute brand_id
      #   The archived brand.
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute collections_moved
      #   Count of product collections moved to the target brand.
      #
      #   @return [Integer]
      required :collections_moved, Integer

      # @!attribute products_moved
      #   Count of products moved to the target brand.
      #
      #   @return [Integer]
      required :products_moved, Integer

      # @!attribute subscriptions_moved
      #   Count of live subscriptions moved to the target brand.
      #
      #   @return [Integer]
      required :subscriptions_moved, Integer

      # @!attribute moved_to_brand_id
      #   Brand that received the moved records. Null when no target was given.
      #
      #   @return [String, nil]
      optional :moved_to_brand_id, String, nil?: true

      # @!method initialize(archived_at:, brand_id:, collections_moved:, products_moved:, subscriptions_moved:, moved_to_brand_id: nil)
      #   @param archived_at [Time] Time the brand was archived.
      #
      #   @param brand_id [String] The archived brand.
      #
      #   @param collections_moved [Integer] Count of product collections moved to the target brand.
      #
      #   @param products_moved [Integer] Count of products moved to the target brand.
      #
      #   @param subscriptions_moved [Integer] Count of live subscriptions moved to the target brand.
      #
      #   @param moved_to_brand_id [String, nil] Brand that received the moved records. Null when no target was given.
    end
  end
end
