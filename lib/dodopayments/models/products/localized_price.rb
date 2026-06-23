# frozen_string_literal: true

module Dodopayments
  module Models
    module Products
      # @see Dodopayments::Resources::Products::LocalizedPrices#create
      class LocalizedPrice < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the localized price.
        #
        #   @return [String]
        required :id, String

        # @!attribute amount
        #   Amount in the smallest currency unit (e.g., cents).
        #
        #   @return [Integer]
        required :amount, Integer

        # @!attribute created_at
        #   Timestamp when the localized price was created.
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute currency
        #   Currency to charge in.
        #
        #   @return [Symbol, Dodopayments::Models::Currency]
        required :currency, enum: -> { Dodopayments::Currency }

        # @!attribute mode
        #   Pricing mode of the rule: by_currency or by_country.
        #
        #   @return [Symbol, Dodopayments::Models::Products::PricingMode]
        required :mode, enum: -> { Dodopayments::Products::PricingMode }

        # @!attribute product_id
        #   Product this localized price belongs to.
        #
        #   @return [String]
        required :product_id, String

        # @!attribute updated_at
        #   Timestamp when the localized price was last updated.
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute country_code
        #   Country the rule applies to. Only set when mode is by_country.
        #
        #   @return [Symbol, Dodopayments::Models::CountryCode, nil]
        optional :country_code, enum: -> { Dodopayments::CountryCode }, nil?: true

        # @!method initialize(id:, amount:, created_at:, currency:, mode:, product_id:, updated_at:, country_code: nil)
        #   @param id [String] Unique identifier for the localized price.
        #
        #   @param amount [Integer] Amount in the smallest currency unit (e.g., cents).
        #
        #   @param created_at [Time] Timestamp when the localized price was created.
        #
        #   @param currency [Symbol, Dodopayments::Models::Currency] Currency to charge in.
        #
        #   @param mode [Symbol, Dodopayments::Models::Products::PricingMode] Pricing mode of the rule: by_currency or by_country.
        #
        #   @param product_id [String] Product this localized price belongs to.
        #
        #   @param updated_at [Time] Timestamp when the localized price was last updated.
        #
        #   @param country_code [Symbol, Dodopayments::Models::CountryCode, nil] Country the rule applies to. Only set when mode is by_country.
      end
    end
  end
end
