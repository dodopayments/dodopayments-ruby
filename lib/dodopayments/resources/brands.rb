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
      # @return [Dodopayments::Models::Brand]
      #
      # @see Dodopayments::Models::BrandCreateParams
      def create(params = {})
        parsed, options = Dodopayments::BrandCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "brands",
          body: parsed,
          model: Dodopayments::Brand,
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
      # @return [Dodopayments::Models::Brand]
      #
      # @see Dodopayments::Models::BrandRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["brands/%1$s", id],
          model: Dodopayments::Brand,
          options: params[:request_options]
        )
      end

      # @overload update(id, description: nil, image_id: nil, name: nil, statement_descriptor: nil, support_email: nil, url: nil, request_options: {})
      #
      # @param id [String] Brand Id
      #
      # @param description [String, nil]
      #
      # @param image_id [String, nil] The UUID you got back from the presigned‐upload call
      #
      # @param name [String, nil]
      #
      # @param statement_descriptor [String, nil]
      #
      # @param support_email [String, nil]
      #
      # @param url [String, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Brand]
      #
      # @see Dodopayments::Models::BrandUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::BrandUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["brands/%1$s", id],
          body: parsed,
          model: Dodopayments::Brand,
          options: options
        )
      end

      # @overload list(include_archived: nil, request_options: {})
      #
      # @param include_archived [Boolean] Set to true to also list archived brands. Default false.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandListResponse]
      #
      # @see Dodopayments::Models::BrandListParams
      def list(params = {})
        parsed, options = Dodopayments::BrandListParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "brands",
          query: query,
          model: Dodopayments::Models::BrandListResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::BrandArchiveParams} for more details.
      #
      # Archive a brand. Its products, live subscriptions, and product collections move
      # to the `move_products_to` brand. Archive is permanent.
      #
      # @overload archive(id, move_products_to: nil, request_options: {})
      #
      # @param id [String] Brand Id
      #
      # @param move_products_to [String, nil] Brand that takes over the products and the live subscriptions of the
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::BrandArchiveResponse]
      #
      # @see Dodopayments::Models::BrandArchiveParams
      def archive(id, params = {})
        parsed, options = Dodopayments::BrandArchiveParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["brands/%1$s/archive", id],
          body: parsed,
          model: Dodopayments::Models::BrandArchiveResponse,
          options: options
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
