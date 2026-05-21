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
            returns(T::Array[Dodopayments::ProductCollections::GroupProduct])
          end
          attr_accessor :products

          sig do
            params(
              id: String,
              group_id: String,
              products:
                T::Array[
                  Dodopayments::ProductCollections::GroupProduct::OrHash
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
                  T::Array[Dodopayments::ProductCollections::GroupProduct],
                request_options: Dodopayments::RequestOptions
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
