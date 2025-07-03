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
      #   @return [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey]
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
      #   @param data [Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey] The latest data at the time of delivery attempt
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

        class Dispute < Dodopayments::Internal::Type::BaseModel
          # @!attribute amount
          #   The amount involved in the dispute, represented as a string to accommodate
          #   precision.
          #
          #   @return [String]
          required :amount, String

          # @!attribute business_id
          #   The unique identifier of the business involved in the dispute.
          #
          #   @return [String]
          required :business_id, String

          # @!attribute created_at
          #   The timestamp of when the dispute was created, in UTC.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute currency
          #   The currency of the disputed amount, represented as an ISO 4217 currency code.
          #
          #   @return [String]
          required :currency, String

          # @!attribute customer
          #   The customer who filed the dispute
          #
          #   @return [Dodopayments::Models::CustomerLimitedDetails]
          required :customer, -> { Dodopayments::CustomerLimitedDetails }

          # @!attribute dispute_id
          #   The unique identifier of the dispute.
          #
          #   @return [String]
          required :dispute_id, String

          # @!attribute dispute_stage
          #   The current stage of the dispute process.
          #
          #   @return [Symbol, Dodopayments::Models::DisputeStage]
          required :dispute_stage, enum: -> { Dodopayments::DisputeStage }

          # @!attribute dispute_status
          #   The current status of the dispute.
          #
          #   @return [Symbol, Dodopayments::Models::DisputeStatus]
          required :dispute_status, enum: -> { Dodopayments::DisputeStatus }

          # @!attribute payload_type
          #
          #   @return [Symbol, Dodopayments::Models::WebhookPayload::Data::Dispute::PayloadType]
          required :payload_type, enum: -> { Dodopayments::WebhookPayload::Data::Dispute::PayloadType }

          # @!attribute payment_id
          #   The unique identifier of the payment associated with the dispute.
          #
          #   @return [String]
          required :payment_id, String

          # @!attribute reason
          #   Reason for the dispute
          #
          #   @return [String, nil]
          optional :reason, String, nil?: true

          # @!attribute remarks
          #   Remarks
          #
          #   @return [String, nil]
          optional :remarks, String, nil?: true

          # @!method initialize(amount:, business_id:, created_at:, currency:, customer:, dispute_id:, dispute_stage:, dispute_status:, payload_type:, payment_id:, reason: nil, remarks: nil)
          #   Some parameter documentations has been truncated, see
          #   {Dodopayments::Models::WebhookPayload::Data::Dispute} for more details.
          #
          #   @param amount [String] The amount involved in the dispute, represented as a string to accommodate preci
          #
          #   @param business_id [String] The unique identifier of the business involved in the dispute.
          #
          #   @param created_at [Time] The timestamp of when the dispute was created, in UTC.
          #
          #   @param currency [String] The currency of the disputed amount, represented as an ISO 4217 currency code.
          #
          #   @param customer [Dodopayments::Models::CustomerLimitedDetails] The customer who filed the dispute
          #
          #   @param dispute_id [String] The unique identifier of the dispute.
          #
          #   @param dispute_stage [Symbol, Dodopayments::Models::DisputeStage] The current stage of the dispute process.
          #
          #   @param dispute_status [Symbol, Dodopayments::Models::DisputeStatus] The current status of the dispute.
          #
          #   @param payload_type [Symbol, Dodopayments::Models::WebhookPayload::Data::Dispute::PayloadType]
          #
          #   @param payment_id [String] The unique identifier of the payment associated with the dispute.
          #
          #   @param reason [String, nil] Reason for the dispute
          #
          #   @param remarks [String, nil] Remarks

          # @see Dodopayments::Models::WebhookPayload::Data::Dispute#payload_type
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

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey)]
      end
    end
  end
end
