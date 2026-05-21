# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      # @see Dodopayments::Resources::ProductCollections::Groups#update
      class GroupUpdateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute group_id
        #
        #   @return [String]
        required :group_id, String

        # @!attribute group_name
        #   Optional group name update: Some(Some(name)) = set name, Some(None) = clear
        #   name, None = no change
        #
        #   @return [String, nil]
        optional :group_name, String, nil?: true

        # @!attribute product_order
        #   Optional new order for products in this group (array of
        #   product_collection_group_pdts UUIDs)
        #
        #   @return [Array<String>, nil]
        optional :product_order, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute status
        #   Optional status update
        #
        #   @return [Boolean, nil]
        optional :status, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(id:, group_id:, group_name: nil, product_order: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::ProductCollections::GroupUpdateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param group_id [String]
        #
        #   @param group_name [String, nil] Optional group name update: Some(Some(name)) = set name, Some(None) = clear name
        #
        #   @param product_order [Array<String>, nil] Optional new order for products in this group (array of product_collection_group
        #
        #   @param status [Boolean, nil] Optional status update
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
