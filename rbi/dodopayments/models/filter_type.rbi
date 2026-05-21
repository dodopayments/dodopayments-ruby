# typed: strong

module Dodopayments
  module Models
    # Filter clauses — either a flat list of `MeterFilterCondition`s or a list of
    # nested `MeterFilter`s. Up to 3 levels of nesting are accepted; the limit is
    # enforced at runtime.
    module FilterType
      extend Dodopayments::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            T::Array[Dodopayments::FilterType::MeterFilterConditionList],
            T::Array[Dodopayments::MeterFilter]
          )
        end

      class MeterFilterConditionList < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::FilterType::MeterFilterConditionList,
              Dodopayments::Internal::AnyHash
            )
          end

        # Filter key to apply
        sig { returns(String) }
        attr_accessor :key

        # Filter operator
        sig { returns(Dodopayments::FilterOperator::OrSymbol) }
        attr_accessor :operator

        # Filter value - can be string, number, or boolean
        sig do
          returns(
            Dodopayments::FilterType::MeterFilterConditionList::Value::Variants
          )
        end
        attr_accessor :value

        sig do
          params(
            key: String,
            operator: Dodopayments::FilterOperator::OrSymbol,
            value:
              Dodopayments::FilterType::MeterFilterConditionList::Value::Variants
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter key to apply
          key:,
          # Filter operator
          operator:,
          # Filter value - can be string, number, or boolean
          value:
        )
        end

        sig do
          override.returns(
            {
              key: String,
              operator: Dodopayments::FilterOperator::OrSymbol,
              value:
                Dodopayments::FilterType::MeterFilterConditionList::Value::Variants
            }
          )
        end
        def to_hash
        end

        # Filter value - can be string, number, or boolean
        module Value
          extend Dodopayments::Internal::Type::Union

          Variants = T.type_alias { T.any(String, Float, T::Boolean) }

          sig do
            override.returns(
              T::Array[
                Dodopayments::FilterType::MeterFilterConditionList::Value::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end

      sig { override.returns(T::Array[Dodopayments::FilterType::Variants]) }
      def self.variants
      end

      MeterFilterConditionListArray =
        T.let(
          Dodopayments::Internal::Type::ArrayOf[
            Dodopayments::FilterType::MeterFilterConditionList
          ],
          Dodopayments::Internal::Type::Converter
        )

      MeterFilterArray =
        T.let(
          Dodopayments::Internal::Type::ArrayOf[Dodopayments::MeterFilter],
          Dodopayments::Internal::Type::Converter
        )
    end
  end
end
