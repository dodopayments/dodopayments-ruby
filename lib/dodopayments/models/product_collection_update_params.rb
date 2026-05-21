# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#update
    class ProductCollectionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute brand_id
      #   Optional brand_id update
      #
      #   @return [String, nil]
      optional :brand_id, String, nil?: true

      # @!attribute description
      #   Optional description update - pass null to remove, omit to keep unchanged
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute group_order
      #   Optional new order for groups (array of group UUIDs in desired order)
      #
      #   @return [Array<String>, nil]
      optional :group_order, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute image_id
      #   Optional image update - pass null to remove, omit to keep unchanged
      #
      #   @return [String, nil]
      optional :image_id, String, nil?: true

      # @!attribute name
      #   Optional new name for the collection
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!method initialize(id:, brand_id: nil, description: nil, group_order: nil, image_id: nil, name: nil, request_options: {})
      #   @param id [String]
      #
      #   @param brand_id [String, nil] Optional brand_id update
      #
      #   @param description [String, nil] Optional description update - pass null to remove, omit to keep unchanged
      #
      #   @param group_order [Array<String>, nil] Optional new order for groups (array of group UUIDs in desired order)
      #
      #   @param image_id [String, nil] Optional image update - pass null to remove, omit to keep unchanged
      #
      #   @param name [String, nil] Optional new name for the collection
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
