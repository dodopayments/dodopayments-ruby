# frozen_string_literal: true

module DodoPayments
  module Resources
    class Products
      class Images
        # @param id [String] Product Id
        #
        # @param params [DodoPayments::Models::Products::ImageUpdateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [Boolean, nil] :force_update
        #
        #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [DodoPayments::Models::Products::ImageUpdateResponse]
        def update(id, params = {})
          parsed, options = DodoPayments::Models::Products::ImageUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["products/%0s/images", id],
            query: parsed,
            model: DodoPayments::Models::Products::ImageUpdateResponse,
            options: options
          )
        end

        # @param client [DodoPayments::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
