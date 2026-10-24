# typed: strong

module Dodopayments
  module Models
    class MeterUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::MeterUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Description of the meter. Send `null` to remove the description. Omit it to keep
      # it.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Measurement unit
      sig { returns(T.nilable(String)) }
      attr_accessor :measurement_unit

      # Name of the meter
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig do
        params(
          id: String,
          description: T.nilable(String),
          measurement_unit: T.nilable(String),
          name: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Description of the meter. Send `null` to remove the description. Omit it to keep
        # it.
        description: nil,
        # Measurement unit
        measurement_unit: nil,
        # Name of the meter
        name: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            description: T.nilable(String),
            measurement_unit: T.nilable(String),
            name: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
