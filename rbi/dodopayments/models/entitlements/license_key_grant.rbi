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

        # Identifier of the issued license key.
        sig { returns(String) }
        attr_accessor :id

        # Number of instances currently active. Activation increments it and deactivation
        # decrements it, so it is a live count and not a total.
        sig { returns(Integer) }
        attr_accessor :activations_used

        # Issued license key.
        sig { returns(String) }
        attr_accessor :key

        # Current status of the license key. Activation fails unless it is `active`, so a
        # client can warn before the customer tries.
        sig { returns(Dodopayments::LicenseKeyStatus::TaggedSymbol) }
        attr_accessor :status

        # Maximum activations allowed by the entitlement, when set.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :activations_limit

        # When the license key expires, when applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :expires_at

        # License-key delivery payload, present on grants for `license_key` entitlements.
        # The grant's top-level `status` is the source of truth for the grant's lifecycle.
        sig do
          params(
            id: String,
            activations_used: Integer,
            key: String,
            status: Dodopayments::LicenseKeyStatus::OrSymbol,
            activations_limit: T.nilable(Integer),
            expires_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifier of the issued license key.
          id:,
          # Number of instances currently active. Activation increments it and deactivation
          # decrements it, so it is a live count and not a total.
          activations_used:,
          # Issued license key.
          key:,
          # Current status of the license key. Activation fails unless it is `active`, so a
          # client can warn before the customer tries.
          status:,
          # Maximum activations allowed by the entitlement, when set.
          activations_limit: nil,
          # When the license key expires, when applicable.
          expires_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              activations_used: Integer,
              key: String,
              status: Dodopayments::LicenseKeyStatus::TaggedSymbol,
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
