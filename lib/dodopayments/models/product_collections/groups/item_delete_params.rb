# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        # @see Dodopayments::Resources::ProductCollections::Groups::Items#delete
        class ItemDeleteParams < Dodopayments::Internal::Type::BaseModel
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

          # @!attribute item_id
          #
          #   @return [String]
          required :item_id, String

          # @!method initialize(id:, group_id:, item_id:, request_options: {})
          #   @param id [String]
          #   @param group_id [String]
          #   @param item_id [String]
          #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
