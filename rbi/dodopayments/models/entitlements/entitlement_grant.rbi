# typed: strong

module Dodopayments
  module Models
    EntitlementGrant = Entitlements::EntitlementGrant

    module Entitlements
      class EntitlementGrant < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::EntitlementGrant,
              Dodopayments::Internal::AnyHash
            )
          end

        # Unique identifier of the grant.
        sig { returns(String) }
        attr_accessor :id

        # Identifier of the business that owns the grant.
        sig { returns(String) }
        attr_accessor :business_id

        # Timestamp when the grant was created.
        sig { returns(Time) }
        attr_accessor :created_at

        # Identifier of the customer the grant was issued to.
        sig { returns(String) }
        attr_accessor :customer_id

        # Identifier of the entitlement this grant was issued from.
        sig { returns(String) }
        attr_accessor :entitlement_id

        # The integration type of the grant's entitlement (e.g. `license_key`).
        sig { returns(Dodopayments::EntitlementIntegrationType::TaggedSymbol) }
        attr_accessor :integration_type

        # Arbitrary key-value metadata recorded on the grant.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :metadata

        # Lifecycle status of the grant.
        sig do
          returns(
            Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # Timestamp when the grant was last modified.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Timestamp when the grant transitioned to `delivered`, when applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :delivered_at

        # Digital-product-delivery payload, present when the entitlement integration is
        # `digital_files`.
        sig { returns(T.nilable(Dodopayments::DigitalProductDelivery)) }
        attr_reader :digital_product_delivery

        sig do
          params(
            digital_product_delivery:
              T.nilable(Dodopayments::DigitalProductDelivery::OrHash)
          ).void
        end
        attr_writer :digital_product_delivery

        # Machine-readable code reported when delivery failed, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :error_code

        # Human-readable message reported when delivery failed, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        # License-key delivery payload, present when the entitlement integration is
        # `license_key`.
        sig { returns(T.nilable(Dodopayments::Entitlements::LicenseKeyGrant)) }
        attr_reader :license_key

        sig do
          params(
            license_key:
              T.nilable(Dodopayments::Entitlements::LicenseKeyGrant::OrHash)
          ).void
        end
        attr_writer :license_key

        # Timestamp when `oauth_url` stops being valid, when applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :oauth_expires_at

        # Customer-facing OAuth URL for OAuth-style integrations. Populated during the
        # customer-portal accept flow; `null` until the customer completes that step, and
        # on grants for non-OAuth integrations.
        sig { returns(T.nilable(String)) }
        attr_accessor :oauth_url

        # Identifier of the payment that triggered this grant, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_id

        # Reason recorded when the grant was revoked, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :revocation_reason

        # Timestamp when the grant transitioned to `revoked`, when applicable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :revoked_at

        # Identifier of the subscription that triggered this grant, when applicable.
        sig { returns(T.nilable(String)) }
        attr_accessor :subscription_id

        # Detailed view of a single entitlement grant: who it's for, its lifecycle state,
        # and any integration-specific delivery payload.
        sig do
          params(
            id: String,
            business_id: String,
            created_at: Time,
            customer_id: String,
            entitlement_id: String,
            integration_type:
              Dodopayments::EntitlementIntegrationType::OrSymbol,
            metadata: T::Hash[Symbol, String],
            status:
              Dodopayments::Entitlements::EntitlementGrant::Status::OrSymbol,
            updated_at: Time,
            delivered_at: T.nilable(Time),
            digital_product_delivery:
              T.nilable(Dodopayments::DigitalProductDelivery::OrHash),
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            license_key:
              T.nilable(Dodopayments::Entitlements::LicenseKeyGrant::OrHash),
            oauth_expires_at: T.nilable(Time),
            oauth_url: T.nilable(String),
            payment_id: T.nilable(String),
            revocation_reason: T.nilable(String),
            revoked_at: T.nilable(Time),
            subscription_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier of the grant.
          id:,
          # Identifier of the business that owns the grant.
          business_id:,
          # Timestamp when the grant was created.
          created_at:,
          # Identifier of the customer the grant was issued to.
          customer_id:,
          # Identifier of the entitlement this grant was issued from.
          entitlement_id:,
          # The integration type of the grant's entitlement (e.g. `license_key`).
          integration_type:,
          # Arbitrary key-value metadata recorded on the grant.
          metadata:,
          # Lifecycle status of the grant.
          status:,
          # Timestamp when the grant was last modified.
          updated_at:,
          # Timestamp when the grant transitioned to `delivered`, when applicable.
          delivered_at: nil,
          # Digital-product-delivery payload, present when the entitlement integration is
          # `digital_files`.
          digital_product_delivery: nil,
          # Machine-readable code reported when delivery failed, when applicable.
          error_code: nil,
          # Human-readable message reported when delivery failed, when applicable.
          error_message: nil,
          # License-key delivery payload, present when the entitlement integration is
          # `license_key`.
          license_key: nil,
          # Timestamp when `oauth_url` stops being valid, when applicable.
          oauth_expires_at: nil,
          # Customer-facing OAuth URL for OAuth-style integrations. Populated during the
          # customer-portal accept flow; `null` until the customer completes that step, and
          # on grants for non-OAuth integrations.
          oauth_url: nil,
          # Identifier of the payment that triggered this grant, when applicable.
          payment_id: nil,
          # Reason recorded when the grant was revoked, when applicable.
          revocation_reason: nil,
          # Timestamp when the grant transitioned to `revoked`, when applicable.
          revoked_at: nil,
          # Identifier of the subscription that triggered this grant, when applicable.
          subscription_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              business_id: String,
              created_at: Time,
              customer_id: String,
              entitlement_id: String,
              integration_type:
                Dodopayments::EntitlementIntegrationType::TaggedSymbol,
              metadata: T::Hash[Symbol, String],
              status:
                Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol,
              updated_at: Time,
              delivered_at: T.nilable(Time),
              digital_product_delivery:
                T.nilable(Dodopayments::DigitalProductDelivery),
              error_code: T.nilable(String),
              error_message: T.nilable(String),
              license_key:
                T.nilable(Dodopayments::Entitlements::LicenseKeyGrant),
              oauth_expires_at: T.nilable(Time),
              oauth_url: T.nilable(String),
              payment_id: T.nilable(String),
              revocation_reason: T.nilable(String),
              revoked_at: T.nilable(Time),
              subscription_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Lifecycle status of the grant.
        module Status
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Entitlements::EntitlementGrant::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :Pending,
              Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :Delivered,
              Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :Failed,
              Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol
            )
          REVOKED =
            T.let(
              :Revoked,
              Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Entitlements::EntitlementGrant::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
