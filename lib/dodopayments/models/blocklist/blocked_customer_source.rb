# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      # Where a block came from. `Api` marks an API-key caller, which carries no
      # dashboard actor. The other values name the screen the merchant used.
      module BlockedCustomerSource
        extend Dodopayments::Internal::Type::Enum

        BLOCKLIST_PAGE = :blocklist_page
        CUSTOMER_PAGE = :customer_page
        PAYMENT_PAGE = :payment_page
        DISPUTE_PAGE = :dispute_page
        API = :api

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
