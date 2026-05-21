# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        # @see Dodopayments::Resources::ProductCollections::Groups::Items#update
        class ItemUpdateParams < Dodopayments::Internal::Type::BaseModel
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

          # @!attribute status
          #   Status of the product in the group
          #
          #   @return [Boolean]
          required :status, Dodopayments::Internal::Type::Boolean

          # @!method initialize(id:, group_id:, item_id:, status:, request_options: {})
          #   @param id [String]
          #
          #   @param group_id [String]
          #
          #   @param item_id [String]
          #
          #   @param status [Boolean] Status of the product in the group
          #
          #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
