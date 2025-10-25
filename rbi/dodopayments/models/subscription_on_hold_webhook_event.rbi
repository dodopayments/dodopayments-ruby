# typed: strong

module Dodopayments
  module Models
    class SubscriptionOnHoldWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionOnHoldWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Event-specific data
      sig { returns(Dodopayments::SubscriptionOnHoldWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::SubscriptionOnHoldWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(
          Dodopayments::SubscriptionOnHoldWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::SubscriptionOnHoldWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Dodopayments::SubscriptionOnHoldWebhookEvent::Type::OrSymbol
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
            data: Dodopayments::SubscriptionOnHoldWebhookEvent::Data,
            timestamp: Time,
            type:
              Dodopayments::SubscriptionOnHoldWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Models::Subscription
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionOnHoldWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        # The type of payload in the data field
        sig do
          returns(
            T.nilable(
              Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType::TaggedSymbol
            )
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # Event-specific data
        sig do
          params(
            payload_type:
              Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType::OrSymbol
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
                Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType::TaggedSymbol
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
                Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIPTION =
            T.let(
              :Subscription,
              Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::SubscriptionOnHoldWebhookEvent::Data::PayloadType::TaggedSymbol
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
            T.all(Symbol, Dodopayments::SubscriptionOnHoldWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_ON_HOLD =
          T.let(
            :"subscription.on_hold",
            Dodopayments::SubscriptionOnHoldWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionOnHoldWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
