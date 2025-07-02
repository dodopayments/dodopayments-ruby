# frozen_string_literal: true

module Dodopayments
  module Resources
    class Discounts
      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::DiscountCreateParams} for more details.
      #
      # POST /discounts If `code` is omitted or empty, a random 16-char uppercase code
      # is generated.
      #
      # @overload create(amount:, type:, code: nil, expires_at: nil, name: nil, restricted_to: nil, usage_limit: nil, request_options: {})
      #
      # @param amount [Integer] The discount amount.
      #
      # @param type [Symbol, Dodopayments::Models::DiscountType] The discount type (e.g. `percentage`, `flat`, or `flat_per_unit`).
      #
      # @param code [String, nil] Optionally supply a code (will be uppercased).
      #
      # @param expires_at [Time, nil] When the discount expires, if ever.
      #
      # @param name [String, nil]
      #
      # @param restricted_to [Array<String>, nil] List of product IDs to restrict usage (if any).
      #
      # @param usage_limit [Integer, nil] How many times this discount can be used (if any).
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Discount]
      #
      # @see Dodopayments::Models::DiscountCreateParams
      def create(params)
        parsed, options = Dodopayments::DiscountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "discounts",
          body: parsed,
          model: Dodopayments::Discount,
          options: options
        )
      end

      # GET /discounts/{discount_id}
      #
      # @overload retrieve(discount_id, request_options: {})
      #
      # @param discount_id [String] Discount Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Discount]
      #
      # @see Dodopayments::Models::DiscountRetrieveParams
      def retrieve(discount_id, params = {})
        @client.request(
          method: :get,
          path: ["discounts/%1$s", discount_id],
          model: Dodopayments::Discount,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::DiscountUpdateParams} for more details.
      #
      # PATCH /discounts/{discount_id}
      #
      # @overload update(discount_id, amount: nil, code: nil, expires_at: nil, name: nil, restricted_to: nil, type: nil, usage_limit: nil, request_options: {})
      #
      # @param discount_id [String] Discount Id
      #
      # @param amount [Integer, nil] If present, update the discount amount:
      #
      # @param code [String, nil] If present, update the discount code (uppercase).
      #
      # @param expires_at [Time, nil]
      #
      # @param name [String, nil]
      #
      # @param restricted_to [Array<String>, nil] If present, replaces all restricted product IDs with this new set.
      #
      # @param type [Symbol, Dodopayments::Models::DiscountType, nil] If present, update the discount type.
      #
      # @param usage_limit [Integer, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Discount]
      #
      # @see Dodopayments::Models::DiscountUpdateParams
      def update(discount_id, params = {})
        parsed, options = Dodopayments::DiscountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["discounts/%1$s", discount_id],
          body: parsed,
          model: Dodopayments::Discount,
          options: options
        )
      end

      # GET /discounts
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer] Page number (default = 0).
      #
      # @param page_size [Integer] Page size (default = 10, max = 100).
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Discount>]
      #
      # @see Dodopayments::Models::DiscountListParams
      def list(params = {})
        parsed, options = Dodopayments::DiscountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "discounts",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Discount,
          options: options
        )
      end

      # DELETE /discounts/{discount_id}
      #
      # @overload delete(discount_id, request_options: {})
      #
      # @param discount_id [String] Discount Id
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::DiscountDeleteParams
      def delete(discount_id, params = {})
        @client.request(
          method: :delete,
          path: ["discounts/%1$s", discount_id],
          model: NilClass,
          options: params[:request_options]
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
