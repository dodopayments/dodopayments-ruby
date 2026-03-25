# frozen_string_literal: true

module Dodopayments
  module Resources
    class ProductCollections
      class Groups
        class Items
          # @overload create(group_id, id:, products:, request_options: {})
          #
          # @param group_id [String] Path param: Product Collection Group Id
          #
          # @param id [String] Path param: Product Collection Id
          #
          # @param products [Array<Dodopayments::Models::ProductCollections::Groups::ItemCreateParams::Product>] Body param: Products to add to the group
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Dodopayments::Models::ProductCollections::Groups::ItemCreateResponseItem>]
          #
          # @see Dodopayments::Models::ProductCollections::Groups::ItemCreateParams
          def create(group_id, params)
            parsed, options = Dodopayments::ProductCollections::Groups::ItemCreateParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["product-collections/%1$s/groups/%2$s/items", id, group_id],
              body: parsed,
              model: Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductCollections::Groups::ItemCreateResponseItem],
              options: options
            )
          end

          # @overload update(item_id, id:, group_id:, status:, request_options: {})
          #
          # @param item_id [String] Path param: Collection item Id (product membership in group)
          #
          # @param id [String] Path param: Product Collection Id
          #
          # @param group_id [String] Path param: Product Collection Group Id
          #
          # @param status [Boolean] Body param: Status of the product in the group
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Dodopayments::Models::ProductCollections::Groups::ItemUpdateParams
          def update(item_id, params)
            parsed, options = Dodopayments::ProductCollections::Groups::ItemUpdateParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            group_id =
              parsed.delete(:group_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["product-collections/%1$s/groups/%2$s/items/%3$s", id, group_id, item_id],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @overload delete(item_id, id:, group_id:, request_options: {})
          #
          # @param item_id [String] Collection item Id (product membership in group)
          #
          # @param id [String] Product Collection Id
          #
          # @param group_id [String] Product Collection Group Id
          #
          # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see Dodopayments::Models::ProductCollections::Groups::ItemDeleteParams
          def delete(item_id, params)
            parsed, options = Dodopayments::ProductCollections::Groups::ItemDeleteParams.dump_request(params)
            id =
              parsed.delete(:id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            group_id =
              parsed.delete(:group_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["product-collections/%1$s/groups/%2$s/items/%3$s", id, group_id, item_id],
              model: NilClass,
              options: options
            )
          end

          # @api private
          #
          # @param client [Dodopayments::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
