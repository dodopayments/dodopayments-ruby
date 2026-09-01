# frozen_string_literal: true

module Dodopayments
  module Models
    module Blocklist
      # Which customer to block. Untagged, so the caller sends `customer_id` or `email`
      # at the top level, as `CustomerRequest` does on the payment routes. A body that
      # carries both matches the first variant, so `customer_id` wins.
      module BlockIdentifier
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::Blocklist::BlockByCustomerID }

        variant -> { Dodopayments::Blocklist::BlockByEmail }

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::Blocklist::BlockByCustomerID, Dodopayments::Models::Blocklist::BlockByEmail)]
      end
    end
  end
end
