# typed: strong

module Dodopayments
  module Models
    module Blocklist
      class BlockByEmail < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::BlockByEmail,
              Dodopayments::Internal::AnyHash
            )
          end

        # Email to block. It must belong to an existing customer of this business.
        sig { returns(String) }
        attr_accessor :email

        sig { params(email: String).returns(T.attached_class) }
        def self.new(
          # Email to block. It must belong to an existing customer of this business.
          email:
        )
        end

        sig { override.returns({ email: String }) }
        def to_hash
        end
      end
    end
  end
end
