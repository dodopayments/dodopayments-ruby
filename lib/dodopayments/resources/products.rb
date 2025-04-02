# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      # @return [Dodopayments::Resources::Products::Images]
      attr_reader :images

      # @param params [Dodopayments::Models::ProductCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice] :price
      #
      #   @option params [Symbol, Dodopayments::Models::ProductCreateParams::TaxCategory] :tax_category Represents the different categories of taxation applicable to various products
      #     and services.
      #
      #   @option params [Array<String>, nil] :addons Addons available for subscription product
      #
      #   @option params [String, nil] :description Optional description of the product
      #
      #   @option params [String, nil] :license_key_activation_message Optional message displayed during license key activation
      #
      #   @option params [Integer, nil] :license_key_activations_limit The number of times the license key can be activated. Must be 0 or greater
      #
      #   @option params [Dodopayments::Models::LicenseKeyDuration, nil] :license_key_duration
      #
      #   @option params [Boolean, nil] :license_key_enabled When true, generates and sends a license key to your customer. Defaults to false
      #
      #   @option params [String, nil] :name Optional name of the product
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Product]
      def create(params)
        parsed, options = Dodopayments::Models::ProductCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "products",
          body: parsed,
          model: Dodopayments::Models::Product,
          options: options
        )
      end

      # @param id [String] Product Id
      #
      # @param params [Dodopayments::Models::ProductRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::Product]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["products/%1$s", id],
          model: Dodopayments::Models::Product,
          options: params[:request_options]
        )
      end

      # @param id [String]
      #
      # @param params [Dodopayments::Models::ProductUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Array<String>, nil] :addons Available Addons for subscription products
      #
      #   @option params [String, nil] :description Description of the product, optional and must be at most 1000 characters.
      #
      #   @option params [String, nil] :image_id Product image id after its uploaded to S3
      #
      #   @option params [String, nil] :license_key_activation_message Message sent to the customer upon license key activation.
      #
      #     Only applicable if `license_key_enabled` is `true`. This message contains
      #     instructions for activating the license key.
      #
      #   @option params [Integer, nil] :license_key_activations_limit Limit for the number of activations for the license key.
      #
      #     Only applicable if `license_key_enabled` is `true`. Represents the maximum
      #     number of times the license key can be activated.
      #
      #   @option params [Dodopayments::Models::LicenseKeyDuration, nil] :license_key_duration
      #
      #   @option params [Boolean, nil] :license_key_enabled Whether the product requires a license key.
      #
      #     If `true`, additional fields related to license key (duration, activations
      #     limit, activation message) become applicable.
      #
      #   @option params [String, nil] :name Name of the product, optional and must be at most 100 characters.
      #
      #   @option params [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil] :price
      #
      #   @option params [Symbol, Dodopayments::Models::ProductUpdateParams::TaxCategory, nil] :tax_category Represents the different categories of taxation applicable to various products
      #     and services.
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def update(id, params = {})
        parsed, options = Dodopayments::Models::ProductUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["products/%1$s", id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @param params [Dodopayments::Models::ProductListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Boolean] :archived List archived products
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Boolean, nil] :recurring Filter products by pricing type:
      #
      #     - `true`: Show only recurring pricing products (e.g. subscriptions)
      #     - `false`: Show only one-time price products
      #     - `null` or absent: Show both types of products
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::ProductListResponse>]
      def list(params = {})
        parsed, options = Dodopayments::Models::ProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "products",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::ProductListResponse,
          options: options
        )
      end

      # @param id [String]
      #
      # @param params [Dodopayments::Models::ProductDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["products/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @param id [String]
      #
      # @param params [Dodopayments::Models::ProductUnarchiveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def unarchive(id, params = {})
        @client.request(
          method: :post,
          path: ["products/%1$s/unarchive", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @images = Dodopayments::Resources::Products::Images.new(client: client)
      end
    end
  end
end
