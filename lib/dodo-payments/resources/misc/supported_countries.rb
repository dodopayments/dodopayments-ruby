# frozen_string_literal: true

module DodoPayments
  module Resources
    class Misc
      class SupportedCountries
        # @param params [DodoPayments::Models::Misc::SupportedCountryListParams, Hash{Symbol=>Object}] .
        #
        #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Array<Symbol, DodoPayments::Models::Misc::CountryCode>]
        def list(params = {})
          @client.request(
            method: :get,
            path: "checkout/supported_countries",
            model: DodoPayments::ArrayOf[enum: DodoPayments::Models::Misc::CountryCode],
            options: params[:request_options]
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
