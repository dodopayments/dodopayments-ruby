# frozen_string_literal: true

module Dodopayments
  module Resources
    class Misc
      # @overload list_supported_countries(request_options: {})
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Symbol, Dodopayments::CountryCode>]
      #
      # @see Dodopayments::Models::MiscListSupportedCountriesParams
      def list_supported_countries(params = {})
        @client.request(
          method: :get,
          path: "checkout/supported_countries",
          model: Dodopayments::Internal::Type::ArrayOf[enum: Dodopayments::CountryCode],
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
