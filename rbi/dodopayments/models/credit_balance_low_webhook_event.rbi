# typed: strong

module Dodopayments
  module Models
    class CreditBalanceLowWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CreditBalanceLowWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # Webhook payload for credit.balance_low event
      sig { returns(Dodopayments::CreditBalanceLowWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::CreditBalanceLowWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::CreditBalanceLowWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # Webhook payload for credit.balance_low event
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"credit.balance_low"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::CreditBalanceLowWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditBalanceLowWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :available_balance

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :credit_entitlement_name

        sig { returns(String) }
        attr_accessor :customer_id

        sig { returns(String) }
        attr_accessor :subscription_credits_amount

        sig { returns(String) }
        attr_accessor :subscription_id

        sig { returns(String) }
        attr_accessor :threshold_amount

        sig { returns(Integer) }
        attr_accessor :threshold_percent

        # Webhook payload for credit.balance_low event
        sig do
          params(
            available_balance: String,
            credit_entitlement_id: String,
            credit_entitlement_name: String,
            customer_id: String,
            subscription_credits_amount: String,
            subscription_id: String,
            threshold_amount: String,
            threshold_percent: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          available_balance:,
          credit_entitlement_id:,
          credit_entitlement_name:,
          customer_id:,
          subscription_credits_amount:,
          subscription_id:,
          threshold_amount:,
          threshold_percent:
        )
        end

        sig do
          override.returns(
            {
              available_balance: String,
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              customer_id: String,
              subscription_credits_amount: String,
              subscription_id: String,
              threshold_amount: String,
              threshold_percent: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
