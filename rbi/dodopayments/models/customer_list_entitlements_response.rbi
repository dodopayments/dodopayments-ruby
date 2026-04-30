# typed: strong

module Dodopayments
  module Models
    class CustomerListEntitlementsResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::CustomerListEntitlementsResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Dodopayments::Models::CustomerListEntitlementsResponse::Item]
        )
      end
      attr_accessor :items

      sig do
        params(
          items:
            T::Array[
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(items:)
      end

      sig do
        override.returns(
          {
            items:
              T::Array[
                Dodopayments::Models::CustomerListEntitlementsResponse::Item
              ]
          }
        )
      end
      def to_hash
      end

      class Item < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CustomerListEntitlementsResponse::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        # The entitlement this grant belongs to.
        sig { returns(String) }
        attr_accessor :entitlement_id

        sig { returns(String) }
        attr_accessor :entitlement_name

        # Grant id (the per-customer row in `entitlement_grants`).
        sig { returns(String) }
        attr_accessor :grant_id

        sig do
          returns(
            Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
          )
        end
        attr_accessor :integration_type

        sig do
          returns(
            Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :delivered_at

        sig { returns(T.nilable(String)) }
        attr_accessor :entitlement_description

        sig { returns(T.nilable(Time)) }
        attr_accessor :revoked_at

        sig do
          params(
            created_at: Time,
            entitlement_id: String,
            entitlement_name: String,
            grant_id: String,
            integration_type:
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::OrSymbol,
            status:
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::OrSymbol,
            updated_at: Time,
            delivered_at: T.nilable(Time),
            entitlement_description: T.nilable(String),
            revoked_at: T.nilable(Time)
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          # The entitlement this grant belongs to.
          entitlement_id:,
          entitlement_name:,
          # Grant id (the per-customer row in `entitlement_grants`).
          grant_id:,
          integration_type:,
          status:,
          updated_at:,
          delivered_at: nil,
          entitlement_description: nil,
          revoked_at: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              entitlement_id: String,
              entitlement_name: String,
              grant_id: String,
              integration_type:
                Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol,
              status:
                Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol,
              updated_at: Time,
              delivered_at: T.nilable(Time),
              entitlement_description: T.nilable(String),
              revoked_at: T.nilable(Time)
            }
          )
        end
        def to_hash
        end

        module IntegrationType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISCORD =
            T.let(
              :discord,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          GITHUB =
            T.let(
              :github,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          FIGMA =
            T.let(
              :figma,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          FRAMER =
            T.let(
              :framer,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          NOTION =
            T.let(
              :notion,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          DIGITAL_FILES =
            T.let(
              :digital_files,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )
          LICENSE_KEY =
            T.let(
              :license_key,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::CustomerListEntitlementsResponse::Item::IntegrationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol
            )
          REVOKED =
            T.let(
              :revoked,
              Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::CustomerListEntitlementsResponse::Item::Status::TaggedSymbol
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
