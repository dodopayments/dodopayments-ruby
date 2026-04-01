# typed: strong

module Dodopayments
  module Models
    class AbandonedCheckoutDetectedWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Webhook payload for abandoned_checkout.detected and abandoned_checkout.recovered
      # events
      sig { returns(Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data:
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig do
        returns(
          Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data:
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::OrHash,
          timestamp: Time,
          type:
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type::OrSymbol
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
            data: Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data,
            timestamp: Time,
            type:
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :abandoned_at

        sig do
          returns(
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason::TaggedSymbol
          )
        end
        attr_accessor :abandonment_reason

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :payment_id

        sig do
          returns(
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
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
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason::OrSymbol,
            customer_id: String,
            payment_id: String,
            status:
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::OrSymbol,
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
                Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason::TaggedSymbol,
              customer_id: String,
              payment_id: String,
              status:
                Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol,
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
                Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PAYMENT_FAILED =
            T.let(
              :payment_failed,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason::TaggedSymbol
            )
          CHECKOUT_INCOMPLETE =
            T.let(
              :checkout_incomplete,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::AbandonmentReason::TaggedSymbol
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
                Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABANDONED =
            T.let(
              :abandoned,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
            )
          RECOVERING =
            T.let(
              :recovering,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
            )
          RECOVERED =
            T.let(
              :recovered,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
            )
          EXHAUSTED =
            T.let(
              :exhausted,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
            )
          OPTED_OUT =
            T.let(
              :opted_out,
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Data::Status::TaggedSymbol
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
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ABANDONED_CHECKOUT_DETECTED =
          T.let(
            :"abandoned_checkout.detected",
            Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::AbandonedCheckoutDetectedWebhookEvent::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
