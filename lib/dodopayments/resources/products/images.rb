# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      class Images
        # @overload update(id, force_update: nil, request_options: {})
        #
        # @param id [String] Product Id
        #
        # @param force_update [Boolean, nil]
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::ImageUpdateResponse]
        #
        # @see Dodopayments::Models::Products::ImageUpdateParams
        def update(id, params = {})
          parsed, options = Dodopayments::Products::ImageUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["products/%1$s/images", id],
            query: parsed,
            model: Dodopayments::Models::Products::ImageUpdateResponse,
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
