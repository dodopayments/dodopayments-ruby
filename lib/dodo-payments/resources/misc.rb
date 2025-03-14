# frozen_string_literal: true

module DodoPayments
  module Resources
    class Misc
      # @return [DodoPayments::Resources::Misc::SupportedCountries]
      attr_reader :supported_countries

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
        @supported_countries = DodoPayments::Resources::Misc::SupportedCountries.new(client: client)
      end
    end
  end
end
