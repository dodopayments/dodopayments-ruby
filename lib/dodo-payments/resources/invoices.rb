# frozen_string_literal: true

module DodoPayments
  module Resources
    class Invoices
      # @return [DodoPayments::Resources::Invoices::Payments]
      attr_reader :payments

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
        @payments = DodoPayments::Resources::Invoices::Payments.new(client: client)
      end
    end
  end
end
