# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # The product price. Represented in the lowest denomination of the currency (e.g.,
      # cents for USD). For example, to charge $1.00, pass `100`.
      sig { returns(Integer) }
      attr_accessor :product_price

      sig do
        params(
          product_price: Integer,
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        # The product price. Represented in the lowest denomination of the currency (e.g.,
        # cents for USD). For example, to charge $1.00, pass `100`.
        product_price:,
        request_options: {}
      ); end
      sig { override.returns({product_price: Integer, request_options: Dodopayments::RequestOptions}) }
      def to_hash; end
    end
  end
end
