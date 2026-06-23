# frozen_string_literal: true

module Dodopayments
  module Resources
    class Products
      class LocalizedPrices
        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Products::LocalizedPriceCreateParams} for more details.
        #
        # @overload create(product_id, amount:, currency:, country_code: nil, request_options: {})
        #
        # @param product_id [String] Product Id
        #
        # @param amount [Integer] Amount in the smallest currency unit (e.g., cents). Must be greater than zero.
        #
        # @param currency [Symbol, Dodopayments::Models::Currency] Currency to charge in. Must be a supported currency.
        #
        # @param country_code [Symbol, Dodopayments::Models::CountryCode, nil] Required when the product's pricing_mode is by_country; forbidden when by_curren
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::LocalizedPrice]
        #
        # @see Dodopayments::Models::Products::LocalizedPriceCreateParams
        def create(product_id, params)
          parsed, options = Dodopayments::Products::LocalizedPriceCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["products/%1$s/localized-prices", product_id],
            body: parsed,
            model: Dodopayments::Products::LocalizedPrice,
            options: options
          )
        end

        # @overload retrieve(id, product_id:, request_options: {})
        #
        # @param id [String] Localized Price Id
        #
        # @param product_id [String] Product Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::LocalizedPrice]
        #
        # @see Dodopayments::Models::Products::LocalizedPriceRetrieveParams
        def retrieve(id, params)
          parsed, options = Dodopayments::Products::LocalizedPriceRetrieveParams.dump_request(params)
          product_id =
            parsed.delete(:product_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["products/%1$s/localized-prices/%2$s", product_id, id],
            model: Dodopayments::Products::LocalizedPrice,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Products::LocalizedPriceUpdateParams} for more details.
        #
        # @overload update(id, product_id:, amount: nil, request_options: {})
        #
        # @param id [String] Path param: Localized Price Id
        #
        # @param product_id [String] Path param: Product Id
        #
        # @param amount [Integer, nil] Body param: New amount in the smallest currency unit (e.g., cents). Must be grea
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::LocalizedPrice]
        #
        # @see Dodopayments::Models::Products::LocalizedPriceUpdateParams
        def update(id, params)
          parsed, options = Dodopayments::Products::LocalizedPriceUpdateParams.dump_request(params)
          product_id =
            parsed.delete(:product_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["products/%1$s/localized-prices/%2$s", product_id, id],
            body: parsed,
            model: Dodopayments::Products::LocalizedPrice,
            options: options
          )
        end

        # @overload list(product_id, request_options: {})
        #
        # @param product_id [String] Product Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::ListLocalizedPricesResponse]
        #
        # @see Dodopayments::Models::Products::LocalizedPriceListParams
        def list(product_id, params = {})
          @client.request(
            method: :get,
            path: ["products/%1$s/localized-prices", product_id],
            model: Dodopayments::Products::ListLocalizedPricesResponse,
            options: params[:request_options]
          )
        end

        # @overload archive(id, product_id:, request_options: {})
        #
        # @param id [String] Localized Price Id
        #
        # @param product_id [String] Product Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Products::LocalizedPriceArchiveParams
        def archive(id, params)
          parsed, options = Dodopayments::Products::LocalizedPriceArchiveParams.dump_request(params)
          product_id =
            parsed.delete(:product_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["products/%1$s/localized-prices/%2$s", product_id, id],
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
