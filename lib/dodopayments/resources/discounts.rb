# frozen_string_literal: true

module Dodopayments
  module Resources
    class Discounts
      # If `code` is omitted or empty, a random 16-char uppercase code is generated.
      #
      # @overload create(amount:, type:, code: nil, expires_at: nil, name: nil, restricted_to: nil, usage_limit: nil, request_options: {})
      #
      # @param amount [Integer]
      # @param type [Symbol, Dodopayments::Models::DiscountType]
      # @param code [String, nil]
      # @param expires_at [Time, nil]
      # @param name [String, nil]
      # @param restricted_to [Array<String>, nil]
      # @param usage_limit [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Discount]
      #
      # @see Dodopayments::Models::DiscountCreateParams
      def create(params)
        parsed, options = Dodopayments::Models::DiscountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "discounts",
          body: parsed,
          model: Dodopayments::Models::Discount,
          options: options
        )
      end

      # GET /discounts/{discount_id}
      #
      # @overload retrieve(discount_id, request_options: {})
      #
      # @param discount_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Discount]
      #
      # @see Dodopayments::Models::DiscountRetrieveParams
      def retrieve(discount_id, params = {})
        @client.request(
          method: :get,
          path: ["discounts/%1$s", discount_id],
          model: Dodopayments::Models::Discount,
          options: params[:request_options]
        )
      end

      # PATCH /discounts/{discount_id}
      #
      # @overload update(discount_id, amount: nil, code: nil, expires_at: nil, name: nil, restricted_to: nil, type: nil, usage_limit: nil, request_options: {})
      #
      # @param discount_id [String]
      # @param amount [Integer, nil]
      # @param code [String, nil]
      # @param expires_at [Time, nil]
      # @param name [String, nil]
      # @param restricted_to [Array<String>, nil]
      # @param type [Symbol, Dodopayments::Models::DiscountType, nil]
      # @param usage_limit [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Discount]
      #
      # @see Dodopayments::Models::DiscountUpdateParams
      def update(discount_id, params = {})
        parsed, options = Dodopayments::Models::DiscountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["discounts/%1$s", discount_id],
          body: parsed,
          model: Dodopayments::Models::Discount,
          options: options
        )
      end

      # GET /discounts
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::Discount>]
      #
      # @see Dodopayments::Models::DiscountListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::DiscountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "discounts",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::Discount,
          options: options
        )
      end

      # DELETE /discounts/{discount_id}
      #
      # @overload delete(discount_id, request_options: {})
      #
      # @param discount_id [String]
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
