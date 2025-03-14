# typed: strong

module Dodopayments
  module Models
    class OneTimeProductCartItem < Dodopayments::BaseModel
      sig { returns(String) }
      def product_id
      end

      sig { params(_: String).returns(String) }
      def product_id=(_)
      end

      sig { returns(Integer) }
      def quantity
      end

      sig { params(_: Integer).returns(Integer) }
      def quantity=(_)
      end

      # Amount the customer pays if pay_what_you_want is enabled. If disabled then
      #   amount will be ignored
      sig { returns(T.nilable(Integer)) }
      def amount
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_)
      end

      sig do
        params(product_id: String, quantity: Integer, amount: T.nilable(Integer)).returns(T.attached_class)
      end
      def self.new(product_id:, quantity:, amount: nil)
      end

      sig { override.returns({product_id: String, quantity: Integer, amount: T.nilable(Integer)}) }
      def to_hash
      end
    end
  end
end
