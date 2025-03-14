# frozen_string_literal: true

module DodoPayments
  module Resources
    class Discounts
      # If `code` is omitted or empty, a random 16-char uppercase code is generated.
      #
      # @param params [DodoPayments::Models::DiscountCreateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer] :amount The discount amount.
      #
      #     - If `discount_type` is **not** `percentage`, `amount` is in **USD cents**. For
      #       example, `100` means `$1.00`. Only USD is allowed.
      #     - If `discount_type` **is** `percentage`, `amount` is in **basis points**. For
      #       example, `540` means `5.4%`.
      #
      #     Must be at least 1.
      #
      #   @option params [Symbol, DodoPayments::Models::DiscountCreateParams::Type] :type
      #
      #   @option params [String, nil] :code Optionally supply a code (will be uppercased).
      #
      #     - Must be at least 3 characters if provided.
      #     - If omitted, a random 16-character code is generated.
      #
      #   @option params [Time, nil] :expires_at When the discount expires, if ever.
      #
      #   @option params [String, nil] :name
      #
      #   @option params [Array<String>, nil] :restricted_to List of product IDs to restrict usage (if any).
      #
      #   @option params [Integer, nil] :usage_limit How many times this discount can be used (if any). Must be >= 1 if provided.
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Discount]
      def create(params)
        parsed, options = DodoPayments::Models::DiscountCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "discounts",
          body: parsed,
          model: DodoPayments::Models::Discount,
          options: options
        )
      end

      # GET /discounts/{discount_id}
      #
      # @param discount_id [String] Discount Id
      #
      # @param params [DodoPayments::Models::DiscountRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Discount]
      def retrieve(discount_id, params = {})
        @client.request(
          method: :get,
          path: ["discounts/%0s", discount_id],
          model: DodoPayments::Models::Discount,
          options: params[:request_options]
        )
      end

      # PATCH /discounts/{discount_id}
      #
      # @param discount_id [String] Discount Id
      #
      # @param params [DodoPayments::Models::DiscountUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :amount If present, update the discount amount:
      #
      #     - If `discount_type` is `percentage`, this represents **basis points** (e.g.,
      #       `540` = `5.4%`).
      #     - Otherwise, this represents **USD cents** (e.g., `100` = `$1.00`).
      #
      #     Must be at least 1 if provided.
      #
      #   @option params [String, nil] :code If present, update the discount code (uppercase).
      #
      #   @option params [Time, nil] :expires_at
      #
      #   @option params [String, nil] :name
      #
      #   @option params [Array<String>, nil] :restricted_to If present, replaces all restricted product IDs with this new set. To remove all
      #     restrictions, send empty array
      #
      #   @option params [Symbol, DodoPayments::Models::DiscountUpdateParams::Type, nil] :type
      #
      #   @option params [Integer, nil] :usage_limit
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::Discount]
      def update(discount_id, params = {})
        parsed, options = DodoPayments::Models::DiscountUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["discounts/%0s", discount_id],
          body: parsed,
          model: DodoPayments::Models::Discount,
          options: options
        )
      end

      # GET /discounts
      #
      # @param params [DodoPayments::Models::DiscountListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :page_number Page number (default = 0).
      #
      #   @option params [Integer, nil] :page_size Page size (default = 10, max = 100).
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::DefaultPageNumberPagination<DodoPayments::Models::Discount>]
      def list(params = {})
        parsed, options = DodoPayments::Models::DiscountListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "discounts",
          query: parsed,
          page: DodoPayments::DefaultPageNumberPagination,
          model: DodoPayments::Models::Discount,
          options: options
        )
      end

      # DELETE /discounts/{discount_id}
      #
      # @param discount_id [String] Discount Id
      #
      # @param params [DodoPayments::Models::DiscountDeleteParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def delete(discount_id, params = {})
        @client.request(
          method: :delete,
          path: ["discounts/%0s", discount_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
