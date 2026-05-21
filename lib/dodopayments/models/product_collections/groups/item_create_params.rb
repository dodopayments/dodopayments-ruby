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
          #   @return [Array<Dodopayments::Models::ProductCollections::GroupProduct>]
          required :products,
                   -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::ProductCollections::GroupProduct] }

          # @!method initialize(id:, group_id:, products:, request_options: {})
          #   @param id [String]
          #
          #   @param group_id [String]
          #
          #   @param products [Array<Dodopayments::Models::ProductCollections::GroupProduct>] Products to add to the group
          #
          #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
