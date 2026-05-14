# frozen_string_literal: true

module Dodopayments
  module Models
    class CreditBalanceLowWebhookEvent < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   The business identifier
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   Webhook payload for credit.balance_low event
      #
      #   @return [Dodopayments::Models::CreditBalanceLowWebhookEvent::Data]
      required :data, -> { Dodopayments::CreditBalanceLowWebhookEvent::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   The event type
      #
      #   @return [Symbol, :"credit.balance_low"]
      required :type, const: :"credit.balance_low"

      # @!method initialize(business_id:, data:, timestamp:, type: :"credit.balance_low")
      #   @param business_id [String] The business identifier
      #
      #   @param data [Dodopayments::Models::CreditBalanceLowWebhookEvent::Data] Webhook payload for credit.balance_low event
      #
      #   @param timestamp [Time] The timestamp of when the event occurred
      #
      #   @param type [Symbol, :"credit.balance_low"] The event type

      # @see Dodopayments::Models::CreditBalanceLowWebhookEvent#data
      class Data < Dodopayments::Internal::Type::BaseModel
        # @!attribute available_balance
        #
        #   @return [String]
        required :available_balance, String

        # @!attribute credit_entitlement_id
        #
        #   @return [String]
        required :credit_entitlement_id, String

        # @!attribute credit_entitlement_name
        #
        #   @return [String]
        required :credit_entitlement_name, String

        # @!attribute customer_id
        #
        #   @return [String]
        required :customer_id, String

        # @!attribute subscription_credits_amount
        #
        #   @return [String]
        required :subscription_credits_amount, String

        # @!attribute subscription_id
        #
        #   @return [String]
        required :subscription_id, String

        # @!attribute threshold_amount
        #
        #   @return [String]
        required :threshold_amount, String

        # @!attribute threshold_percent
        #
        #   @return [Integer]
        required :threshold_percent, Integer

        # @!method initialize(available_balance:, credit_entitlement_id:, credit_entitlement_name:, customer_id:, subscription_credits_amount:, subscription_id:, threshold_amount:, threshold_percent:)
        #   Webhook payload for credit.balance_low event
        #
        #   @param available_balance [String]
        #   @param credit_entitlement_id [String]
        #   @param credit_entitlement_name [String]
        #   @param customer_id [String]
        #   @param subscription_credits_amount [String]
        #   @param subscription_id [String]
        #   @param threshold_amount [String]
        #   @param threshold_percent [Integer]
      end
    end
  end
end
