# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::LicenseKeys#create
    class LicenseKeyCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # @!attribute customer_id
      #   The customer this license key belongs to.
      #
      #   @return [String]
      required :customer_id, String

      # @!attribute key
      #   The license key string to import.
      #
      #   @return [String]
      required :key, String

      # @!attribute product_id
      #   The product this license key is for.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute activations_limit
      #   Maximum number of activations allowed. Null means unlimited.
      #
      #   @return [Integer, nil]
      optional :activations_limit, Integer, nil?: true

      # @!attribute expires_at
      #   Expiration timestamp. Null means the key never expires.
      #
      #   @return [Time, nil]
      optional :expires_at, Time, nil?: true

      # @!method initialize(customer_id:, key:, product_id:, activations_limit: nil, expires_at: nil, request_options: {})
      #   @param customer_id [String] The customer this license key belongs to.
      #
      #   @param key [String] The license key string to import.
      #
      #   @param product_id [String] The product this license key is for.
      #
      #   @param activations_limit [Integer, nil] Maximum number of activations allowed. Null means unlimited.
      #
      #   @param expires_at [Time, nil] Expiration timestamp. Null means the key never expires.
      #
      #   @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
