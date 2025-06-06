# typed: strong

module Dodopayments
  module Models
    class AddonCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(Dodopayments::Models::Currency::OrSymbol) }
      attr_accessor :currency

      # Name of the Addon
      sig { returns(String) }
      attr_accessor :name

      # Amount of the addon
      sig { returns(Integer) }
      attr_accessor :price

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(Dodopayments::Models::TaxCategory::OrSymbol) }
      attr_accessor :tax_category

      # Optional description of the Addon
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig do
        params(
          currency: Dodopayments::Models::Currency::OrSymbol,
          name: String,
          price: Integer,
          tax_category: Dodopayments::Models::TaxCategory::OrSymbol,
          description: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(
        currency:,
        # Name of the Addon
        name:,
        # Amount of the addon
        price:,
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category:,
        # Optional description of the Addon
        description: nil,
        request_options: {}
      ); end
      sig do
        override
          .returns(
            {
              currency: Dodopayments::Models::Currency::OrSymbol,
              name: String,
              price: Integer,
              tax_category: Dodopayments::Models::TaxCategory::OrSymbol,
              description: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
