# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      class ShortLinks
        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Products::ShortLinkCreateParams} for more details.
        #
        # Gives a Short Checkout URL with custom slug for a product. Uses a Static
        # Checkout URL under the hood.
        #
        # @overload create(id, slug:, static_checkout_params: nil, request_options: {})
        #
        # @param id [String] Product Id
        #
        # @param slug [String] Slug for the short link.
        #
        # @param static_checkout_params [Hash{Symbol=>String}, nil] Static Checkout URL parameters to apply to the resulting
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::ShortLinkCreateResponse]
        #
        # @see Dodopayments::Models::Products::ShortLinkCreateParams
        def create(id, params)
          parsed, options = Dodopayments::Products::ShortLinkCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["products/%1$s/short_links", id],
            body: parsed,
            model: Dodopayments::Models::Products::ShortLinkCreateResponse,
            options: options
          )
        end

        # Lists all short links created by the business.
        #
        # @overload list(page_number: nil, page_size: nil, product_id: nil, request_options: {})
        #
        # @param page_number [Integer] Page number default is 0
        #
        # @param page_size [Integer] Page size default is 10 max is 100
        #
        # @param product_id [String] Filter by product ID
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Products::ShortLinkListResponse>]
        #
        # @see Dodopayments::Models::Products::ShortLinkListParams
        def list(params = {})
          parsed, options = Dodopayments::Products::ShortLinkListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "products/short_links",
            query: parsed,
            page: Dodopayments::Internal::DefaultPageNumberPagination,
            model: Dodopayments::Models::Products::ShortLinkListResponse,
            options: options
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
end
