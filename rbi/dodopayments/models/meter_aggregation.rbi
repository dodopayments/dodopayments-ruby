# typed: strong

module Dodopayments
  module Models
    class MeterAggregation < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::MeterAggregation, Dodopayments::Internal::AnyHash)
        end

      # Aggregation type for the meter
      sig { returns(Dodopayments::MeterAggregation::Type::OrSymbol) }
      attr_accessor :type

      # Required when type is not COUNT
      sig { returns(T.nilable(String)) }
      attr_accessor :key

      sig do
        params(
          type: Dodopayments::MeterAggregation::Type::OrSymbol,
          key: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Aggregation type for the meter
        type:,
        # Required when type is not COUNT
        key: nil
      )
      end

      sig do
        override.returns(
          {
            type: Dodopayments::MeterAggregation::Type::OrSymbol,
            key: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Aggregation type for the meter
      module Type
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::MeterAggregation::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        COUNT =
          T.let(:count, Dodopayments::MeterAggregation::Type::TaggedSymbol)
        SUM = T.let(:sum, Dodopayments::MeterAggregation::Type::TaggedSymbol)
        UNIQUE_COUNT =
          T.let(
            :unique_count,
            Dodopayments::MeterAggregation::Type::TaggedSymbol
          )
        MAX = T.let(:max, Dodopayments::MeterAggregation::Type::TaggedSymbol)
        LAST = T.let(:last, Dodopayments::MeterAggregation::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::MeterAggregation::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
