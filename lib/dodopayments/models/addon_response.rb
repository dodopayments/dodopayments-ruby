# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Addons#create
    class AddonResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   id of the Addon
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #   Unique identifier for the business to which the addon belongs.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Created time
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Currency }

      # @!attribute name
      #   Name of the Addon
      #
      #   @return [String]
      required :name, String

      # @!attribute price
      #   Amount of the addon
      #
      #   @return [Integer]
      required :price, Integer

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #   and services.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::TaxCategory }

      # @!attribute updated_at
      #   Updated time
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute description
      #   Optional description of the Addon
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   Image of the Addon
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!method initialize(id:, business_id:, created_at:, currency:, name:, price:, tax_category:, updated_at:, description: nil, image: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AddonResponse} for more details.
      #
      #   @param id [String] id of the Addon
      #
      #   @param business_id [String] Unique identifier for the business to which the addon belongs.
      #
      #   @param created_at [Time] Created time
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param name [String] Name of the Addon
      #
      #   @param price [Integer] Amount of the addon
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
      #
      #   @param updated_at [Time] Updated time
      #
      #   @param description [String, nil] Optional description of the Addon
      #
      #   @param image [String, nil] Image of the Addon
    end
  end
end
