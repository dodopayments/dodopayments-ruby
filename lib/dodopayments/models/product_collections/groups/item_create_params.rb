# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        # @see Dodopayments::Resources::ProductCollections::Groups::Items#create
        class ItemCreateParams < Dodopayments::Internal::Type::BaseModel
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

          # @!attribute products
          #   Products to add to the group
          #
          #   @return [Array<Dodopayments::Models::ProductCollections::Groups::ItemCreateParams::Product>]
          required :products,
                   -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::Groups::ItemCreateParams::Product] }

          # @!method initialize(id:, group_id:, products:, request_options: {})
          #   @param id [String]
          #
          #   @param group_id [String]
          #
          #   @param products [Array<Dodopayments::Models::ProductCollections::Groups::ItemCreateParams::Product>] Products to add to the group
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
end
