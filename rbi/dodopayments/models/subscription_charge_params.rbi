# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionChargeParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The product price. Represented in the lowest denomination of the currency (e.g.,
      # cents for USD). For example, to charge $1.00, pass `100`.
      sig { returns(Integer) }
      attr_accessor :product_price

      # Metadata for the payment. If not passed, the metadata of the subscription will
      # be taken
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig do
        params(
          product_price: Integer,
          metadata: T.nilable(T::Hash[Symbol, String]),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The product price. Represented in the lowest denomination of the currency (e.g.,
        # cents for USD). For example, to charge $1.00, pass `100`.
        product_price:,
        # Metadata for the payment. If not passed, the metadata of the subscription will
        # be taken
        metadata: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_price: Integer,
            metadata: T.nilable(T::Hash[Symbol, String]),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
