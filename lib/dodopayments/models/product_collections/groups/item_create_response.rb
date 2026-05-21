# frozen_string_literal: true

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        # @type [Dodopayments::Internal::Type::Converter]
        ItemCreateResponse =
          Dodopayments::Internal::Type::ArrayOf[-> {
            Dodopayments::ProductCollections::Groups::ProductCollectionProduct
          }]
      end
    end
  end
end
