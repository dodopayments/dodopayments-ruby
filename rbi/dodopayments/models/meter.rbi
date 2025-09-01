# typed: strong

module Dodopayments
  module Models
    class Meter < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Meter, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(Dodopayments::MeterAggregation) }
      attr_reader :aggregation

      sig { params(aggregation: Dodopayments::MeterAggregation::OrHash).void }
      attr_writer :aggregation

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(String) }
      attr_accessor :event_name

      sig { returns(String) }
      attr_accessor :measurement_unit

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # A filter structure that combines multiple conditions with logical conjunctions
      # (AND/OR).
      #
      # Supports up to 3 levels of nesting to create complex filter expressions. Each
      # filter has a conjunction (and/or) and clauses that can be either direct
      # conditions or nested filters.
      sig { returns(T.nilable(Dodopayments::MeterFilter)) }
      attr_reader :filter

      sig { params(filter: T.nilable(Dodopayments::MeterFilter::OrHash)).void }
      attr_writer :filter

      sig do
        params(
          id: String,
          aggregation: Dodopayments::MeterAggregation::OrHash,
          business_id: String,
          created_at: Time,
          event_name: String,
          measurement_unit: String,
          name: String,
          updated_at: Time,
          description: T.nilable(String),
          filter: T.nilable(Dodopayments::MeterFilter::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        aggregation:,
        business_id:,
        created_at:,
        event_name:,
        measurement_unit:,
        name:,
        updated_at:,
        description: nil,
        # A filter structure that combines multiple conditions with logical conjunctions
        # (AND/OR).
        #
        # Supports up to 3 levels of nesting to create complex filter expressions. Each
        # filter has a conjunction (and/or) and clauses that can be either direct
        # conditions or nested filters.
        filter: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            aggregation: Dodopayments::MeterAggregation,
            business_id: String,
            created_at: Time,
            event_name: String,
            measurement_unit: String,
            name: String,
            updated_at: Time,
            description: T.nilable(String),
            filter: T.nilable(Dodopayments::MeterFilter)
          }
        )
      end
      def to_hash
      end
    end
  end
end
