# typed: strong

module Dodopayments
  module Models
    class BrandListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::BrandListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # List of brands for this business
      sig { returns(T::Array[Dodopayments::Brand]) }
      attr_accessor :items

      sig do
        params(items: T::Array[Dodopayments::Brand::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(
        # List of brands for this business
        items:
      )
      end

      sig { override.returns({ items: T::Array[Dodopayments::Brand] }) }
      def to_hash
      end
    end
  end
end
