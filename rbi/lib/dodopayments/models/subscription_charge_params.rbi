# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeParams < Dodopayments::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # The product price. Represented in the lowest denomination of the currency (e.g.,
      #   cents for USD). For example, to charge $1.00, pass `100`.
      sig { returns(Integer) }
      def product_price
      end

      sig { params(_: Integer).returns(Integer) }
      def product_price=(_)
      end

      sig do
        params(
          product_price: Integer,
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::Util::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(product_price:, request_options: {})
      end

      sig { override.returns({product_price: Integer, request_options: Dodopayments::RequestOptions}) }
      def to_hash
      end
    end
  end
end
