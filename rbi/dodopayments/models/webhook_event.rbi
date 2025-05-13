# typed: strong

module Dodopayments
  module Models
    class WebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::WebhookEvent, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :event_id

      sig { returns(String) }
      attr_accessor :event_type

      sig { returns(String) }
      attr_accessor :object_id_

      sig { returns(T.nilable(Time)) }
      attr_accessor :latest_attempted_at

      sig { returns(T.nilable(String)) }
      attr_accessor :request

      sig { returns(T.nilable(String)) }
      attr_accessor :response

      sig do
        params(
          business_id: String,
          created_at: Time,
          event_id: String,
          event_type: String,
          object_id_: String,
          latest_attempted_at: T.nilable(Time),
          request: T.nilable(String),
          response: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        business_id:,
        created_at:,
        event_id:,
        event_type:,
        object_id_:,
        latest_attempted_at: nil,
        request: nil,
        response: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            created_at: Time,
            event_id: String,
            event_type: String,
            object_id_: String,
            latest_attempted_at: T.nilable(Time),
            request: T.nilable(String),
            response: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
