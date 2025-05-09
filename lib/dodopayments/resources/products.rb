# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      # @return [Dodopayments::Resources::Products::Images]
      attr_reader :images

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::ProductCreateParams} for more details.
      #
      # @overload create(price:, tax_category:, addons: nil, description: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, request_options: {})
      #
      # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]
      #
      # @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Represents the different categories of taxation applicable to various products a
      # ...
      #
      # @param addons [Array<String>, nil] Addons available for subscription product
      #
      # @param description [String, nil] Optional description of the product
      #
      # @param license_key_activation_message [String, nil] Optional message displayed during license key activation
      #
      # @param license_key_activations_limit [Integer, nil] The number of times the license key can be activated. ...
      #
      # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #
      # @param license_key_enabled [Boolean, nil] When true, generates and sends a license key to your customer. ...
      #
      # @param name [String, nil] Optional name of the product
      #
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
      # @param id [String] Product Id
      #
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

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::ProductUpdateParams} for more details.
      #
      # @overload update(id, addons: nil, description: nil, image_id: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, license_key_enabled: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #
      # @param id [String]
      #
      # @param addons [Array<String>, nil] Available Addons for subscription products
      #
      # @param description [String, nil] Description of the product, optional and must be at most 1000 characters.
      #
      # @param image_id [String, nil] Product image id after its uploaded to S3
      #
      # @param license_key_activation_message [String, nil] Message sent to the customer upon license key activation. ...
      #
      # @param license_key_activations_limit [Integer, nil] Limit for the number of activations for the license key. ...
      #
      # @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil]
      #
      # @param license_key_enabled [Boolean, nil] Whether the product requires a license key. ...
      #
      # @param name [String, nil] Name of the product, optional and must be at most 100 characters.
      #
      # @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, nil]
      #
      # @param tax_category [Symbol, Dodopayments::Models::TaxCategory, nil] Represents the different categories of taxation applicable to various products a
      # ...
      #
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

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::ProductListParams} for more details.
      #
      # @overload list(archived: nil, page_number: nil, page_size: nil, recurring: nil, request_options: {})
      #
      # @param archived [Boolean] List archived products
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param recurring [Boolean, nil] Filter products by pricing type: ...
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::ProductListResponse>]
      #
      # @see Dodopayments::Models::ProductListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::ProductListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "products",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
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
