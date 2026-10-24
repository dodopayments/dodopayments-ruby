# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::Translations#list
      class TranslationsListResponse < Dodopayments::Internal::Type::BaseModel
        # @!attribute items
        #
        #   @return [Array<Dodopayments::Models::Products::Translation>]
        required :items, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Products::Translation] }

        # @!method initialize(items:)
        #   The translations of a product, an add-on, a product collection or a meter.
        #
        #   @param items [Array<Dodopayments::Models::Products::Translation>]
      end
    end
  end
end
