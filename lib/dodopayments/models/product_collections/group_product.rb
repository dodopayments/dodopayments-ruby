# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      class GroupProduct < Dodopayments::Internal::Type::BaseModel
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
