# typed: strong

module Dodopayments
  module Models
    module Blocklist
      class BlockByCustomerID < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::BlockByCustomerID,
              Dodopayments::Internal::AnyHash
            )
          end

        # Customer to block. The block still applies to that customer's email.
        sig { returns(String) }
        attr_accessor :customer_id

        sig { params(customer_id: String).returns(T.attached_class) }
        def self.new(
          # Customer to block. The block still applies to that customer's email.
          customer_id:
        )
        end

        sig { override.returns({ customer_id: String }) }
        def to_hash
        end
      end
    end
  end
end
