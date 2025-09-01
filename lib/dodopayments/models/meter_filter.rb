# frozen_string_literal: true

module Dodopayments
  module Models
    class MeterFilter < Dodopayments::Internal::Type::BaseModel
      # @!attribute clauses
      #   Filter clauses - can be direct conditions or nested filters (up to 3 levels
      #   deep)
      #
      #   @return [Array<Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter>]
      required :clauses, union: -> { Dodopayments::MeterFilter::Clauses }

      # @!attribute conjunction
      #   Logical conjunction to apply between clauses (and/or)
      #
      #   @return [Symbol, Dodopayments::Models::MeterFilter::Conjunction]
      required :conjunction, enum: -> { Dodopayments::MeterFilter::Conjunction }

      # @!method initialize(clauses:, conjunction:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::MeterFilter} for more details.
      #
      #   A filter structure that combines multiple conditions with logical conjunctions
      #   (AND/OR).
      #
      #   Supports up to 3 levels of nesting to create complex filter expressions. Each
      #   filter has a conjunction (and/or) and clauses that can be either direct
      #   conditions or nested filters.
      #
      #   @param clauses [Array<Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter>] Filter clauses - can be direct conditions or nested filters (up to 3 levels deep
      #
      #   @param conjunction [Symbol, Dodopayments::Models::MeterFilter::Conjunction] Logical conjunction to apply between clauses (and/or)

      # Filter clauses - can be direct conditions or nested filters (up to 3 levels
      # deep)
      #
      # @see Dodopayments::Models::MeterFilter#clauses
      module Clauses
        extend Dodopayments::Internal::Type::Union

        # Direct filter conditions - array of condition objects with key, operator, and value
        variant -> { Dodopayments::Models::MeterFilter::Clauses::DirectFilterConditionArray }

        # Nested filters - supports up to 3 levels deep
        variant -> { Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilterArray }

        class DirectFilterCondition < Dodopayments::Internal::Type::BaseModel
          # @!attribute key
          #   Filter key to apply
          #
          #   @return [String]
          required :key, String

          # @!attribute operator
          #
          #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition::Operator]
          required :operator, enum: -> { Dodopayments::MeterFilter::Clauses::DirectFilterCondition::Operator }

          # @!attribute value
          #   Filter value - can be string, number, or boolean
          #
          #   @return [String, Float, Boolean]
          required :value, union: -> { Dodopayments::MeterFilter::Clauses::DirectFilterCondition::Value }

          # @!method initialize(key:, operator:, value:)
          #   Filter condition with key, operator, and value
          #
          #   @param key [String] Filter key to apply
          #
          #   @param operator [Symbol, Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition::Operator]
          #
          #   @param value [String, Float, Boolean] Filter value - can be string, number, or boolean

          # @see Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition#operator
          module Operator
            extend Dodopayments::Internal::Type::Enum

            EQUALS = :equals
            NOT_EQUALS = :not_equals
            GREATER_THAN = :greater_than
            GREATER_THAN_OR_EQUALS = :greater_than_or_equals
            LESS_THAN = :less_than
            LESS_THAN_OR_EQUALS = :less_than_or_equals
            CONTAINS = :contains
            DOES_NOT_CONTAIN = :does_not_contain

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter value - can be string, number, or boolean
          #
          # @see Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition#value
          module Value
            extend Dodopayments::Internal::Type::Union

            variant String

            variant Float

            variant Dodopayments::Internal::Type::Boolean

            # @!method self.variants
            #   @return [Array(String, Float, Boolean)]
          end
        end

        class NestedMeterFilter < Dodopayments::Internal::Type::BaseModel
          # @!attribute clauses
          #   Level 1: Can be conditions or nested filters (2 more levels allowed)
          #
          #   @return [Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter>]
          required :clauses, union: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses }

          # @!attribute conjunction
          #
          #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Conjunction]
          required :conjunction, enum: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Conjunction }

          # @!method initialize(clauses:, conjunction:)
          #   Level 1 nested filter - can contain Level 2 filters
          #
          #   @param clauses [Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter>] Level 1: Can be conditions or nested filters (2 more levels allowed)
          #
          #   @param conjunction [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Conjunction]

          # Level 1: Can be conditions or nested filters (2 more levels allowed)
          #
          # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter#clauses
          module Clauses
            extend Dodopayments::Internal::Type::Union

            # Array of filter conditions
            variant -> { Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterConditionArray }

            # Array of level 2 nested filters
            variant -> { Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilterArray }

            class Level1FilterCondition < Dodopayments::Internal::Type::BaseModel
              # @!attribute key
              #   Filter key to apply
              #
              #   @return [String]
              required :key, String

              # @!attribute operator
              #
              #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Operator]
              required :operator,
                       enum: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Operator }

              # @!attribute value
              #   Filter value - can be string, number, or boolean
              #
              #   @return [String, Float, Boolean]
              required :value,
                       union: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Value }

              # @!method initialize(key:, operator:, value:)
              #   Filter condition with key, operator, and value
              #
              #   @param key [String] Filter key to apply
              #
              #   @param operator [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Operator]
              #
              #   @param value [String, Float, Boolean] Filter value - can be string, number, or boolean

              # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition#operator
              module Operator
                extend Dodopayments::Internal::Type::Enum

                EQUALS = :equals
                NOT_EQUALS = :not_equals
                GREATER_THAN = :greater_than
                GREATER_THAN_OR_EQUALS = :greater_than_or_equals
                LESS_THAN = :less_than
                LESS_THAN_OR_EQUALS = :less_than_or_equals
                CONTAINS = :contains
                DOES_NOT_CONTAIN = :does_not_contain

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # Filter value - can be string, number, or boolean
              #
              # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition#value
              module Value
                extend Dodopayments::Internal::Type::Union

                variant String

                variant Float

                variant Dodopayments::Internal::Type::Boolean

                # @!method self.variants
                #   @return [Array(String, Float, Boolean)]
              end
            end

            class Level1NestedFilter < Dodopayments::Internal::Type::BaseModel
              # @!attribute clauses
              #   Level 2: Can be conditions or nested filters (1 more level allowed)
              #
              #   @return [Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter>]
              required :clauses,
                       union: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses }

              # @!attribute conjunction
              #
              #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Conjunction]
              required :conjunction,
                       enum: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Conjunction }

              # @!method initialize(clauses:, conjunction:)
              #   Level 2 nested filter
              #
              #   @param clauses [Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter>] Level 2: Can be conditions or nested filters (1 more level allowed)
              #
              #   @param conjunction [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Conjunction]

              # Level 2: Can be conditions or nested filters (1 more level allowed)
              #
              # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter#clauses
              module Clauses
                extend Dodopayments::Internal::Type::Union

                # Array of filter conditions
                variant -> { Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterConditionArray }

                # Array of level 3 nested filters (final level)
                variant -> { Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilterArray }

                class Level2FilterCondition < Dodopayments::Internal::Type::BaseModel
                  # @!attribute key
                  #   Filter key to apply
                  #
                  #   @return [String]
                  required :key, String

                  # @!attribute operator
                  #
                  #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Operator]
                  required :operator,
                           enum: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Operator }

                  # @!attribute value
                  #   Filter value - can be string, number, or boolean
                  #
                  #   @return [String, Float, Boolean]
                  required :value,
                           union: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Value }

                  # @!method initialize(key:, operator:, value:)
                  #   Filter condition with key, operator, and value
                  #
                  #   @param key [String] Filter key to apply
                  #
                  #   @param operator [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Operator]
                  #
                  #   @param value [String, Float, Boolean] Filter value - can be string, number, or boolean

                  # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition#operator
                  module Operator
                    extend Dodopayments::Internal::Type::Enum

                    EQUALS = :equals
                    NOT_EQUALS = :not_equals
                    GREATER_THAN = :greater_than
                    GREATER_THAN_OR_EQUALS = :greater_than_or_equals
                    LESS_THAN = :less_than
                    LESS_THAN_OR_EQUALS = :less_than_or_equals
                    CONTAINS = :contains
                    DOES_NOT_CONTAIN = :does_not_contain

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end

                  # Filter value - can be string, number, or boolean
                  #
                  # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition#value
                  module Value
                    extend Dodopayments::Internal::Type::Union

                    variant String

                    variant Float

                    variant Dodopayments::Internal::Type::Boolean

                    # @!method self.variants
                    #   @return [Array(String, Float, Boolean)]
                  end
                end

                class Level2NestedFilter < Dodopayments::Internal::Type::BaseModel
                  # @!attribute clauses
                  #   Level 3: Filter conditions only (max depth reached)
                  #
                  #   @return [Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause>]
                  required :clauses,
                           -> do
                             Dodopayments::Internal::Type::ArrayOf[
                               Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause
                             ]
                           end

                  # @!attribute conjunction
                  #
                  #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Conjunction]
                  required :conjunction,
                           enum: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Conjunction }

                  # @!method initialize(clauses:, conjunction:)
                  #   Level 3 nested filter (final nesting level)
                  #
                  #   @param clauses [Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause>] Level 3: Filter conditions only (max depth reached)
                  #
                  #   @param conjunction [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Conjunction]

                  class Clause < Dodopayments::Internal::Type::BaseModel
                    # @!attribute key
                    #   Filter key to apply
                    #
                    #   @return [String]
                    required :key, String

                    # @!attribute operator
                    #
                    #   @return [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Operator]
                    required :operator,
                             enum: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Operator }

                    # @!attribute value
                    #   Filter value - can be string, number, or boolean
                    #
                    #   @return [String, Float, Boolean]
                    required :value,
                             union: -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Value }

                    # @!method initialize(key:, operator:, value:)
                    #   Filter condition with key, operator, and value
                    #
                    #   @param key [String] Filter key to apply
                    #
                    #   @param operator [Symbol, Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Operator]
                    #
                    #   @param value [String, Float, Boolean] Filter value - can be string, number, or boolean

                    # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause#operator
                    module Operator
                      extend Dodopayments::Internal::Type::Enum

                      EQUALS = :equals
                      NOT_EQUALS = :not_equals
                      GREATER_THAN = :greater_than
                      GREATER_THAN_OR_EQUALS = :greater_than_or_equals
                      LESS_THAN = :less_than
                      LESS_THAN_OR_EQUALS = :less_than_or_equals
                      CONTAINS = :contains
                      DOES_NOT_CONTAIN = :does_not_contain

                      # @!method self.values
                      #   @return [Array<Symbol>]
                    end

                    # Filter value - can be string, number, or boolean
                    #
                    # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause#value
                    module Value
                      extend Dodopayments::Internal::Type::Union

                      variant String

                      variant Float

                      variant Dodopayments::Internal::Type::Boolean

                      # @!method self.variants
                      #   @return [Array(String, Float, Boolean)]
                    end
                  end

                  # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter#conjunction
                  module Conjunction
                    extend Dodopayments::Internal::Type::Enum

                    AND = :and
                    OR = :or

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @!method self.variants
                #   @return [Array(Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter>)]

                # @type [Dodopayments::Internal::Type::Converter]
                Level2FilterConditionArray =
                  Dodopayments::Internal::Type::ArrayOf[
                    -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition }
                  ]

                # @type [Dodopayments::Internal::Type::Converter]
                Level2NestedFilterArray =
                  Dodopayments::Internal::Type::ArrayOf[
                    -> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter }
                  ]
              end

              # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter#conjunction
              module Conjunction
                extend Dodopayments::Internal::Type::Enum

                AND = :and
                OR = :or

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter>)]

            # @type [Dodopayments::Internal::Type::Converter]
            Level1FilterConditionArray =
              Dodopayments::Internal::Type::ArrayOf[-> {
                Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition
              }]

            # @type [Dodopayments::Internal::Type::Converter]
            Level1NestedFilterArray =
              Dodopayments::Internal::Type::ArrayOf[-> {
                Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter
              }]
          end

          # @see Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter#conjunction
          module Conjunction
            extend Dodopayments::Internal::Type::Enum

            AND = :and
            OR = :or

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Array<Dodopayments::Models::MeterFilter::Clauses::DirectFilterCondition>, Array<Dodopayments::Models::MeterFilter::Clauses::NestedMeterFilter>)]

        # @type [Dodopayments::Internal::Type::Converter]
        DirectFilterConditionArray =
          Dodopayments::Internal::Type::ArrayOf[-> {
            Dodopayments::MeterFilter::Clauses::DirectFilterCondition
          }]

        # @type [Dodopayments::Internal::Type::Converter]
        NestedMeterFilterArray =
          Dodopayments::Internal::Type::ArrayOf[-> { Dodopayments::MeterFilter::Clauses::NestedMeterFilter }]
      end

      # Logical conjunction to apply between clauses (and/or)
      #
      # @see Dodopayments::Models::MeterFilter#conjunction
      module Conjunction
        extend Dodopayments::Internal::Type::Enum

        AND = :and
        OR = :or

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
