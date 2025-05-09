# frozen_string_literal: true

module Dodopayments
  module Resources
    class Addons
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::AddonCreateParams} for more details.
      #
      # @overload create(currency:, name:, price:, tax_category:, description: nil, request_options: {})
      #
      # @param currency [Symbol, Dodopayments::Currency]
      #
      # @param name [String] Name of the Addon
      #
      # @param price [Integer] Amount of the addon
      #
      # @param tax_category [Symbol, Dodopayments::TaxCategory] Represents the different categories of taxation applicable to various products a
      #
      # @param description [String, nil] Optional description of the Addon
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::AddonResponse]
      #
      # @see Dodopayments::Models::AddonCreateParams
      def create(params)
        parsed, options = Dodopayments::AddonCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "addons",
          body: parsed,
          model: Dodopayments::AddonResponse,
          options: options
        )
      end

      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Addon Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::AddonResponse]
      #
      # @see Dodopayments::Models::AddonRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["addons/%1$s", id],
          model: Dodopayments::AddonResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::AddonUpdateParams} for more details.
      #
      # @overload update(id, currency: nil, description: nil, image_id: nil, name: nil, price: nil, tax_category: nil, request_options: {})
      #
      # @param id [String] Addon Id
      #
      # @param currency [Symbol, Dodopayments::Currency, nil]
      #
      # @param description [String, nil] Description of the Addon, optional and must be at most 1000 characters.
      #
      # @param image_id [String, nil] Addon image id after its uploaded to S3
      #
      # @param name [String, nil] Name of the Addon, optional and must be at most 100 characters.
      #
      # @param price [Integer, nil] Amount of the addon
      #
      # @param tax_category [Symbol, Dodopayments::TaxCategory, nil] Represents the different categories of taxation applicable to various products a
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::AddonResponse]
      #
      # @see Dodopayments::Models::AddonUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::AddonUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["addons/%1$s", id],
          body: parsed,
          model: Dodopayments::AddonResponse,
          options: options
        )
      end

      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::AddonResponse>]
      #
      # @see Dodopayments::Models::AddonListParams
      def list(params = {})
        parsed, options = Dodopayments::AddonListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "addons",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::AddonResponse,
          options: options
        )
      end

      # @overload update_images(id, request_options: {})
      #
      # @param id [String] Addon Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::AddonUpdateImagesResponse]
      #
      # @see Dodopayments::Models::AddonUpdateImagesParams
      def update_images(id, params = {})
        @client.request(
          method: :put,
          path: ["addons/%1$s/images", id],
          model: Dodopayments::Models::AddonUpdateImagesResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
