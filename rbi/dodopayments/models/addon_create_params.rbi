# typed: strong

module Dodopayments
  module Models
    class AddonCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AddonCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The currency of the Addon
      sig { returns(Dodopayments::Currency::OrSymbol) }
      attr_accessor :currency

      # Name of the Addon
      sig { returns(String) }
      attr_accessor :name

      # Amount of the addon
      sig { returns(Integer) }
      attr_accessor :price

      # Tax category applied to this Addon
      sig { returns(Dodopayments::TaxCategory::OrSymbol) }
      attr_accessor :tax_category

      # Optional description of the Addon
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig do
        params(
          currency: Dodopayments::Currency::OrSymbol,
          name: String,
          price: Integer,
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          description: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The currency of the Addon
        currency:,
        # Name of the Addon
        name:,
        # Amount of the addon
        price:,
        # Tax category applied to this Addon
        tax_category:,
        # Optional description of the Addon
        description: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: Dodopayments::Currency::OrSymbol,
            name: String,
            price: Integer,
            tax_category: Dodopayments::TaxCategory::OrSymbol,
            description: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
