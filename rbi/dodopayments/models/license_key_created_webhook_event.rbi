# typed: strong

module Dodopayments
  module Models
    class LicenseKeyCreatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::LicenseKeyCreatedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Event-specific data
      sig { returns(Dodopayments::LicenseKeyCreatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::LicenseKeyCreatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(Dodopayments::LicenseKeyCreatedWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::LicenseKeyCreatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Dodopayments::LicenseKeyCreatedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Event-specific data
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
            data: Dodopayments::LicenseKeyCreatedWebhookEvent::Data,
            timestamp: Time,
            type:
              Dodopayments::LicenseKeyCreatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Models::LicenseKey
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::LicenseKeyCreatedWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        # The type of payload in the data field
        sig do
          returns(
            T.nilable(
              Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType::TaggedSymbol
            )
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # Event-specific data
        sig do
          params(
            payload_type:
              Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The type of payload in the data field
          payload_type: nil
        )
        end

        sig do
          override.returns(
            {
              payload_type:
                Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of payload in the data field
        module PayloadType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LICENSE_KEY =
            T.let(
              :LicenseKey,
              Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::LicenseKeyCreatedWebhookEvent::Data::PayloadType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # The event type
      module Type
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::LicenseKeyCreatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LICENSE_KEY_CREATED =
          T.let(
            :"license_key.created",
            Dodopayments::LicenseKeyCreatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::LicenseKeyCreatedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
