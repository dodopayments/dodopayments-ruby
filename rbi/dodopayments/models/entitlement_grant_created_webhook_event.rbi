# typed: strong

module Dodopayments
  module Models
    class EntitlementGrantCreatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::EntitlementGrantCreatedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Dodopayments::EntitlementGrantCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(
          Dodopayments::EntitlementGrantCreatedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          type:
            Dodopayments::EntitlementGrantCreatedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type:
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::EntitlementGrantCreatedWebhookEvent::Data,
            timestamp: Time,
            type:
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :business_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :entitlement_id

        sig { returns(String) }
        attr_accessor :external_id

        sig do
          returns(
            Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :delivered_at

        # Present only when the entitlement integration_type is `digital_files`. Populated
        # eagerly on every list and single-record endpoint.
        sig { returns(T.nilable(Dodopayments::DigitalProductDelivery)) }
        attr_reader :digital_product_delivery

        sig do
          params(
            digital_product_delivery:
              T.nilable(Dodopayments::DigitalProductDelivery::OrHash)
          ).void
        end
        attr_writer :digital_product_delivery

        sig { returns(T.nilable(String)) }
        attr_accessor :error_code

        sig { returns(T.nilable(String)) }
        attr_accessor :error_message

        # Present only when the entitlement integration_type is `license_key`.
        sig do
          returns(
            T.nilable(
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey
            )
          )
        end
        attr_reader :license_key

        sig do
          params(
            license_key:
              T.nilable(
                Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey::OrHash
              )
          ).void
        end
        attr_writer :license_key

        sig { returns(T.nilable(T.anything)) }
        attr_reader :metadata

        sig { params(metadata: T.anything).void }
        attr_writer :metadata

        sig { returns(T.nilable(Time)) }
        attr_accessor :oauth_expires_at

        sig { returns(T.nilable(String)) }
        attr_accessor :oauth_url

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_id

        sig { returns(T.nilable(String)) }
        attr_accessor :revocation_reason

        sig { returns(T.nilable(Time)) }
        attr_accessor :revoked_at

        sig { returns(T.nilable(String)) }
        attr_accessor :subscription_id

        sig do
          params(
            id: String,
            business_id: String,
            created_at: Time,
            customer_id: String,
            entitlement_id: String,
            external_id: String,
            status:
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::OrSymbol,
            updated_at: Time,
            delivered_at: T.nilable(Time),
            digital_product_delivery:
              T.nilable(Dodopayments::DigitalProductDelivery::OrHash),
            error_code: T.nilable(String),
            error_message: T.nilable(String),
            license_key:
              T.nilable(
                Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey::OrHash
              ),
            metadata: T.anything,
            oauth_expires_at: T.nilable(Time),
            oauth_url: T.nilable(String),
            payment_id: T.nilable(String),
            revocation_reason: T.nilable(String),
            revoked_at: T.nilable(Time),
            subscription_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          business_id:,
          created_at:,
          customer_id:,
          entitlement_id:,
          external_id:,
          status:,
          updated_at:,
          delivered_at: nil,
          # Present only when the entitlement integration_type is `digital_files`. Populated
          # eagerly on every list and single-record endpoint.
          digital_product_delivery: nil,
          error_code: nil,
          error_message: nil,
          # Present only when the entitlement integration_type is `license_key`.
          license_key: nil,
          metadata: nil,
          oauth_expires_at: nil,
          oauth_url: nil,
          payment_id: nil,
          revocation_reason: nil,
          revoked_at: nil,
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
              external_id: String,
              status:
                Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol,
              updated_at: Time,
              delivered_at: T.nilable(Time),
              digital_product_delivery:
                T.nilable(Dodopayments::DigitalProductDelivery),
              error_code: T.nilable(String),
              error_message: T.nilable(String),
              license_key:
                T.nilable(
                  Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey
                ),
              metadata: T.anything,
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

        module Status
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :Pending,
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :Delivered,
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :Failed,
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol
            )
          REVOKED =
            T.let(
              :Revoked,
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class LicenseKey < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::EntitlementGrantCreatedWebhookEvent::Data::LicenseKey,
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

          # Present only when the entitlement integration_type is `license_key`.
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

      # The event type
      module Type
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENTITLEMENT_GRANT_CREATED =
          T.let(
            :"entitlement_grant.created",
            Dodopayments::EntitlementGrantCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::EntitlementGrantCreatedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
