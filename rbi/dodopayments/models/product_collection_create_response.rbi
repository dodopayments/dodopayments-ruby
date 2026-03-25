# typed: strong

module Dodopayments
  module Models
    class ProductCollectionCreateResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ProductCollectionCreateResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier for the product collection
      sig { returns(String) }
      attr_accessor :id

      # Brand ID for the collection
      sig { returns(String) }
      attr_accessor :brand_id

      # Timestamp when the collection was created
      sig { returns(Time) }
      attr_accessor :created_at

      # Groups in this collection
      sig do
        returns(
          T::Array[Dodopayments::Models::ProductCollectionCreateResponse::Group]
        )
      end
      attr_accessor :groups

      # Name of the collection
      sig { returns(String) }
      attr_accessor :name

      # Timestamp when the collection was last updated
      sig { returns(Time) }
      attr_accessor :updated_at

      # Description of the collection
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # URL of the collection image
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      sig do
        params(
          id: String,
          brand_id: String,
          created_at: Time,
          groups:
            T::Array[
              Dodopayments::Models::ProductCollectionCreateResponse::Group::OrHash
            ],
          name: String,
          updated_at: Time,
          description: T.nilable(String),
          image: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the product collection
        id:,
        # Brand ID for the collection
        brand_id:,
        # Timestamp when the collection was created
        created_at:,
        # Groups in this collection
        groups:,
        # Name of the collection
        name:,
        # Timestamp when the collection was last updated
        updated_at:,
        # Description of the collection
        description: nil,
        # URL of the collection image
        image: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            brand_id: String,
            created_at: Time,
            groups:
              T::Array[
                Dodopayments::Models::ProductCollectionCreateResponse::Group
              ],
            name: String,
            updated_at: Time,
            description: T.nilable(String),
            image: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Group < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::ProductCollectionCreateResponse::Group,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :group_id

        sig do
          returns(
            T::Array[
              Dodopayments::Models::ProductCollectionCreateResponse::Group::Product
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
                Dodopayments::Models::ProductCollectionCreateResponse::Group::Product::OrHash
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
                  Dodopayments::Models::ProductCollectionCreateResponse::Group::Product
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
                Dodopayments::Models::ProductCollectionCreateResponse::Group::Product,
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
