# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      class ProductCollectionGroupDetails < Dodopayments::Internal::Type::BaseModel
        # @!attribute products
        #   Products in this group
        #
        #   @return [Array<Dodopayments::Models::ProductCollections::GroupProduct>]
        required :products,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::GroupProduct] }

        # @!attribute group_name
        #   Optional group name. Multiple groups can have null names, but named groups must
        #   be unique per collection
        #
        #   @return [String, nil]
        optional :group_name, String, nil?: true

        # @!attribute status
        #   Status of the group (defaults to true if not provided)
        #
        #   @return [Boolean, nil]
        optional :status, Dodopayments::Internal::Type::Boolean, nil?: true

        # @!method initialize(products:, group_name: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails} for
        #   more details.
        #
        #   @param products [Array<Dodopayments::Models::ProductCollections::GroupProduct>] Products in this group
        #
        #   @param group_name [String, nil] Optional group name. Multiple groups can have null names, but named groups must
        #
        #   @param status [Boolean, nil] Status of the group (defaults to true if not provided)
      end
    end

    ProductCollectionGroupDetails = ProductCollections::ProductCollectionGroupDetails
  end
end
