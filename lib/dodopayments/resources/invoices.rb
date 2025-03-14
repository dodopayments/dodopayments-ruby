# frozen_string_literal: true

module Dodopayments
  module Resources
    class Invoices
      # @return [Dodopayments::Resources::Invoices::Payments]
      attr_reader :payments

      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @payments = Dodopayments::Resources::Invoices::Payments.new(client: client)
      end
    end
  end
end
