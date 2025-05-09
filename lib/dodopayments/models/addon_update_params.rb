# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Addons#update
    class AddonUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute currency
      #
      #   @return [Symbol, Dodopayments::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute description
      #   Description of the Addon, optional and must be at most 1000 characters.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image_id
      #   Addon image id after its uploaded to S3
      #
      #   @return [String, nil]
      optional :image_id, String, nil?: true

      # @!attribute name
      #   Name of the Addon, optional and must be at most 100 characters.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute price
      #   Amount of the addon
      #
      #   @return [Integer, nil]
      optional :price, Integer, nil?: true

      # @!attribute tax_category
      #   Represents the different categories of taxation applicable to various products
      #   and services.
      #
      #   @return [Symbol, Dodopayments::TaxCategory, nil]
      optional :tax_category, enum: -> { Dodopayments::TaxCategory }, nil?: true

      # @!method initialize(currency: nil, description: nil, image_id: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::AddonUpdateParams} for more details.
      #
      #   @param currency [Symbol, Dodopayments::Currency, nil]
      #
      #   @param description [String, nil] Description of the Addon, optional and must be at most 1000 characters.
      #
      #   @param image_id [String, nil] Addon image id after its uploaded to S3
      #
      #   @param name [String, nil] Name of the Addon, optional and must be at most 100 characters.
      #
      #   @param price [Integer, nil] Amount of the addon
      #
      #   @param tax_category [Symbol, Dodopayments::TaxCategory, nil] Represents the different categories of taxation applicable to various products a
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
