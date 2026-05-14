# frozen_string_literal: true

module Dodopayments
  module Models
    class WebhookPayload < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #
      #   @return [String]
      required :business_id, String

      # @!attribute data
      #   The latest data at the time of delivery attempt
      #
      #   @return [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout, Dodopayments::Models::WebhookPayload::Data::DunningAttempt, Dodopayments::Models::WebhookPayload::Data::EntitlementGrant]
      required :data, union: -> { Dodopayments::WebhookPayload::Data }

      # @!attribute timestamp
      #   The timestamp of when the event occurred (not necessarily the same of when it
      #   was delivered)
      #
      #   @return [Time]
      required :timestamp, Time

      # @!attribute type
      #   Event types for Dodo events
      #
      #   @return [Symbol, Dodopayments::Models::WebhookEventType]
      required :type, enum: -> { Dodopayments::WebhookEventType }

      # @!method initialize(business_id:, data:, timestamp:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::WebhookPayload} for more details.
      #
      #   @param business_id [String]
      #
      #   @param data [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout, Dodopayments::Models::WebhookPayload::Data::DunningAttempt, Dodopayments::Models::WebhookPayload::Data::EntitlementGrant] The latest data at the time of delivery attempt
      #
      #   @param timestamp [Time] The timestamp of when the event occurred (not necessarily the same of when it wa
      #
      #   @param type [Symbol, Dodopayments::Models::WebhookEventType] Event types for Dodo events

      # The latest data at the time of delivery attempt
      #
      # @see Dodopayments::Models::WebhookPayload#data
      module Data
        extend Dodopayments::Internal::Type::Union

        discriminator :payload_type

        variant :Payment, -> { Dodopayments::WebhookPayload::Data::Payment }

        # Response struct representing subscription details
        variant :Subscription, -> { Dodopayments::WebhookPayload::Data::Subscription }

        variant :Refund, -> { Dodopayments::WebhookPayload::Data::Refund }

        variant :Dispute, -> { Dodopayments::WebhookPayload::Data::Dispute }

        variant :LicenseKey, -> { Dodopayments::WebhookPayload::Data::LicenseKey }

        # Response for a ledger entry
        variant :CreditLedgerEntry, -> { Dodopayments::WebhookPayload::Data::CreditLedgerEntry }

        variant :CreditBalanceLow, -> { Dodopayments::WebhookPayload::Data::CreditBalanceLow }

        variant :AbandonedCheckout, -> { Dodopayments::WebhookPayload::Data::AbandonedCheckout }

        variant :DunningAttempt, -> { Dodopayments::WebhookPayload::Data::DunningAttempt }

        # Detailed view of a single entitlement grant: who it's for, its
        # lifecycle state, and any integration-specific delivery payload.
        variant :EntitlementGrant, -> { Dodopayments::WebhookPayload::Data::EntitlementGrant }

        class Payment < Dodopayments::Models::Payment
          # @!attribute payload_type
          #
          #   @return [Symbol, :Payment]
          required :payload_type, const: :Payment

          # @!method initialize(payload_type: :Payment)
          #   @param payload_type [Symbol, :Payment]
        end

        class Subscription < Dodopayments::Models::Subscription
          # @!attribute payload_type
          #
          #   @return [Symbol, :Subscription]
          required :payload_type, const: :Subscription

          # @!method initialize(payload_type: :Subscription)
          #   Response struct representing subscription details
          #
          #   @param payload_type [Symbol, :Subscription]
        end

        class Refund < Dodopayments::Models::Refund
          # @!attribute payload_type
          #
          #   @return [Symbol, :Refund]
          required :payload_type, const: :Refund

          # @!method initialize(payload_type: :Refund)
          #   @param payload_type [Symbol, :Refund]
        end

        class Dispute < Dodopayments::Models::GetDispute
          # @!attribute payload_type
          #
          #   @return [Symbol, :Dispute]
          required :payload_type, const: :Dispute

          # @!method initialize(payload_type: :Dispute)
          #   @param payload_type [Symbol, :Dispute]
        end

        class LicenseKey < Dodopayments::Models::LicenseKey
          # @!attribute payload_type
          #
          #   @return [Symbol, :LicenseKey]
          required :payload_type, const: :LicenseKey

          # @!method initialize(payload_type: :LicenseKey)
          #   @param payload_type [Symbol, :LicenseKey]
        end

        class CreditLedgerEntry < Dodopayments::Models::CreditEntitlements::CreditLedgerEntry
          # @!attribute payload_type
          #
          #   @return [Symbol, :CreditLedgerEntry]
          required :payload_type, const: :CreditLedgerEntry

          # @!method initialize(payload_type: :CreditLedgerEntry)
          #   Response for a ledger entry
          #
          #   @param payload_type [Symbol, :CreditLedgerEntry]
        end

        class CreditBalanceLow < Dodopayments::Internal::Type::BaseModel
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

          # @!attribute payload_type
          #
          #   @return [Symbol, :CreditBalanceLow]
          required :payload_type, const: :CreditBalanceLow

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

          # @!method initialize(available_balance:, credit_entitlement_id:, credit_entitlement_name:, customer_id:, subscription_credits_amount:, subscription_id:, threshold_amount:, threshold_percent:, payload_type: :CreditBalanceLow)
          #   @param available_balance [String]
          #   @param credit_entitlement_id [String]
          #   @param credit_entitlement_name [String]
          #   @param customer_id [String]
          #   @param subscription_credits_amount [String]
          #   @param subscription_id [String]
          #   @param threshold_amount [String]
          #   @param threshold_percent [Integer]
          #   @param payload_type [Symbol, :CreditBalanceLow]
        end

        class AbandonedCheckout < Dodopayments::Internal::Type::BaseModel
          # @!attribute abandoned_at
          #
          #   @return [Time]
          required :abandoned_at, Time

          # @!attribute abandonment_reason
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason]
          required :abandonment_reason,
                   enum: -> { Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason }

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute payload_type
          #
          #   @return [Symbol, :AbandonedCheckout]
          required :payload_type, const: :AbandonedCheckout

          # @!attribute payment_id
          #
          #   @return [String]
          required :payment_id, String

          # @!attribute status
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout::Status]
          required :status, enum: -> { Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status }

          # @!attribute recovered_payment_id
          #
          #   @return [String, nil]
          optional :recovered_payment_id, String, nil?: true

          # @!method initialize(abandoned_at:, abandonment_reason:, customer_id:, payment_id:, status:, recovered_payment_id: nil, payload_type: :AbandonedCheckout)
          #   @param abandoned_at [Time]
          #   @param abandonment_reason [Symbol, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason]
          #   @param customer_id [String]
          #   @param payment_id [String]
          #   @param status [Symbol, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout::Status]
          #   @param recovered_payment_id [String, nil]
          #   @param payload_type [Symbol, :AbandonedCheckout]

          # @see Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout#abandonment_reason
          module AbandonmentReason
            extend Dodopayments::Internal::Type::Enum

            PAYMENT_FAILED = :payment_failed
            CHECKOUT_INCOMPLETE = :checkout_incomplete

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout#status
          module Status
            extend Dodopayments::Internal::Type::Enum

            ABANDONED = :abandoned
            RECOVERING = :recovering
            RECOVERED = :recovered
            EXHAUSTED = :exhausted
            OPTED_OUT = :opted_out

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DunningAttempt < Dodopayments::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute customer_id
          #
          #   @return [String]
          required :customer_id, String

          # @!attribute payload_type
          #
          #   @return [Symbol, :DunningAttempt]
          required :payload_type, const: :DunningAttempt

          # @!attribute status
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::DunningAttempt::Status]
          required :status, enum: -> { Dodopayments::WebhookPayload::Data::DunningAttempt::Status }

          # @!attribute subscription_id
          #
          #   @return [String]
          required :subscription_id, String

          # @!attribute trigger_state
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::DunningAttempt::TriggerState]
          required :trigger_state, enum: -> { Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState }

          # @!attribute payment_id
          #
          #   @return [String, nil]
          optional :payment_id, String, nil?: true

          # @!method initialize(created_at:, customer_id:, status:, subscription_id:, trigger_state:, payment_id: nil, payload_type: :DunningAttempt)
          #   @param created_at [Time]
          #   @param customer_id [String]
          #   @param status [Symbol, Dodopayments::Models::WebhookPayload::Data::DunningAttempt::Status]
          #   @param subscription_id [String]
          #   @param trigger_state [Symbol, Dodopayments::Models::WebhookPayload::Data::DunningAttempt::TriggerState]
          #   @param payment_id [String, nil]
          #   @param payload_type [Symbol, :DunningAttempt]

          # @see Dodopayments::Models::WebhookPayload::Data::DunningAttempt#status
          module Status
            extend Dodopayments::Internal::Type::Enum

            RECOVERING = :recovering
            RECOVERED = :recovered
            EXHAUSTED = :exhausted

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Dodopayments::Models::WebhookPayload::Data::DunningAttempt#trigger_state
          module TriggerState
            extend Dodopayments::Internal::Type::Enum

            ON_HOLD = :on_hold
            CANCELLED = :cancelled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class EntitlementGrant < Dodopayments::Models::Entitlements::EntitlementGrant
          # @!attribute payload_type
          #
          #   @return [Symbol, :EntitlementGrant]
          required :payload_type, const: :EntitlementGrant

          # @!method initialize(payload_type: :EntitlementGrant)
          #   Detailed view of a single entitlement grant: who it's for, its lifecycle state,
          #   and any integration-specific delivery payload.
          #
          #   @param payload_type [Symbol, :EntitlementGrant]
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow, Dodopayments::Models::WebhookPayload::Data::AbandonedCheckout, Dodopayments::Models::WebhookPayload::Data::DunningAttempt, Dodopayments::Models::WebhookPayload::Data::EntitlementGrant)]
      end
    end
  end
end
