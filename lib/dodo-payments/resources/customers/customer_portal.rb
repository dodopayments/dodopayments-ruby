# frozen_string_literal: true

module DodoPayments
  module Resources
    class Customers
      class CustomerPortal
        # @return [DodoPayments::Resources::Customers::CustomerPortal::Session]
        attr_reader :session

        # @param client [DodoPayments::Client]
        def initialize(client:)
          @client = client
          @session = DodoPayments::Resources::Customers::CustomerPortal::Session.new(client: client)
        end
      end
    end
  end
end
