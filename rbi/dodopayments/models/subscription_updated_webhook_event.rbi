# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdatedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionUpdatedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Event-specific data
      sig { returns(Dodopayments::SubscriptionUpdatedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::SubscriptionUpdatedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(
          Dodopayments::SubscriptionUpdatedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::SubscriptionUpdatedWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Dodopayments::SubscriptionUpdatedWebhookEvent::Type::OrSymbol
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
            data: Dodopayments::SubscriptionUpdatedWebhookEvent::Data,
            timestamp: Time,
            type:
              Dodopayments::SubscriptionUpdatedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Models::Subscription
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionUpdatedWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        # The type of payload in the data field
        sig do
          returns(
            T.nilable(
              Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType::TaggedSymbol
            )
          )
        end
        attr_reader :payload_type

        sig do
          params(
            payload_type:
              Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType::OrSymbol
          ).void
        end
        attr_writer :payload_type

        # Event-specific data
        sig do
          params(
            payload_type:
              Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType::OrSymbol
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
                Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType::TaggedSymbol
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
                Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIPTION =
            T.let(
              :Subscription,
              Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::SubscriptionUpdatedWebhookEvent::Data::PayloadType::TaggedSymbol
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
            T.all(Symbol, Dodopayments::SubscriptionUpdatedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUBSCRIPTION_UPDATED =
          T.let(
            :"subscription.updated",
            Dodopayments::SubscriptionUpdatedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionUpdatedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
