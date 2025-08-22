# typed: strong

module Dodopayments
  module Models
    class OnDemandSubscription < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::OnDemandSubscription,
            Dodopayments::Internal::AnyHash
          )
        end

      # If set as True, does not perform any charge and only authorizes payment method
      # details for future use.
      sig { returns(T::Boolean) }
      attr_accessor :mandate_only

      # Whether adaptive currency fees should be included in the product_price (true) or
      # added on top (false). This field is ignored if adaptive pricing is not enabled
      # for the business.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :adaptive_currency_fees_inclusive

      # Optional currency of the product price. If not specified, defaults to the
      # currency of the product.
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :product_currency

      # Optional product description override for billing and line items. If not
      # specified, the stored description of the product will be used.
      sig { returns(T.nilable(String)) }
      attr_accessor :product_description

      # Product price for the initial charge to customer If not specified the stored
      # price of the product will be used Represented in the lowest denomination of the
      # currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :product_price

      sig do
        params(
          mandate_only: T::Boolean,
          adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
          product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
          product_description: T.nilable(String),
          product_price: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # If set as True, does not perform any charge and only authorizes payment method
        # details for future use.
        mandate_only:,
        # Whether adaptive currency fees should be included in the product_price (true) or
        # added on top (false). This field is ignored if adaptive pricing is not enabled
        # for the business.
        adaptive_currency_fees_inclusive: nil,
        # Optional currency of the product price. If not specified, defaults to the
        # currency of the product.
        product_currency: nil,
        # Optional product description override for billing and line items. If not
        # specified, the stored description of the product will be used.
        product_description: nil,
        # Product price for the initial charge to customer If not specified the stored
        # price of the product will be used Represented in the lowest denomination of the
        # currency (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        product_price: nil
      )
      end

      sig do
        override.returns(
          {
            mandate_only: T::Boolean,
            adaptive_currency_fees_inclusive: T.nilable(T::Boolean),
            product_currency: T.nilable(Dodopayments::Currency::OrSymbol),
            product_description: T.nilable(String),
            product_price: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
