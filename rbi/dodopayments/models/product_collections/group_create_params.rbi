# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      class GroupCreateParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::ProductCollections::GroupCreateParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Products in this group
        sig do
          returns(
            T::Array[
              Dodopayments::ProductCollections::GroupCreateParams::Product
            ]
          )
        end
        attr_accessor :products

        # Optional group name. Multiple groups can have null names, but named groups must
        # be unique per collection
        sig { returns(T.nilable(String)) }
        attr_accessor :group_name

        # Status of the group (defaults to true if not provided)
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :status

        sig do
          params(
            id: String,
            products:
              T::Array[
                Dodopayments::ProductCollections::GroupCreateParams::Product::OrHash
              ],
            group_name: T.nilable(String),
            status: T.nilable(T::Boolean),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Products in this group
          products:,
          # Optional group name. Multiple groups can have null names, but named groups must
          # be unique per collection
          group_name: nil,
          # Status of the group (defaults to true if not provided)
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              products:
                T::Array[
                  Dodopayments::ProductCollections::GroupCreateParams::Product
                ],
              group_name: T.nilable(String),
              status: T.nilable(T::Boolean),
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
                Dodopayments::ProductCollections::GroupCreateParams::Product,
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
