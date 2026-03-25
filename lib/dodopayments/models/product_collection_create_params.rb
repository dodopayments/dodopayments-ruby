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
      #   @return [Array<Dodopayments::Models::ProductCollectionCreateParams::Group>]
      required :groups,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollectionCreateParams::Group] }

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
      #   @param groups [Array<Dodopayments::Models::ProductCollectionCreateParams::Group>] Groups of products in this collection
      #
      #   @param name [String] Name of the product collection
      #
      #   @param brand_id [String, nil] Brand id for the collection, if not provided will default to primary brand
      #
      #   @param description [String, nil] Optional description of the product collection
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]

      class Group < Dodopayments::Internal::Type::BaseModel
        # @!attribute products
        #   Products in this group
        #
        #   @return [Array<Dodopayments::Models::ProductCollectionCreateParams::Group::Product>]
        required :products,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollectionCreateParams::Group::Product] }

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
        #   {Dodopayments::Models::ProductCollectionCreateParams::Group} for more details.
        #
        #   @param products [Array<Dodopayments::Models::ProductCollectionCreateParams::Group::Product>] Products in this group
        #
        #   @param group_name [String, nil] Optional group name. Multiple groups can have null names, but named groups must
        #
        #   @param status [Boolean, nil] Status of the group (defaults to true if not provided)

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
