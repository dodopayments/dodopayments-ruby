# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      # @see Dodopayments::Resources::ProductCollections::Groups#create
      class ProductCollectionGroupResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute group_id
        #
        #   @return [String]
        required :group_id, String

        # @!attribute products
        #
        #   @return [Array<Dodopayments::Models::ProductCollections::Groups::ProductCollectionProduct>]
        required :products,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::Groups::ProductCollectionProduct] }

        # @!attribute status
        #
        #   @return [Boolean]
        required :status, Dodopayments::Internal::Type::Boolean

        # @!attribute group_name
        #
        #   @return [String, nil]
        optional :group_name, String, nil?: true

        # @!method initialize(group_id:, products:, status:, group_name: nil)
        #   @param group_id [String]
        #   @param products [Array<Dodopayments::Models::ProductCollections::Groups::ProductCollectionProduct>]
        #   @param status [Boolean]
        #   @param group_name [String, nil]
      end
    end

    ProductCollectionGroupResponse = ProductCollections::ProductCollectionGroupResponse
  end
end
