# typed: strong

module Dodopayments
  module Models
    class OneTimeProductCartItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::OneTimeProductCartItem,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :product_id

      sig { returns(Integer) }
      attr_accessor :quantity

      sig do
        params(product_id: String, quantity: Integer).returns(T.attached_class)
      end
      def self.new(product_id:, quantity:)
      end

      sig { override.returns({ product_id: String, quantity: Integer }) }
      def to_hash
      end
    end
  end
end
