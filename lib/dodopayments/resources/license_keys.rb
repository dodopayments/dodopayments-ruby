# frozen_string_literal: true

module Dodopayments
  module Resources
    class LicenseKeys
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::LicenseKey]
      #
      # @see Dodopayments::Models::LicenseKeyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_keys/%1$s", id],
          model: Dodopayments::Models::LicenseKey,
          options: params[:request_options]
        )
      end

      # @overload update(id, activations_limit: nil, disabled: nil, expires_at: nil, request_options: {})
      #
      # @param id [String]
      # @param activations_limit [Integer, nil]
      # @param disabled [Boolean, nil]
      # @param expires_at [Time, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::LicenseKey]
      #
      # @see Dodopayments::Models::LicenseKeyUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::Models::LicenseKeyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_keys/%1$s", id],
          body: parsed,
          model: Dodopayments::Models::LicenseKey,
          options: options
        )
      end

      # @overload list(customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {})
      #
      # @param customer_id [String, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param product_id [String, nil]
      # @param status [Symbol, Dodopayments::Models::LicenseKeyStatus, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::LicenseKey>]
      #
      # @see Dodopayments::Models::LicenseKeyListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::LicenseKeyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "license_keys",
          query: parsed,
          page: Dodopayments::DefaultPageNumberPagination,
          model: Dodopayments::Models::LicenseKey,
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
