# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::LocalizedPrices#list
      class ListLocalizedPricesResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dodopayments::Models::Products::LocalizedPrice>]
        required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Products::LocalizedPrice] }

        # @!method initialize(items:)
        #   @param items [Array<Dodopayments::Models::Products::LocalizedPrice>]
      end
    end
  end
end
