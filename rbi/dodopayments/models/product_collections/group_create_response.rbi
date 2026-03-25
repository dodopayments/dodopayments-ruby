# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      class GroupCreateResponse < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::ProductCollections::GroupCreateResponse,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :group_id

        sig do
          returns(
            T::Array[
              Dodopayments::Models::ProductCollections::GroupCreateResponse::Product
            ]
          )
        end
        attr_accessor :products

        sig { returns(T::Boolean) }
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_accessor :group_name

        sig do
          params(
            group_id: String,
            products:
              T::Array[
                Dodopayments::Models::ProductCollections::GroupCreateResponse::Product::OrHash
              ],
            status: T::Boolean,
            group_name: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(group_id:, products:, status:, group_name: nil)
        end

        sig do
          override.returns(
            {
              group_id: String,
              products:
                T::Array[
                  Dodopayments::Models::ProductCollections::GroupCreateResponse::Product
                ],
              status: T::Boolean,
              group_name: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        class Product < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::ProductCollections::GroupCreateResponse::Product,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(Integer) }
          attr_accessor :addons_count

          sig { returns(Integer) }
          attr_accessor :files_count

          # Whether this product has any credit entitlements attached
          sig { returns(T::Boolean) }
          attr_accessor :has_credit_entitlements

          sig { returns(T::Boolean) }
          attr_accessor :is_recurring

          sig { returns(T::Boolean) }
          attr_accessor :license_key_enabled

          sig { returns(Integer) }
          attr_accessor :meters_count

          sig { returns(String) }
          attr_accessor :product_id

          sig { returns(T::Boolean) }
          attr_accessor :status

          sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
          attr_accessor :currency

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(T.nilable(Integer)) }
          attr_accessor :price

          # One-time price details.
          sig { returns(T.nilable(Dodopayments::Price::Variants)) }
          attr_accessor :price_detail

          # Represents the different categories of taxation applicable to various products
          # and services.
          sig { returns(T.nilable(Dodopayments::TaxCategory::TaggedSymbol)) }
          attr_accessor :tax_category

          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :tax_inclusive

          sig do
            params(
              id: String,
              addons_count: Integer,
              files_count: Integer,
              has_credit_entitlements: T::Boolean,
              is_recurring: T::Boolean,
              license_key_enabled: T::Boolean,
              meters_count: Integer,
              product_id: String,
              status: T::Boolean,
              currency: T.nilable(Dodopayments::Currency::OrSymbol),
              description: T.nilable(String),
              name: T.nilable(String),
              price: T.nilable(Integer),
              price_detail:
                T.nilable(
                  T.any(
                    Dodopayments::Price::OneTimePrice::OrHash,
                    Dodopayments::Price::RecurringPrice::OrHash,
                    Dodopayments::Price::UsageBasedPrice::OrHash
                  )
                ),
              tax_category: T.nilable(Dodopayments::TaxCategory::OrSymbol),
              tax_inclusive: T.nilable(T::Boolean)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            addons_count:,
            files_count:,
            # Whether this product has any credit entitlements attached
            has_credit_entitlements:,
            is_recurring:,
            license_key_enabled:,
            meters_count:,
            product_id:,
            status:,
            currency: nil,
            description: nil,
            name: nil,
            price: nil,
            # One-time price details.
            price_detail: nil,
            # Represents the different categories of taxation applicable to various products
            # and services.
            tax_category: nil,
            tax_inclusive: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                addons_count: Integer,
                files_count: Integer,
                has_credit_entitlements: T::Boolean,
                is_recurring: T::Boolean,
                license_key_enabled: T::Boolean,
                meters_count: Integer,
                product_id: String,
                status: T::Boolean,
                currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
                description: T.nilable(String),
                name: T.nilable(String),
                price: T.nilable(Integer),
                price_detail: T.nilable(Dodopayments::Price::Variants),
                tax_category:
                  T.nilable(Dodopayments::TaxCategory::TaggedSymbol),
                tax_inclusive: T.nilable(T::Boolean)
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
