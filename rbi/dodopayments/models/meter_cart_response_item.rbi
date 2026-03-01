# typed: strong

module Dodopayments
  module Models
    class MeterCartResponseItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::MeterCartResponseItem,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Integer) }
      attr_accessor :free_threshold

      sig { returns(String) }
      attr_accessor :measurement_unit

      sig { returns(String) }
      attr_accessor :meter_id

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(String)) }
      attr_accessor :price_per_unit

      # Response struct representing usage-based meter cart details for a subscription
      sig do
        params(
          currency: Dodopayments::Currency::OrSymbol,
          free_threshold: Integer,
          measurement_unit: String,
          meter_id: String,
          name: String,
          description: T.nilable(String),
          price_per_unit: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        currency:,
        free_threshold:,
        measurement_unit:,
        meter_id:,
        name:,
        description: nil,
        price_per_unit: nil
      )
      end

      sig do
        override.returns(
          {
            currency: Dodopayments::Currency::TaggedSymbol,
            free_threshold: Integer,
            measurement_unit: String,
            meter_id: String,
            name: String,
            description: T.nilable(String),
            price_per_unit: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
