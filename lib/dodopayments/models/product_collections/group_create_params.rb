# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      # @see Dodopayments::Resources::ProductCollections::Groups#create
      class GroupCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute products
        #   Products in this group
        #
        #   @return [Array<Dodopayments::Models::ProductCollections::GroupCreateParams::Product>]
        required :products,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::GroupCreateParams::Product] }

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

        # @!method initialize(id:, products:, group_name: nil, status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::ProductCollections::GroupCreateParams} for more details.
        #
        #   @param id [String]
        #
        #   @param products [Array<Dodopayments::Models::ProductCollections::GroupCreateParams::Product>] Products in this group
        #
        #   @param group_name [String, nil] Optional group name. Multiple groups can have null names, but named groups must
        #
        #   @param status [Boolean, nil] Status of the group (defaults to true if not provided)
        #
        #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

        class Product < Dodopayments::Internal::Type::BaseModel
          # @!attribute product_id
          #   Product ID to include in the group
          #
          #   @return [String]
          required :product_id, String

          # @!attribute status
          #   Status of the product in this group (defaults to true if not provided)
          #
          #   @return [Boolean, nil]
          optional :status, Dodopayments::Internal::Type::Boolean, nil?: true

          # @!method initialize(product_id:, status: nil)
          #   @param product_id [String] Product ID to include in the group
          #
          #   @param status [Boolean, nil] Status of the product in this group (defaults to true if not provided)
        end
      end
    end
  end
end
