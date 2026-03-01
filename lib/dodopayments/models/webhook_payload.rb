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
      #   @return [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow]
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
      #   @param data [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow] The latest data at the time of delivery attempt
      #
      #   @param timestamp [Time] The timestamp of when the event occurred (not necessarily the same of when it wa
      #
      #   @param type [Symbol, Dodopayments::Models::WebhookEventType] Event types for Dodo events

      # The latest data at the time of delivery attempt
      #
      # @see Dodopayments::Models::WebhookPayload#data
      module Data
        extend Dodopayments::Internal::Type::Union

        variant -> { Dodopayments::WebhookPayload::Data::Payment }

        # Response struct representing subscription details
        variant -> { Dodopayments::WebhookPayload::Data::Subscription }

        variant -> { Dodopayments::WebhookPayload::Data::Refund }

        variant -> { Dodopayments::WebhookPayload::Data::Dispute }

        variant -> { Dodopayments::WebhookPayload::Data::LicenseKey }

        # Response for a ledger entry
        variant -> { Dodopayments::WebhookPayload::Data::CreditLedgerEntry }

        variant -> { Dodopayments::WebhookPayload::Data::CreditBalanceLow }

        class Payment < Dodopayments::Models::Payment
          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::Payment::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::Payment::PayloadType }

          # @!method initialize(payload_type:)
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::Payment::PayloadType]

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            PAYMENT = :Payment

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Subscription < Dodopayments::Models::Subscription
          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::Subscription::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::Subscription::PayloadType }

          # @!method initialize(payload_type:)
          #   Response struct representing subscription details
          #
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::Subscription::PayloadType]

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            SUBSCRIPTION = :Subscription

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Refund < Dodopayments::Models::Refund
          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::Refund::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::Refund::PayloadType }

          # @!method initialize(payload_type:)
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::Refund::PayloadType]

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            REFUND = :Refund

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class Dispute < Dodopayments::Models::GetDispute
          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::Dispute::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::Dispute::PayloadType }

          # @!method initialize(payload_type:)
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::Dispute::PayloadType]

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            DISPUTE = :Dispute

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class LicenseKey < Dodopayments::Models::LicenseKey
          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::LicenseKey::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType }

          # @!method initialize(payload_type:)
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::LicenseKey::PayloadType]

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            LICENSE_KEY = :LicenseKey

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class CreditLedgerEntry < Dodopayments::Models::CreditEntitlements::CreditLedgerEntry
          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType }

          # @!method initialize(payload_type:)
          #   Response for a ledger entry
          #
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry::PayloadType]

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            CREDIT_LEDGER_ENTRY = :CreditLedgerEntry

            # @!method self.values
            #   @return [Array<Symbol>]
          end
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
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType }

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

          # @!method initialize(available_balance:, credit_entitlement_id:, credit_entitlement_name:, customer_id:, payload_type:, subscription_credits_amount:, subscription_id:, threshold_amount:, threshold_percent:)
          #   @param available_balance [String]
          #   @param credit_entitlement_id [String]
          #   @param credit_entitlement_name [String]
          #   @param customer_id [String]
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow::PayloadType]
          #   @param subscription_credits_amount [String]
          #   @param subscription_id [String]
          #   @param threshold_amount [String]
          #   @param threshold_percent [Integer]

          # @see Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow#payload_type
          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            CREDIT_BALANCE_LOW = :CreditBalanceLow

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey, Dodopayments::Models::WebhookPayload::Data::CreditLedgerEntry, Dodopayments::Models::WebhookPayload::Data::CreditBalanceLow)]
      end
    end
  end
end
