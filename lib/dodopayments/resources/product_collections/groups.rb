# frozen_string_literal: true

module Dodopayments
  module Resources
    class ProductCollections
      class Groups
        # @return [Dodopayments::Resources::ProductCollections::Groups::Items]
        attr_reader :items

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::ProductCollections::GroupCreateParams} for more details.
        #
        # @overload create(id, products:, group_name: nil, status: nil, request_options: {})
        #
        # @param id [String] Product Collection Id
        #
        # @param products [Array<Dodopayments::Models::ProductCollections::GroupCreateParams::Product>] Products in this group
        #
        # @param group_name [String, nil] Optional group name. Multiple groups can have null names, but named groups must
        #
        # @param status [Boolean, nil] Status of the group (defaults to true if not provided)
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::ProductCollections::GroupCreateResponse]
        #
        # @see Dodopayments::Models::ProductCollections::GroupCreateParams
        def create(id, params)
          parsed, options = Dodopayments::ProductCollections::GroupCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["product-collections/%1$s/groups", id],
            body: parsed,
            model: Dodopayments::Models::ProductCollections::GroupCreateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::ProductCollections::GroupUpdateParams} for more details.
        #
        # @overload update(group_id, id:, group_name: nil, product_order: nil, status: nil, request_options: {})
        #
        # @param group_id [String] Path param: Product Collection Group Id
        #
        # @param id [String] Path param: Product Collection Id
        #
        # @param group_name [String, nil] Body param: Optional group name update: Some(Some(name)) = set name, Some(None)
        #
        # @param product_order [Array<String>, nil] Body param: Optional new order for products in this group (array of product_coll
        #
        # @param status [Boolean, nil] Body param: Optional status update
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::ProductCollections::GroupUpdateParams
        def update(group_id, params)
          parsed, options = Dodopayments::ProductCollections::GroupUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["product-collections/%1$s/groups/%2$s", id, group_id],
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @overload delete(group_id, id:, request_options: {})
        #
        # @param group_id [String] Product Collection Group Id
        #
        # @param id [String] Product Collection Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::ProductCollections::GroupDeleteParams
        def delete(group_id, params)
          parsed, options = Dodopayments::ProductCollections::GroupDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["product-collections/%1$s/groups/%2$s", id, group_id],
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Dodopayments::Client]
        def initialize(client:)
          @client = client
          @items = Dodopayments::Resources::ProductCollections::Groups::Items.new(client: client)
        end
      end
    end
  end
end
