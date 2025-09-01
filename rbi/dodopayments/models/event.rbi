# typed: strong

module Dodopayments
  module Models
    class Event < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Event, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(String) }
      attr_accessor :customer_id

      sig { returns(String) }
      attr_accessor :event_id

      sig { returns(String) }
      attr_accessor :event_name

      sig { returns(Time) }
      attr_accessor :timestamp

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :metadata

      sig do
        params(
          business_id: String,
          customer_id: String,
          event_id: String,
          event_name: String,
          timestamp: Time,
          metadata: T.nilable(T::Hash[Symbol, T.anything])
        ).returns(T.attached_class)
      end
      def self.new(
        business_id:,
        customer_id:,
        event_id:,
        event_name:,
        timestamp:,
        metadata: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            customer_id: String,
            event_id: String,
            event_name: String,
            timestamp: Time,
            metadata: T.nilable(T::Hash[Symbol, T.anything])
          }
        )
      end
      def to_hash
      end
    end
  end
end
