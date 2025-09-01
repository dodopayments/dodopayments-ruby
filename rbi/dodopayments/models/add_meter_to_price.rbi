# typed: strong

module Dodopayments
  module Models
    class AddMeterToPrice < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::AddMeterToPrice, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :meter_id

      # The price per unit in lowest denomination. Must be greater than zero. Supports
      # up to 5 digits before decimal point and 12 decimal places.
      sig { returns(String) }
      attr_accessor :price_per_unit

      # Meter description. Will ignored on Request, but will be shown in response
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Integer)) }
      attr_accessor :free_threshold

      # Meter measurement unit. Will ignored on Request, but will be shown in response
      sig { returns(T.nilable(String)) }
      attr_accessor :measurement_unit

      # Meter name. Will ignored on Request, but will be shown in response
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          meter_id: String,
          price_per_unit: String,
          description: T.nilable(String),
          free_threshold: T.nilable(Integer),
          measurement_unit: T.nilable(String),
          name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        meter_id:,
        # The price per unit in lowest denomination. Must be greater than zero. Supports
        # up to 5 digits before decimal point and 12 decimal places.
        price_per_unit:,
        # Meter description. Will ignored on Request, but will be shown in response
        description: nil,
        free_threshold: nil,
        # Meter measurement unit. Will ignored on Request, but will be shown in response
        measurement_unit: nil,
        # Meter name. Will ignored on Request, but will be shown in response
        name: nil
      )
      end

      sig do
        override.returns(
          {
            meter_id: String,
            price_per_unit: String,
            description: T.nilable(String),
            free_threshold: T.nilable(Integer),
            measurement_unit: T.nilable(String),
            name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
