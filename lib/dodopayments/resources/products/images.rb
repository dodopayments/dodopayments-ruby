# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      class Images
        # @param id [String] Product Id
        #
        # @param params [Dodopayments::Models::Products::ImageUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Boolean, nil] :force_update
        #
        #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Dodopayments::Models::Products::ImageUpdateResponse]
        #
        # @see Dodopayments::Models::Products::ImageUpdateParams
        def update(id, params = {})
          parsed, options = Dodopayments::Models::Products::ImageUpdateParams.dump_request(params)
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
