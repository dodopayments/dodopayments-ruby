# typed: strong

module Dodopayments
  module Models
    class InvoiceMarkedUncollectableWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::InvoiceMarkedUncollectableWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      # An invoice-led invoice. Every read and every `invoice.*` webhook uses this
      # schema.
      sig { returns(Dodopayments::Invoice) }
      attr_reader :data

      sig { params(data: Dodopayments::Invoice::OrHash).void }
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
          data: Dodopayments::Invoice::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        # An invoice-led invoice. Every read and every `invoice.*` webhook uses this
        # schema.
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"invoice.marked_uncollectable"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::Invoice,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
