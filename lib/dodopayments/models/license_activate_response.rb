# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Licenses#activate
    class LicenseActivateResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute id
      #   License key instance ID
      #
      #   @return [String]
      required :id, String

      # @!attribute business_id
      #   Business ID
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Creation timestamp
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute customer
      #   Limited customer details associated with the license key.
      #
      #   @return [Dodopayments::Models::CustomerLimitedDetails]
      required :customer, -> { Dodopayments::CustomerLimitedDetails }

      # @!attribute license_key_id
      #   Associated license key ID
      #
      #   @return [String]
      required :license_key_id, String

      # @!attribute name
      #   Instance name
      #
      #   @return [String]
      required :name, String

      # @!attribute product
      #   Related product info. Present if the license key is tied to a product.
      #
      #   @return [Dodopayments::Models::LicenseActivateResponse::Product]
      required :product, -> { Dodopayments::Models::LicenseActivateResponse::Product }

      # @!method initialize(id:, business_id:, created_at:, customer:, license_key_id:, name:, product:)
      #   @param id [String] License key instance ID
      #
      #   @param business_id [String] Business ID
      #
      #   @param created_at [Time] Creation timestamp
      #
      #   @param customer [Dodopayments::Models::CustomerLimitedDetails] Limited customer details associated with the license key.
      #
      #   @param license_key_id [String] Associated license key ID
      #
      #   @param name [String] Instance name
      #
      #   @param product [Dodopayments::Models::LicenseActivateResponse::Product] Related product info. Present if the license key is tied to a product.

      # @see Dodopayments::Models::LicenseActivateResponse#product
      class Product < Dodopayments::Internal::Type::BaseModel
        # @!attribute product_id
        #   Unique identifier for the product.
        #
        #   @return [String]
        required :product_id, String

        # @!attribute name
        #   Name of the product, if set by the merchant.
        #
        #   @return [String, nil]
        optional :name, String, nil?: true

        # @!method initialize(product_id:, name: nil)
        #   Related product info. Present if the license key is tied to a product.
        #
        #   @param product_id [String] Unique identifier for the product.
        #
        #   @param name [String, nil] Name of the product, if set by the merchant.
      end
    end
  end
end
