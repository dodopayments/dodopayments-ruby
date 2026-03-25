# typed: strong

module Dodopayments
  module Models
    module ProductCollections
      module Groups
        class ItemUpdateParams < Dodopayments::Internal::Type::BaseModel
          extend Dodopayments::Internal::Type::RequestParameters::Converter
          include Dodopayments::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::ProductCollections::Groups::ItemUpdateParams,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :group_id

          sig { returns(String) }
          attr_accessor :item_id

          # Status of the product in the group
          sig { returns(T::Boolean) }
          attr_accessor :status

          sig do
            params(
              id: String,
              group_id: String,
              item_id: String,
              status: T::Boolean,
              request_options: Dodopayments::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            group_id:,
            item_id:,
            # Status of the product in the group
            status:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                group_id: String,
                item_id: String,
                status: T::Boolean,
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
