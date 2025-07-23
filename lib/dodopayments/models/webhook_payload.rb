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

        # @!method self.variants
        #   @return [Array(Dodopayments::Models::WebhookPayload::Data::Payment, Dodopayments::Models::WebhookPayload::Data::Subscription, Dodopayments::Models::WebhookPayload::Data::Refund, Dodopayments::Models::WebhookPayload::Data::Dispute, Dodopayments::Models::WebhookPayload::Data::LicenseKey)]
      end
    end
  end
end
