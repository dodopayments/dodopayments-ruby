# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        ItemCreateResponse =
          T.let(
            Dodopayments::Internal::Type::ArrayOf[
              Dodopayments::ProductCollections::Groups::ProductCollectionProduct
            ],
            Dodopayments::Internal::Type::Converter
          )
      end
    end
  end
end
