# typed: strong

module Dodopayments
  module Models
    class DunningStartedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::DunningStartedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Webhook payload for dunning.started and dunning.recovered events
      sig { returns(Dodopayments::DunningStartedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::DunningStartedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(Dodopayments::DunningStartedWebhookEvent::Type::TaggedSymbol)
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::DunningStartedWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Dodopayments::DunningStartedWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Webhook payload for dunning.started and dunning.recovered events
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
            data: Dodopayments::DunningStartedWebhookEvent::Data,
            timestamp: Time,
            type: Dodopayments::DunningStartedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::DunningStartedWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :customer_id

        sig do
          returns(
            Dodopayments::DunningStartedWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :subscription_id

        sig do
          returns(
            Dodopayments::DunningStartedWebhookEvent::Data::TriggerState::TaggedSymbol
          )
        end
        attr_accessor :trigger_state

        sig { returns(T.nilable(String)) }
        attr_accessor :payment_id

        # Webhook payload for dunning.started and dunning.recovered events
        sig do
          params(
            created_at: Time,
            customer_id: String,
            status:
              Dodopayments::DunningStartedWebhookEvent::Data::Status::OrSymbol,
            subscription_id: String,
            trigger_state:
              Dodopayments::DunningStartedWebhookEvent::Data::TriggerState::OrSymbol,
            payment_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          customer_id:,
          status:,
          subscription_id:,
          trigger_state:,
          payment_id: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              customer_id: String,
              status:
                Dodopayments::DunningStartedWebhookEvent::Data::Status::TaggedSymbol,
              subscription_id: String,
              trigger_state:
                Dodopayments::DunningStartedWebhookEvent::Data::TriggerState::TaggedSymbol,
              payment_id: T.nilable(String)
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
                Dodopayments::DunningStartedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RECOVERING =
            T.let(
              :recovering,
              Dodopayments::DunningStartedWebhookEvent::Data::Status::TaggedSymbol
            )
          RECOVERED =
            T.let(
              :recovered,
              Dodopayments::DunningStartedWebhookEvent::Data::Status::TaggedSymbol
            )
          EXHAUSTED =
            T.let(
              :exhausted,
              Dodopayments::DunningStartedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::DunningStartedWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module TriggerState
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::DunningStartedWebhookEvent::Data::TriggerState
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ON_HOLD =
            T.let(
              :on_hold,
              Dodopayments::DunningStartedWebhookEvent::Data::TriggerState::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Dodopayments::DunningStartedWebhookEvent::Data::TriggerState::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::DunningStartedWebhookEvent::Data::TriggerState::TaggedSymbol
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
            T.all(Symbol, Dodopayments::DunningStartedWebhookEvent::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DUNNING_STARTED =
          T.let(
            :"dunning.started",
            Dodopayments::DunningStartedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::DunningStartedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
