# typed: strong

module Dodopayments
  module Models
    class AbandonedCheckoutRecoveredWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
      # events
      sig do
        returns(Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data)
      end
      attr_reader :data

      sig do
        params(
          data:
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(
          Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data:
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::OrHash,
          timestamp: Time,
          type:
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
        # events
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
            data: Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data,
            timestamp: Time,
            type:
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :abandoned_at

        sig do
          returns(
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason::TaggedSymbol
          )
        end
        attr_accessor :abandonment_reason

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :payment_id

        sig do
          returns(
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_accessor :recovered_payment_id

        # Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
        # events
        sig do
          params(
            abandoned_at: Time,
            abandonment_reason:
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason::OrSymbol,
            customer_id: String,
            payment_id: String,
            status:
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::OrSymbol,
            recovered_payment_id: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          abandoned_at:,
          abandonment_reason:,
          customer_id:,
          payment_id:,
          status:,
          recovered_payment_id: nil
        )
        end

        sig do
          override.returns(
            {
              abandoned_at: Time,
              abandonment_reason:
                Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason::TaggedSymbol,
              customer_id: String,
              payment_id: String,
              status:
                Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol,
              recovered_payment_id: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module AbandonmentReason
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYMENT_FAILED =
            T.let(
              :payment_failed,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason::TaggedSymbol
            )
          CHECKOUT_INCOMPLETE =
            T.let(
              :checkout_incomplete,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::AbandonmentReason::TaggedSymbol
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
                Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED =
            T.let(
              :abandoned,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
            )
          RECOVERING =
            T.let(
              :recovering,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
            )
          RECOVERED =
            T.let(
              :recovered,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
            )
          EXHAUSTED =
            T.let(
              :exhausted,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
            )
          OPTED_OUT =
            T.let(
              :opted_out,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Data::Status::TaggedSymbol
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
            T.all(
              Symbol,
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABANDONED_CHECKOUT_RECOVERED =
          T.let(
            :"abandoned_checkout.recovered",
            Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::AbandonedCheckoutRecoveredWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
