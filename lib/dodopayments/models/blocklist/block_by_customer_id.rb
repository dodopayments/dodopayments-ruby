# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      class BlockByCustomerID < Dodopayments::Internal::Type::BaseModel
        # @!attribute customer_id
        #   Customer to block. The block still applies to that customer's email.
        #
        #   @return [String]
        required :customer_id, String

        # @!method initialize(customer_id:)
        #   @param customer_id [String] Customer to block. The block still applies to that customer's email.
      end
    end
  end
end
