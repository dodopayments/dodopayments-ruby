# typed: strong

module Dodopayments
  module Models
    class AddonUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AddonUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The currency of the Addon
      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_accessor :currency

      # Description of the Addon, optional and must be at most 1000 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Addon image id after its uploaded to S3
      sig { returns(T.nilable(String)) }
      attr_accessor :image_id

      # Name of the Addon, optional and must be at most 100 characters.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Amount of the addon
      sig { returns(T.nilable(Integer)) }
      attr_accessor :price

      # Tax category of the Addon.
      sig { returns(T.nilable(Dodopayments::TaxCategory::OrSymbol)) }
      attr_accessor :tax_category

      sig do
        params(
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          image_id: T.nilable(String),
          name: T.nilable(String),
          price: T.nilable(Integer),
          tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The currency of the Addon
        currency: nil,
        # Description of the Addon, optional and must be at most 1000 characters.
        description: nil,
        # Addon image id after its uploaded to S3
        image_id: nil,
        # Name of the Addon, optional and must be at most 100 characters.
        name: nil,
        # Amount of the addon
        price: nil,
        # Tax category of the Addon.
        tax_category: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            currency: T.nilable(Dodopayments::Currency::OrSymbol),
            description: T.nilable(String),
            image_id: T.nilable(String),
            name: T.nilable(String),
            price: T.nilable(Integer),
            tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
