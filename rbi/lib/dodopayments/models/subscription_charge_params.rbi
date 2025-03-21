# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig { returns(Integer) }
      def product_price
      end

      sig { params(_: Integer).returns(Integer) }
      def product_price=(_)
      end

      sig do
        params(
          product_price: Integer,
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
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
