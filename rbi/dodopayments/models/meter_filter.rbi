# typed: strong

module Dodopayments
  module Models
    class MeterFilter < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::MeterFilter, Dodopayments::Internal::AnyHash)
        end

      # Filter clauses - can be direct conditions or nested filters (up to 3 levels
      # deep)
      sig { returns(Dodopayments::MeterFilter::Clauses::Variants) }
      attr_accessor :clauses

      # Logical conjunction to apply between clauses (and/or)
      sig { returns(Dodopayments::Conjunction::OrSymbol) }
      attr_accessor :conjunction

      # A filter structure that combines multiple conditions with logical conjunctions
      # (AND/OR).
      #
      # Supports up to 3 levels of nesting to create complex filter expressions. Each
      # filter has a conjunction (and/or) and clauses that can be either direct
      # conditions or nested filters.
      sig do
        params(
          clauses: Dodopayments::MeterFilter::Clauses::Variants,
          conjunction: Dodopayments::Conjunction::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter clauses - can be direct conditions or nested filters (up to 3 levels
        # deep)
        clauses:,
        # Logical conjunction to apply between clauses (and/or)
        conjunction:
      )
      end

      sig do
        override.returns(
          {
            clauses: Dodopayments::MeterFilter::Clauses::Variants,
            conjunction: Dodopayments::Conjunction::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Filter clauses - can be direct conditions or nested filters (up to 3 levels
      # deep)
      module Clauses
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              T::Array[
                Dodopayments::MeterFilter::Clauses::DirectFilterCondition
              ],
              T::Array[Dodopayments::MeterFilter::Clauses::NestedMeterFilter]
            )
          end

        class DirectFilterCondition < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::MeterFilter::Clauses::DirectFilterCondition,
                Dodopayments::Internal::AnyHash
              )
            end

          # Filter key to apply
          sig { returns(String) }
          attr_accessor :key

          sig { returns(Dodopayments::FilterOperator::OrSymbol) }
          attr_accessor :operator

          # Filter value - can be string, number, or boolean
          sig do
            returns(
              Dodopayments::MeterFilter::Clauses::DirectFilterCondition::Value::Variants
            )
          end
          attr_accessor :value

          # Filter condition with key, operator, and value
          sig do
            params(
              key: String,
              operator: Dodopayments::FilterOperator::OrSymbol,
              value:
                Dodopayments::MeterFilter::Clauses::DirectFilterCondition::Value::Variants
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter key to apply
            key:,
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
                  Dodopayments::MeterFilter::Clauses::DirectFilterCondition::Value::Variants
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
                  Dodopayments::MeterFilter::Clauses::DirectFilterCondition::Value::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end

        class NestedMeterFilter < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::MeterFilter::Clauses::NestedMeterFilter,
                Dodopayments::Internal::AnyHash
              )
            end

          # Level 1: Can be conditions or nested filters (2 more levels allowed)
          sig do
            returns(
              Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Variants
            )
          end
          attr_accessor :clauses

          sig { returns(Dodopayments::Conjunction::OrSymbol) }
          attr_accessor :conjunction

          # Level 1 nested filter - can contain Level 2 filters
          sig do
            params(
              clauses:
                Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Variants,
              conjunction: Dodopayments::Conjunction::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Level 1: Can be conditions or nested filters (2 more levels allowed)
            clauses:,
            conjunction:
          )
          end

          sig do
            override.returns(
              {
                clauses:
                  Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Variants,
                conjunction: Dodopayments::Conjunction::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Level 1: Can be conditions or nested filters (2 more levels allowed)
          module Clauses
            extend Dodopayments::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  T::Array[
                    Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition
                  ],
                  T::Array[
                    Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter
                  ]
                )
              end

            class Level1FilterCondition < Dodopayments::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition,
                    Dodopayments::Internal::AnyHash
                  )
                end

              # Filter key to apply
              sig { returns(String) }
              attr_accessor :key

              sig { returns(Dodopayments::FilterOperator::OrSymbol) }
              attr_accessor :operator

              # Filter value - can be string, number, or boolean
              sig do
                returns(
                  Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Value::Variants
                )
              end
              attr_accessor :value

              # Filter condition with key, operator, and value
              sig do
                params(
                  key: String,
                  operator: Dodopayments::FilterOperator::OrSymbol,
                  value:
                    Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Value::Variants
                ).returns(T.attached_class)
              end
              def self.new(
                # Filter key to apply
                key:,
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
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Value::Variants
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
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition::Value::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end

            class Level1NestedFilter < Dodopayments::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter,
                    Dodopayments::Internal::AnyHash
                  )
                end

              # Level 2: Can be conditions or nested filters (1 more level allowed)
              sig do
                returns(
                  Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Variants
                )
              end
              attr_accessor :clauses

              sig { returns(Dodopayments::Conjunction::OrSymbol) }
              attr_accessor :conjunction

              # Level 2 nested filter
              sig do
                params(
                  clauses:
                    Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Variants,
                  conjunction: Dodopayments::Conjunction::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Level 2: Can be conditions or nested filters (1 more level allowed)
                clauses:,
                conjunction:
              )
              end

              sig do
                override.returns(
                  {
                    clauses:
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Variants,
                    conjunction: Dodopayments::Conjunction::OrSymbol
                  }
                )
              end
              def to_hash
              end

              # Level 2: Can be conditions or nested filters (1 more level allowed)
              module Clauses
                extend Dodopayments::Internal::Type::Union

                Variants =
                  T.type_alias do
                    T.any(
                      T::Array[
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition
                      ],
                      T::Array[
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter
                      ]
                    )
                  end

                class Level2FilterCondition < Dodopayments::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition,
                        Dodopayments::Internal::AnyHash
                      )
                    end

                  # Filter key to apply
                  sig { returns(String) }
                  attr_accessor :key

                  sig { returns(Dodopayments::FilterOperator::OrSymbol) }
                  attr_accessor :operator

                  # Filter value - can be string, number, or boolean
                  sig do
                    returns(
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Value::Variants
                    )
                  end
                  attr_accessor :value

                  # Filter condition with key, operator, and value
                  sig do
                    params(
                      key: String,
                      operator: Dodopayments::FilterOperator::OrSymbol,
                      value:
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Value::Variants
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Filter key to apply
                    key:,
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
                          Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Value::Variants
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
                          Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition::Value::Variants
                        ]
                      )
                    end
                    def self.variants
                    end
                  end
                end

                class Level2NestedFilter < Dodopayments::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter,
                        Dodopayments::Internal::AnyHash
                      )
                    end

                  # Level 3: Filter conditions only (max depth reached)
                  sig do
                    returns(
                      T::Array[
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause
                      ]
                    )
                  end
                  attr_accessor :clauses

                  sig { returns(Dodopayments::Conjunction::OrSymbol) }
                  attr_accessor :conjunction

                  # Level 3 nested filter (final nesting level)
                  sig do
                    params(
                      clauses:
                        T::Array[
                          Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::OrHash
                        ],
                      conjunction: Dodopayments::Conjunction::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # Level 3: Filter conditions only (max depth reached)
                    clauses:,
                    conjunction:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        clauses:
                          T::Array[
                            Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause
                          ],
                        conjunction: Dodopayments::Conjunction::OrSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  class Clause < Dodopayments::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause,
                          Dodopayments::Internal::AnyHash
                        )
                      end

                    # Filter key to apply
                    sig { returns(String) }
                    attr_accessor :key

                    sig { returns(Dodopayments::FilterOperator::OrSymbol) }
                    attr_accessor :operator

                    # Filter value - can be string, number, or boolean
                    sig do
                      returns(
                        Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Value::Variants
                      )
                    end
                    attr_accessor :value

                    # Filter condition with key, operator, and value
                    sig do
                      params(
                        key: String,
                        operator: Dodopayments::FilterOperator::OrSymbol,
                        value:
                          Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Value::Variants
                      ).returns(T.attached_class)
                    end
                    def self.new(
                      # Filter key to apply
                      key:,
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
                            Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Value::Variants
                        }
                      )
                    end
                    def to_hash
                    end

                    # Filter value - can be string, number, or boolean
                    module Value
                      extend Dodopayments::Internal::Type::Union

                      Variants =
                        T.type_alias { T.any(String, Float, T::Boolean) }

                      sig do
                        override.returns(
                          T::Array[
                            Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter::Clause::Value::Variants
                          ]
                        )
                      end
                      def self.variants
                      end
                    end
                  end
                end

                sig do
                  override.returns(
                    T::Array[
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Variants
                    ]
                  )
                end
                def self.variants
                end

                Level2FilterConditionArray =
                  T.let(
                    Dodopayments::Internal::Type::ArrayOf[
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2FilterCondition
                    ],
                    Dodopayments::Internal::Type::Converter
                  )

                Level2NestedFilterArray =
                  T.let(
                    Dodopayments::Internal::Type::ArrayOf[
                      Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter::Clauses::Level2NestedFilter
                    ],
                    Dodopayments::Internal::Type::Converter
                  )
              end
            end

            sig do
              override.returns(
                T::Array[
                  Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Variants
                ]
              )
            end
            def self.variants
            end

            Level1FilterConditionArray =
              T.let(
                Dodopayments::Internal::Type::ArrayOf[
                  Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1FilterCondition
                ],
                Dodopayments::Internal::Type::Converter
              )

            Level1NestedFilterArray =
              T.let(
                Dodopayments::Internal::Type::ArrayOf[
                  Dodopayments::MeterFilter::Clauses::NestedMeterFilter::Clauses::Level1NestedFilter
                ],
                Dodopayments::Internal::Type::Converter
              )
          end
        end

        sig do
          override.returns(
            T::Array[Dodopayments::MeterFilter::Clauses::Variants]
          )
        end
        def self.variants
        end

        DirectFilterConditionArray =
          T.let(
            Dodopayments::Internal::Type::ArrayOf[
              Dodopayments::MeterFilter::Clauses::DirectFilterCondition
            ],
            Dodopayments::Internal::Type::Converter
          )

        NestedMeterFilterArray =
          T.let(
            Dodopayments::Internal::Type::ArrayOf[
              Dodopayments::MeterFilter::Clauses::NestedMeterFilter
            ],
            Dodopayments::Internal::Type::Converter
          )
      end
    end
  end
end
