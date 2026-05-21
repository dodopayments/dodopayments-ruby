# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        class ItemDeleteParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::ProductCollections::Groups::ItemDeleteParams,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :group_id

          sig { returns(String) }
          attr_accessor :item_id

          sig do
            params(
              id: String,
              group_id: String,
              item_id: String,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, group_id:, item_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                id: String,
                group_id: String,
                item_id: String,
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
