# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::ProductCollections#create
    class ProductCollectionCreateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the product collection
      #
      #   @return [String]
      required :id, String

      # @!attribute brand_id
      #   Brand ID for the collection
      #
      #   @return [String]
      required :brand_id, String

      # @!attribute created_at
      #   Timestamp when the collection was created
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute groups
      #   Groups in this collection
      #
      #   @return [Array<Dodopayments::Models::ProductCollectionCreateResponse::Group>]
      required :groups,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollectionCreateResponse::Group] }

      # @!attribute name
      #   Name of the collection
      #
      #   @return [String]
      required :name, String

      # @!attribute updated_at
      #   Timestamp when the collection was last updated
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Description of the collection
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   URL of the collection image
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!method initialize(id:, brand_id:, created_at:, groups:, name:, updated_at:, description: nil, image: nil)
      #   @param id [String] Unique identifier for the product collection
      #
      #   @param brand_id [String] Brand ID for the collection
      #
      #   @param created_at [Time] Timestamp when the collection was created
      #
      #   @param groups [Array<Dodopayments::Models::ProductCollectionCreateResponse::Group>] Groups in this collection
      #
      #   @param name [String] Name of the collection
      #
      #   @param updated_at [Time] Timestamp when the collection was last updated
      #
      #   @param description [String, nil] Description of the collection
      #
      #   @param image [String, nil] URL of the collection image

      class Group < Dodopayments::Internal::Type::BaseModel
        # @!attribute group_id
        #
        #   @return [String]
        required :group_id, String

        # @!attribute products
        #
        #   @return [Array<Dodopayments::Models::ProductCollectionCreateResponse::Group::Product>]
        required :products,
                 -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollectionCreateResponse::Group::Product] }

        # @!attribute status
        #
        #   @return [Boolean]
        required :status, Dodopayments::Internal::Type::Boolean

        # @!attribute group_name
        #
        #   @return [String, nil]
        optional :group_name, String, nil?: true

        # @!method initialize(group_id:, products:, status:, group_name: nil)
        #   @param group_id [String]
        #   @param products [Array<Dodopayments::Models::ProductCollectionCreateResponse::Group::Product>]
        #   @param status [Boolean]
        #   @param group_name [String, nil]

        class Product < Dodopayments::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute addons_count
          #
          #   @return [Integer]
          required :addons_count, Integer

          # @!attribute files_count
          #
          #   @return [Integer]
          required :files_count, Integer

          # @!attribute has_credit_entitlements
          #   Whether this product has any credit entitlements attached
          #
          #   @return [Boolean]
          required :has_credit_entitlements, Dodopayments::Internal::Type::Boolean

          # @!attribute is_recurring
          #
          #   @return [Boolean]
          required :is_recurring, Dodopayments::Internal::Type::Boolean

          # @!attribute license_key_enabled
          #
          #   @return [Boolean]
          required :license_key_enabled, Dodopayments::Internal::Type::Boolean

          # @!attribute meters_count
          #
          #   @return [Integer]
          required :meters_count, Integer

          # @!attribute product_id
          #
          #   @return [String]
          required :product_id, String

          # @!attribute status
          #
          #   @return [Boolean]
          required :status, Dodopayments::Internal::Type::Boolean

          # @!attribute currency
          #
          #   @return [Symbol, Dodopayments::Models::Currency, nil]
          optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String, nil?: true

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String, nil?: true

          # @!attribute price
          #
          #   @return [Integer, nil]
          optional :price, Integer, nil?: true

          # @!attribute price_detail
          #   One-time price details.
          #
          #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice, nil]
          optional :price_detail, union: -> { Dodopayments::Price }, nil?: true

          # @!attribute tax_category
          #   Represents the different categories of taxation applicable to various products
          #   and services.
          #
          #   @return [Symbol, Dodopayments::Models::TaxCategory, nil]
          optional :tax_category, enum: -> { Dodopayments::TaxCategory }, nil?: true

          # @!attribute tax_inclusive
          #
          #   @return [Boolean, nil]
          optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

          # @!method initialize(id:, addons_count:, files_count:, has_credit_entitlements:, is_recurring:, license_key_enabled:, meters_count:, product_id:, status:, currency: nil, description: nil, name: nil, price: nil, price_detail: nil, tax_category: nil, tax_inclusive: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::ProductCollectionCreateResponse::Group::Product} for more
          #   details.
          #
          #   @param id [String]
          #
          #   @param addons_count [Integer]
          #
          #   @param files_count [Integer]
          #
          #   @param has_credit_entitlements [Boolean] Whether this product has any credit entitlements attached
          #
          #   @param is_recurring [Boolean]
          #
          #   @param license_key_enabled [Boolean]
          #
          #   @param meters_count [Integer]
          #
          #   @param product_id [String]
          #
          #   @param status [Boolean]
          #
          #   @param currency [Symbol, Dodopayments::Models::Currency, nil]
          #
          #   @param description [String, nil]
          #
          #   @param name [String, nil]
          #
          #   @param price [Integer, nil]
          #
          #   @param price_detail [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice, nil] One-time price details.
          #
          #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory, nil] Represents the different categories of taxation applicable to various products a
          #
          #   @param tax_inclusive [Boolean, nil]
        end
      end
    end
  end
end
