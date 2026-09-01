# frozen_string_literal: true

module Dodopayments
  module Resources
    class Blocklist
      # @return [Dodopayments::Resources::Blocklist::Customers]
      attr_reader :customers

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @customers = Dodopayments::Resources::Blocklist::Customers.new(client: client)
      end
    end
  end
end
