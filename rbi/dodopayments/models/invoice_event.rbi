# typed: strong

module Dodopayments
  module Models
    class InvoiceEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::InvoiceEvent, Dodopayments::Internal::AnyHash)
        end

      # A user ID, `api_key`, `customer` or `system`.
      sig { returns(String) }
      attr_accessor :actor

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :event_id

      sig { returns(String) }
      attr_accessor :event_type

      sig { returns(T.anything) }
      attr_accessor :payload

      sig { returns(Integer) }
      attr_accessor :row_version

      sig { returns(T.nilable(String)) }
      attr_accessor :actor_email

      sig do
        params(
          actor: String,
          created_at: Time,
          event_id: String,
          event_type: String,
          payload: T.anything,
          row_version: Integer,
          actor_email: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # A user ID, `api_key`, `customer` or `system`.
        actor:,
        created_at:,
        event_id:,
        event_type:,
        payload:,
        row_version:,
        actor_email: nil
      )
      end

      sig do
        override.returns(
          {
            actor: String,
            created_at: Time,
            event_id: String,
            event_type: String,
            payload: T.anything,
            row_version: Integer,
            actor_email: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
