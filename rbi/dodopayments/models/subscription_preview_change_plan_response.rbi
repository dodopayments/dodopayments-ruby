# typed: strong

module Dodopayments
  module Models
    class SubscriptionPreviewChangePlanResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionPreviewChangePlanResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig do
        returns(
          Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge
        )
      end
      attr_reader :immediate_charge

      sig do
        params(
          immediate_charge:
            Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::OrHash
        ).void
      end
      attr_writer :immediate_charge

      # Response struct representing subscription details
      sig { returns(Dodopayments::Subscription) }
      attr_reader :new_plan

      sig { params(new_plan: Dodopayments::Subscription::OrHash).void }
      attr_writer :new_plan

      sig do
        params(
          immediate_charge:
            Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::OrHash,
          new_plan: Dodopayments::Subscription::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        immediate_charge:,
        # Response struct representing subscription details
        new_plan:
      )
      end

      sig do
        override.returns(
          {
            immediate_charge:
              Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge,
            new_plan: Dodopayments::Subscription
          }
        )
      end
      def to_hash
      end

      class ImmediateCharge < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge,
              Dodopayments::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Variants
            ]
          )
        end
        attr_accessor :line_items

        sig do
          returns(
            Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary
          )
        end
        attr_reader :summary

        sig do
          params(
            summary:
              Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary::OrHash
          ).void
        end
        attr_writer :summary

        sig do
          params(
            line_items:
              T::Array[
                T.any(
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::OrHash,
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::OrHash,
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::OrHash
                )
              ],
            summary:
              Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary::OrHash
          ).returns(T.attached_class)
        end
        def self.new(line_items:, summary:)
        end

        sig do
          override.returns(
            {
              line_items:
                T::Array[
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Variants
                ],
              summary:
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary
            }
          )
        end
        def to_hash
        end

        module LineItem
          extend Dodopayments::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0,
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1,
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2
              )
            end

          class UnionMember0 < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Dodopayments::Currency::TaggedSymbol) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :product_id

            sig { returns(Float) }
            attr_accessor :proration_factor

            sig { returns(Integer) }
            attr_accessor :quantity

            sig { returns(T::Boolean) }
            attr_accessor :tax_inclusive

            sig do
              returns(
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(Integer) }
            attr_accessor :unit_price

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            sig { returns(T.nilable(Integer)) }
            attr_accessor :tax

            sig { returns(T.nilable(Float)) }
            attr_accessor :tax_rate

            sig do
              params(
                id: String,
                currency: Dodopayments::Currency::OrSymbol,
                product_id: String,
                proration_factor: Float,
                quantity: Integer,
                tax_inclusive: T::Boolean,
                type:
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::Type::OrSymbol,
                unit_price: Integer,
                description: T.nilable(String),
                name: T.nilable(String),
                tax: T.nilable(Integer),
                tax_rate: T.nilable(Float)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              currency:,
              product_id:,
              proration_factor:,
              quantity:,
              tax_inclusive:,
              type:,
              unit_price:,
              description: nil,
              name: nil,
              tax: nil,
              tax_rate: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  currency: Dodopayments::Currency::TaggedSymbol,
                  product_id: String,
                  proration_factor: Float,
                  quantity: Integer,
                  tax_inclusive: T::Boolean,
                  type:
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::Type::TaggedSymbol,
                  unit_price: Integer,
                  description: T.nilable(String),
                  name: T.nilable(String),
                  tax: T.nilable(Integer),
                  tax_rate: T.nilable(Float)
                }
              )
            end
            def to_hash
            end

            module Type
              extend Dodopayments::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUBSCRIPTION =
                T.let(
                  :subscription,
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember0::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember1 < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Dodopayments::Currency::TaggedSymbol) }
            attr_accessor :currency

            sig { returns(String) }
            attr_accessor :name

            sig { returns(Float) }
            attr_accessor :proration_factor

            sig { returns(Integer) }
            attr_accessor :quantity

            # Represents the different categories of taxation applicable to various products
            # and services.
            sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
            attr_accessor :tax_category

            sig { returns(T::Boolean) }
            attr_accessor :tax_inclusive

            sig { returns(Float) }
            attr_accessor :tax_rate

            sig do
              returns(
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(Integer) }
            attr_accessor :unit_price

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(T.nilable(Integer)) }
            attr_accessor :tax

            sig do
              params(
                id: String,
                currency: Dodopayments::Currency::OrSymbol,
                name: String,
                proration_factor: Float,
                quantity: Integer,
                tax_category: Dodopayments::TaxCategory::OrSymbol,
                tax_inclusive: T::Boolean,
                tax_rate: Float,
                type:
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::Type::OrSymbol,
                unit_price: Integer,
                description: T.nilable(String),
                tax: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              currency:,
              name:,
              proration_factor:,
              quantity:,
              # Represents the different categories of taxation applicable to various products
              # and services.
              tax_category:,
              tax_inclusive:,
              tax_rate:,
              type:,
              unit_price:,
              description: nil,
              tax: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  currency: Dodopayments::Currency::TaggedSymbol,
                  name: String,
                  proration_factor: Float,
                  quantity: Integer,
                  tax_category: Dodopayments::TaxCategory::TaggedSymbol,
                  tax_inclusive: T::Boolean,
                  tax_rate: Float,
                  type:
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::Type::TaggedSymbol,
                  unit_price: Integer,
                  description: T.nilable(String),
                  tax: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end

            module Type
              extend Dodopayments::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ADDON =
                T.let(
                  :addon,
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember1::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class UnionMember2 < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :chargeable_units

            sig { returns(Dodopayments::Currency::TaggedSymbol) }
            attr_accessor :currency

            sig { returns(Integer) }
            attr_accessor :free_threshold

            sig { returns(String) }
            attr_accessor :name

            sig { returns(String) }
            attr_accessor :price_per_unit

            sig { returns(Integer) }
            attr_accessor :subtotal

            sig { returns(T::Boolean) }
            attr_accessor :tax_inclusive

            sig { returns(Float) }
            attr_accessor :tax_rate

            sig do
              returns(
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::Type::TaggedSymbol
              )
            end
            attr_accessor :type

            sig { returns(String) }
            attr_accessor :units_consumed

            sig { returns(T.nilable(String)) }
            attr_accessor :description

            sig { returns(T.nilable(Integer)) }
            attr_accessor :tax

            sig do
              params(
                id: String,
                chargeable_units: String,
                currency: Dodopayments::Currency::OrSymbol,
                free_threshold: Integer,
                name: String,
                price_per_unit: String,
                subtotal: Integer,
                tax_inclusive: T::Boolean,
                tax_rate: Float,
                type:
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::Type::OrSymbol,
                units_consumed: String,
                description: T.nilable(String),
                tax: T.nilable(Integer)
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              chargeable_units:,
              currency:,
              free_threshold:,
              name:,
              price_per_unit:,
              subtotal:,
              tax_inclusive:,
              tax_rate:,
              type:,
              units_consumed:,
              description: nil,
              tax: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  chargeable_units: String,
                  currency: Dodopayments::Currency::TaggedSymbol,
                  free_threshold: Integer,
                  name: String,
                  price_per_unit: String,
                  subtotal: Integer,
                  tax_inclusive: T::Boolean,
                  tax_rate: Float,
                  type:
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::Type::TaggedSymbol,
                  units_consumed: String,
                  description: T.nilable(String),
                  tax: T.nilable(Integer)
                }
              )
            end
            def to_hash
            end

            module Type
              extend Dodopayments::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              METER =
                T.let(
                  :meter,
                  Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::UnionMember2::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::LineItem::Variants
              ]
            )
          end
          def self.variants
          end
        end

        class Summary < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::SubscriptionPreviewChangePlanResponse::ImmediateCharge::Summary,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Dodopayments::Currency::TaggedSymbol) }
          attr_accessor :currency

          sig { returns(Integer) }
          attr_accessor :customer_credits

          sig { returns(Integer) }
          attr_accessor :settlement_amount

          sig { returns(Dodopayments::Currency::TaggedSymbol) }
          attr_accessor :settlement_currency

          sig { returns(Integer) }
          attr_accessor :total_amount

          sig { returns(T.nilable(Integer)) }
          attr_accessor :settlement_tax

          sig { returns(T.nilable(Integer)) }
          attr_accessor :tax

          sig do
            params(
              currency: Dodopayments::Currency::OrSymbol,
              customer_credits: Integer,
              settlement_amount: Integer,
              settlement_currency: Dodopayments::Currency::OrSymbol,
              total_amount: Integer,
              settlement_tax: T.nilable(Integer),
              tax: T.nilable(Integer)
            ).returns(T.attached_class)
          end
          def self.new(
            currency:,
            customer_credits:,
            settlement_amount:,
            settlement_currency:,
            total_amount:,
            settlement_tax: nil,
            tax: nil
          )
          end

          sig do
            override.returns(
              {
                currency: Dodopayments::Currency::TaggedSymbol,
                customer_credits: Integer,
                settlement_amount: Integer,
                settlement_currency: Dodopayments::Currency::TaggedSymbol,
                total_amount: Integer,
                settlement_tax: T.nilable(Integer),
                tax: T.nilable(Integer)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
