# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        class ItemCreateParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::ProductCollections::Groups::ItemCreateParams,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :group_id

          # Products to add to the group
          sig do
            returns(
              T::Array[
                Dodopayments::ProductCollections::Groups::ItemCreateParams::Product
              ]
            )
          end
          attr_accessor :products

          sig do
            params(
              id: String,
              group_id: String,
              products:
                T::Array[
                  Dodopayments::ProductCollections::Groups::ItemCreateParams::Product::OrHash
                ],
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            group_id:,
            # Products to add to the group
            products:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                group_id: String,
                products:
                  T::Array[
                    Dodopayments::ProductCollections::Groups::ItemCreateParams::Product
                  ],
                request_options: Dodopayments::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Product < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::ProductCollections::Groups::ItemCreateParams::Product,
                  Dodopayments::Internal::AnyHash
                )
              end

            # Product ID to include in the group
            sig { returns(String) }
            attr_accessor :product_id

            # Status of the product in this group (defaults to true if not provided)
            sig { returns(T.nilable(T::Boolean)) }
            attr_accessor :status

            sig do
              params(product_id: String, status: T.nilable(T::Boolean)).returns(
                T.attached_class
              )
            end
            def self.new(
              # Product ID to include in the group
              product_id:,
              # Status of the product in this group (defaults to true if not provided)
              status: nil
            )
            end

            sig do
              override.returns(
                { product_id: String, status: T.nilable(T::Boolean) }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
