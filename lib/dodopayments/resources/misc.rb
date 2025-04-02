# frozen_string_literal: true

module Dodopayments
  module Resources
    class Misc
      # @param params [Dodopayments::Models::MiscListSupportedCountriesParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Symbol, Dodopayments::Models::CountryCode>]
      #
      # @see Dodopayments::Models::MiscListSupportedCountriesParams
      def list_supported_countries(params = {})
        @client.request(
          method: :get,
          path: "checkout/supported_countries",
          model: Dodopayments::ArrayOf[enum: Dodopayments::Models::CountryCode],
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
