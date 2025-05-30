# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Addons#create
    class AddonCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Models::Currency]
      required :currency, enum: -> { Dodopayments::Models::Currency }

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
      required :tax_category, enum: -> { Dodopayments::Models::TaxCategory }

      # @!attribute description
      #   Optional description of the Addon
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!method initialize(currency:, name:, price:, tax_category:, description: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AddonCreateParams} for more details.
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency]
      #
      #   @param name [String] Name of the Addon
      #
      #   @param price [Integer] Amount of the addon
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
      #   ...
      #
      #   @param description [String, nil] Optional description of the Addon
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
