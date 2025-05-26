# frozen_string_literal: true

module Dodopayments
  module Resources
    class Brands
      # @overload create(description: nil, name: nil, statement_descriptor: nil, support_email: nil, url: nil, request_options: {})
      #
      # @param description [String, nil]
      # @param name [String, nil]
      # @param statement_descriptor [String, nil]
      # @param support_email [String, nil]
      # @param url [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandCreateResponse]
      #
      # @see Dodopayments::Models::BrandCreateParams
      def create(params = {})
        parsed, options = Dodopayments::BrandCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brands",
          body: parsed,
          model: Dodopayments::Models::BrandCreateResponse,
          options: options
        )
      end

      # Thin handler just calls `get_brand` and wraps in `Json(...)`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Brand Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandRetrieveResponse]
      #
      # @see Dodopayments::Models::BrandRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["brands/%1$s", id],
          model: Dodopayments::Models::BrandRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @overload update(id, image_id: nil, name: nil, statement_descriptor: nil, support_email: nil, request_options: {})
      #
      # @param id [String] Brand Id
      #
      # @param image_id [String, nil] The UUID you got back from the presigned‐upload call
      #
      # @param name [String, nil]
      #
      # @param statement_descriptor [String, nil]
      #
      # @param support_email [String, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandUpdateResponse]
      #
      # @see Dodopayments::Models::BrandUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::BrandUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["brands/%1$s", id],
          body: parsed,
          model: Dodopayments::Models::BrandUpdateResponse,
          options: options
        )
      end

      # @overload list(request_options: {})
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandListResponse]
      #
      # @see Dodopayments::Models::BrandListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "brands",
          model: Dodopayments::Models::BrandListResponse,
          options: params[:request_options]
        )
      end

      # @overload update_images(id, request_options: {})
      #
      # @param id [String] Brand Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandUpdateImagesResponse]
      #
      # @see Dodopayments::Models::BrandUpdateImagesParams
      def update_images(id, params = {})
        @client.request(
          method: :put,
          path: ["brands/%1$s/images", id],
          model: Dodopayments::Models::BrandUpdateImagesResponse,
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
