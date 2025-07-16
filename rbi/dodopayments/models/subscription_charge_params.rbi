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

      # Whether adaptive currency fees should be included in the product_price (true) or
      # added on top (false). This field is ignored if adaptive pricing is not enabled
      # for the business.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :adaptive_currency_fees_inclusive

      # Metadata for the payment. If not passed, the metadata of the subscription will
      # be taken
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Optional currency of the product price. If not specified, defaults to the
      # currency of the product.
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :product_currency

      # Optional product description override for billing and line items. If not
      # specified, the stored description of the product will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      sig do
        params(
          product_price: Integer,
          adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
          metadata: T.nilable(T::Hash[Symbol, String]),
          product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          product_description: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The product price. Represented in the lowest denomination of the currency (e.g.,
        # cents for USD). For example, to charge $1.00, pass `100`.
        product_price:,
        # Whether adaptive currency fees should be included in the product_price (true) or
        # added on top (false). This field is ignored if adaptive pricing is not enabled
        # for the business.
        adaptive_currency_fees_inclusive: nil,
        # Metadata for the payment. If not passed, the metadata of the subscription will
        # be taken
        metadata: nil,
        # Optional currency of the product price. If not specified, defaults to the
        # currency of the product.
        product_currency: nil,
        # Optional product description override for billing and line items. If not
        # specified, the stored description of the product will be used.
        product_description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            product_price: Integer,
            adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
            metadata: T.nilable(T::Hash[Symbol, String]),
            product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            product_description: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
