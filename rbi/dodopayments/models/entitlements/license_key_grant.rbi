# typed: strong

module Dodopayments
  module Models
    module Entitlements
      class LicenseKeyGrant < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::LicenseKeyGrant,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :activations_used

        sig { returns(String) }
        attr_accessor :key

        sig { returns(T.nilable(Integer)) }
        attr_accessor :activations_limit

        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # Nested representation of license-key grant fields. Present only when the grant's
        # entitlement has `integration_type = 'license_key'` and a row exists in
        # `license_keys`. The grant's top-level `status` is the source of truth for the
        # grant's lifecycle — no per-license-key status is exposed here.
        sig do
          params(
            activations_used: Integer,
            key: String,
            activations_limit: T.nilable(Integer),
            expires_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          activations_used:,
          key:,
          activations_limit: nil,
          expires_at: nil
        )
        end

        sig do
          override.returns(
            {
              activations_used: Integer,
              key: String,
              activations_limit: T.nilable(Integer),
              expires_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
