# typed: strong

module Dodopayments
  module Models
    class PaymentFailedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::PaymentFailedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Event-specific data
      sig { returns(Dodopayments::PaymentFailedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Dodopayments::PaymentFailedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(Dodopayments::PaymentFailedWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::PaymentFailedWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Dodopayments::PaymentFailedWebhookEvent::Type::OrSymbol
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
            data: Dodopayments::PaymentFailedWebhookEvent::Data,
            timestamp: Time,
            type: Dodopayments::PaymentFailedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Models::Payment
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::PaymentFailedWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        # The type of payload in the data field
        sig do
          returns(
            T.nilable(
              Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType::TaggedSymbol
            )
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # Event-specific data
        sig do
          params(
            payload_type:
              Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType::OrSymbol
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
                Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType::TaggedSymbol
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
                Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYMENT =
            T.let(
              :Payment,
              Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::PaymentFailedWebhookEvent::Data::PayloadType::TaggedSymbol
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
            T.all(Symbol, Dodopayments::PaymentFailedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            Dodopayments::PaymentFailedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::PaymentFailedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
