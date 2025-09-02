# typed: strong

module Dodopayments
  module Models
    class EventInput < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::EventInput, Dodopayments::Internal::AnyHash)
        end

      # customer_id of the customer whose usage needs to be tracked
      sig { returns(String) }
      attr_accessor :customer_id

      # Event Id acts as an idempotency key. Any subsequent requests with the same
      # event_id will be ignored
      sig { returns(String) }
      attr_accessor :event_id

      # Name of the event
      sig { returns(String) }
      attr_accessor :event_name

      # Custom metadata. Only key value pairs are accepted, objects or arrays submitted
      # will be rejected.
      sig do
        returns(
          T.nilable(
            T::Hash[Symbol, Dodopayments::EventInput::Metadata::Variants]
          )
        )
      end
      attr_accessor :metadata

      # Custom Timestamp. Defaults to current timestamp in UTC. Timestamps that are
      # older that 1 hour or after 5 mins, from current timestamp, will be rejected.
      sig { returns(T.nilable(Time)) }
      attr_accessor :timestamp

      sig do
        params(
          customer_id: String,
          event_id: String,
          event_name: String,
          metadata:
            T.nilable(
              T::Hash[Symbol, Dodopayments::EventInput::Metadata::Variants]
            ),
          timestamp: T.nilable(Time)
        ).returns(T.attached_class)
      end
      def self.new(
        # customer_id of the customer whose usage needs to be tracked
        customer_id:,
        # Event Id acts as an idempotency key. Any subsequent requests with the same
        # event_id will be ignored
        event_id:,
        # Name of the event
        event_name:,
        # Custom metadata. Only key value pairs are accepted, objects or arrays submitted
        # will be rejected.
        metadata: nil,
        # Custom Timestamp. Defaults to current timestamp in UTC. Timestamps that are
        # older that 1 hour or after 5 mins, from current timestamp, will be rejected.
        timestamp: nil
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            event_id: String,
            event_name: String,
            metadata:
              T.nilable(
                T::Hash[Symbol, Dodopayments::EventInput::Metadata::Variants]
              ),
            timestamp: T.nilable(Time)
          }
        )
      end
      def to_hash
      end

      # Metadata value can be a string, integer, number, or boolean
      module Metadata
        extend Dodopayments::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Float, T::Boolean) }

        sig do
          override.returns(
            T::Array[Dodopayments::EventInput::Metadata::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
