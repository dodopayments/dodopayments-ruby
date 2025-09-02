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

      # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      sig do
        returns(
          T.nilable(T::Hash[Symbol, Dodopayments::Event::Metadata::Variants])
        )
      end
      attr_accessor :metadata

      sig do
        params(
          business_id: String,
          customer_id: String,
          event_id: String,
          event_name: String,
          timestamp: Time,
          metadata:
            T.nilable(T::Hash[Symbol, Dodopayments::Event::Metadata::Variants])
        ).returns(T.attached_class)
      end
      def self.new(
        business_id:,
        customer_id:,
        event_id:,
        event_name:,
        timestamp:,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
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
            metadata:
              T.nilable(
                T::Hash[Symbol, Dodopayments::Event::Metadata::Variants]
              )
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
          override.returns(T::Array[Dodopayments::Event::Metadata::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
