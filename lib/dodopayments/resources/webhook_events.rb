# frozen_string_literal: true

module Dodopayments
  module Resources
    class WebhookEvents
      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
