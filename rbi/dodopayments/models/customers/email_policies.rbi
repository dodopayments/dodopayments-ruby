# typed: strong

module Dodopayments
  module Models
    module Customers
      class EmailPolicies < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Customers::EmailPolicies,
              Dodopayments::Internal::AnyHash
            )
          end

        # A permanent failure was recorded, so the same address would be a no-op.
        sig { returns(T::Boolean) }
        attr_accessor :requires_different_address

        # The row was delivered and may be sent again.
        sig { returns(T::Boolean) }
        attr_accessor :resend_allowed

        # How many sends are left in this email's chain.
        sig { returns(Integer) }
        attr_accessor :resends_remaining

        # The row failed and may be sent again.
        sig { returns(T::Boolean) }
        attr_accessor :retry_allowed

        # A later send of this email replaced this row, so this row is history. A row that
        # never went out needs a later send that reached the provider. A failed row needs
        # a later send that was delivered.
        sig { returns(T::Boolean) }
        attr_accessor :superseded

        # What the merchant may do with one row. The server decides; the client never
        # derives eligibility itself.
        sig do
          params(
            requires_different_address: T::Boolean,
            resend_allowed: T::Boolean,
            resends_remaining: Integer,
            retry_allowed: T::Boolean,
            superseded: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A permanent failure was recorded, so the same address would be a no-op.
          requires_different_address:,
          # The row was delivered and may be sent again.
          resend_allowed:,
          # How many sends are left in this email's chain.
          resends_remaining:,
          # The row failed and may be sent again.
          retry_allowed:,
          # A later send of this email replaced this row, so this row is history. A row that
          # never went out needs a later send that reached the provider. A failed row needs
          # a later send that was delivered.
          superseded:
        )
        end

        sig do
          override.returns(
            {
              requires_different_address: T::Boolean,
              resend_allowed: T::Boolean,
              resends_remaining: Integer,
              retry_allowed: T::Boolean,
              superseded: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
