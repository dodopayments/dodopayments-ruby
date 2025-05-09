# typed: strong

module Dodopayments
  module Models
    class AddonResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      # id of the Addon
      sig { returns(String) }
      attr_accessor :id

      # Unique identifier for the business to which the addon belongs.
      sig { returns(String) }
      attr_accessor :business_id

      # Created time
      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      # Name of the Addon
      sig { returns(String) }
      attr_accessor :name

      # Amount of the addon
      sig { returns(Integer) }
      attr_accessor :price

      # Represents the different categories of taxation applicable to various products
      # and services.
      sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
      attr_accessor :tax_category

      # Updated time
      sig { returns(Time) }
      attr_accessor :updated_at

      # Optional description of the Addon
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Image of the Addon
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          name: String,
          price: Integer,
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          updated_at: Time,
          description: T.nilable(String),
          image: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # id of the Addon
        id:,
        # Unique identifier for the business to which the addon belongs.
        business_id:,
        # Created time
        created_at:,
        currency:,
        # Name of the Addon
        name:,
        # Amount of the addon
        price:,
        # Represents the different categories of taxation applicable to various products
        # and services.
        tax_category:,
        # Updated time
        updated_at:,
        # Optional description of the Addon
        description: nil,
        # Image of the Addon
        image: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            name: String,
            price: Integer,
            tax_category: Dodopayments::TaxCategory::TaggedSymbol,
            updated_at: Time,
            description: T.nilable(String),
            image: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
