# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      # @return [Dodopayments::Resources::Products::Images]
      attr_reader :images

      # @overload create(price:, tax_category:, addons: nil, description: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, request_options: {})
      #
      # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      # @param tax_category [Symbol, Dodopayments::Models::ProductCreateParams::TaxCategory]
      # @param addons [Array<String>, nil]
      # @param description [String, nil]
      # @param license_key_activation_message [String, nil]
      # @param license_key_activations_limit [Integer, nil]
      # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      # @param license_key_enabled [Boolean, nil]
      # @param name [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Product]
      #
      # @see Dodopayments::Models::ProductCreateParams
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

      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Product]
      #
      # @see Dodopayments::Models::ProductRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["products/%1$s", id],
          model: Dodopayments::Models::Product,
          options: params[:request_options]
        )
      end

      # @overload update(id, addons: nil, description: nil, image_id: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #
      # @param id [String]
      # @param addons [Array<String>, nil]
      # @param description [String, nil]
      # @param image_id [String, nil]
      # @param license_key_activation_message [String, nil]
      # @param license_key_activations_limit [Integer, nil]
      # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      # @param license_key_enabled [Boolean, nil]
      # @param name [String, nil]
      # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      # @param tax_category [Symbol, Dodopayments::Models::ProductUpdateParams::TaxCategory, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::ProductUpdateParams
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

      # @overload list(archived: nil, page_number: nil, page_size: nil, recurring: nil, request_options: {})
      #
      # @param archived [Boolean]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param recurring [Boolean, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::ProductListResponse>]
      #
      # @see Dodopayments::Models::ProductListParams
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

      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::ProductDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["products/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload unarchive(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::ProductUnarchiveParams
      def unarchive(id, params = {})
        @client.request(
          method: :post,
          path: ["products/%1$s/unarchive", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @images = Dodopayments::Resources::Products::Images.new(client: client)
      end
    end
  end
end
