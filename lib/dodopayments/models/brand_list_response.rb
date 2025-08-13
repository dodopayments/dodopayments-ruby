# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Brands#list
    class BrandListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute items
      #   List of brands for this business
      #
      #   @return [Array<Dodopayments::Models::Brand>]
      required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Brand] }

      # @!method initialize(items:)
      #   @param items [Array<Dodopayments::Models::Brand>] List of brands for this business
    end
  end
end
