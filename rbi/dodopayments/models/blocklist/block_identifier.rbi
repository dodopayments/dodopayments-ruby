# typed: strong

module Dodopayments
  module Models
    module Blocklist
      # Which customer to block. Untagged, so the caller sends `customer_id` or `email`
      # at the top level, as `CustomerRequest` does on the payment routes. A body that
      # carries both matches the first variant, so `customer_id` wins.
      module BlockIdentifier
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::BlockByCustomerID,
              Dodopayments::Blocklist::BlockByEmail
            )
          end

        sig do
          override.returns(
            T::Array[Dodopayments::Blocklist::BlockIdentifier::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
