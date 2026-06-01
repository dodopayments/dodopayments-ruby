# frozen_string_literal: true

module Dodopayments
  module Resources
    class ProductCollections
      # @return [Dodopayments::Resources::ProductCollections::Groups]
      attr_reader :groups

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::ProductCollectionCreateParams} for more details.
      #
      # @overload create(groups:, name:, brand_id: nil, description: nil, effective_at_on_downgrade: nil, effective_at_on_upgrade: nil, on_payment_failure: nil, proration_billing_mode_on_downgrade: nil, proration_billing_mode_on_upgrade: nil, request_options: {})
      #
      # @param groups [Array<Dodopayments::Models::ProductCollections::ProductCollectionGroupDetails>] Groups of products in this collection
      #
      # @param name [String] Name of the product collection
      #
      # @param brand_id [String, nil] Brand id for the collection, if not provided will default to primary brand
      #
      # @param description [String, nil] Optional description of the product collection
      #
      # @param effective_at_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::EffectiveAtOnDowngrade, nil] Default effective_at setting for subscription plan downgrades (NULL = inherit fr
      #
      # @param effective_at_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::EffectiveAtOnUpgrade, nil] Default effective_at setting for subscription plan upgrades (NULL = inherit from
      #
      # @param on_payment_failure [Symbol, Dodopayments::Models::ProductCollectionCreateParams::OnPaymentFailure, nil] Default behavior for subscription plan changes on payment failure (NULL = inheri
      #
      # @param proration_billing_mode_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::ProrationBillingModeOnDowngrade, nil] Default proration billing mode for subscription plan downgrades (NULL = inherit
      #
      # @param proration_billing_mode_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionCreateParams::ProrationBillingModeOnUpgrade, nil] Default proration billing mode for subscription plan upgrades (NULL = inherit fr
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::ProductCollection]
      #
      # @see Dodopayments::Models::ProductCollectionCreateParams
      def create(params)
        parsed, options = Dodopayments::ProductCollectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "product-collections",
          body: parsed,
          model: Dodopayments::ProductCollection,
          options: options
        )
      end

      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Product Collection Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::ProductCollection]
      #
      # @see Dodopayments::Models::ProductCollectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["product-collections/%1$s", id],
          model: Dodopayments::ProductCollection,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::ProductCollectionUpdateParams} for more details.
      #
      # @overload update(id, brand_id: nil, description: nil, effective_at_on_downgrade: nil, effective_at_on_upgrade: nil, group_order: nil, image_id: nil, name: nil, on_payment_failure: nil, proration_billing_mode_on_downgrade: nil, proration_billing_mode_on_upgrade: nil, request_options: {})
      #
      # @param id [String] Product Collection Id
      #
      # @param brand_id [String, nil] Optional brand_id update
      #
      # @param description [String, nil] Optional description update - pass null to remove, omit to keep unchanged
      #
      # @param effective_at_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::EffectiveAtOnDowngrade, nil] Effective_at setting for downgrades: Some(Some(val)) = set, Some(None) = clear (
      #
      # @param effective_at_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::EffectiveAtOnUpgrade, nil] Effective_at setting for upgrades: Some(Some(val)) = set, Some(None) = clear (in
      #
      # @param group_order [Array<String>, nil] Optional new order for groups (array of group UUIDs in desired order)
      #
      # @param image_id [String, nil] Optional image update - pass null to remove, omit to keep unchanged
      #
      # @param name [String, nil] Optional new name for the collection
      #
      # @param on_payment_failure [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::OnPaymentFailure, nil] On payment failure behavior: Some(Some(val)) = set, Some(None) = clear (inherit)
      #
      # @param proration_billing_mode_on_downgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::ProrationBillingModeOnDowngrade, nil] Proration billing mode for downgrades: Some(Some(val)) = set, Some(None) = clear
      #
      # @param proration_billing_mode_on_upgrade [Symbol, Dodopayments::Models::ProductCollectionUpdateParams::ProrationBillingModeOnUpgrade, nil] Proration billing mode for upgrades: Some(Some(val)) = set, Some(None) = clear (
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::ProductCollectionUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::ProductCollectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["product-collections/%1$s", id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @overload list(archived: nil, brand_id: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param archived [Boolean] List archived collections
      #
      # @param brand_id [String] Filter by Brand id
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::ProductCollectionListResponse>]
      #
      # @see Dodopayments::Models::ProductCollectionListParams
      def list(params = {})
        parsed, options = Dodopayments::ProductCollectionListParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "product-collections",
          query: query,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::ProductCollectionListResponse,
          options: options
        )
      end

      # @overload delete(id, request_options: {})
      #
      # @param id [String] Product Collection Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::ProductCollectionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["product-collections/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload unarchive(id, request_options: {})
      #
      # @param id [String] Product Collection Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::ProductCollectionUnarchiveResponse]
      #
      # @see Dodopayments::Models::ProductCollectionUnarchiveParams
      def unarchive(id, params = {})
        @client.request(
          method: :post,
          path: ["product-collections/%1$s/unarchive", id],
          model: Dodopayments::Models::ProductCollectionUnarchiveResponse,
          options: params[:request_options]
        )
      end

      # @overload update_images(id, force_update: nil, request_options: {})
      #
      # @param id [String] Product Collection Id
      #
      # @param force_update [Boolean, nil] If true, generates a new image ID to force cache invalidation
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::ProductCollectionUpdateImagesResponse]
      #
      # @see Dodopayments::Models::ProductCollectionUpdateImagesParams
      def update_images(id, params = {})
        parsed, options = Dodopayments::ProductCollectionUpdateImagesParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :put,
          path: ["product-collections/%1$s/images", id],
          query: query,
          model: Dodopayments::Models::ProductCollectionUpdateImagesResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @groups = Dodopayments::Resources::ProductCollections::Groups.new(client: client)
      end
    end
  end
end
