# frozen_string_literal: true

module Dodopayments
  module Resources
    class LicenseKeys
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] License key ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::LicenseKey]
      #
      # @see Dodopayments::Models::LicenseKeyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_keys/%1$s", id],
          model: Dodopayments::LicenseKey,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::LicenseKeyUpdateParams} for more details.
      #
      # @overload update(id, activations_limit: nil, disabled: nil, expires_at: nil, request_options: {})
      #
      # @param id [String] License key ID
      #
      # @param activations_limit [Integer, nil] The updated activation limit for the license key.
      #
      # @param disabled [Boolean, nil] Indicates whether the license key should be disabled.
      #
      # @param expires_at [Time, nil] The updated expiration timestamp for the license key in UTC.
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::LicenseKey]
      #
      # @see Dodopayments::Models::LicenseKeyUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::LicenseKeyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_keys/%1$s", id],
          body: parsed,
          model: Dodopayments::LicenseKey,
          options: options
        )
      end

      # @overload list(customer_id: nil, page_number: nil, page_size: nil, product_id: nil, status: nil, request_options: {})
      #
      # @param customer_id [String, nil] Filter by customer ID
      #
      # @param page_number [Integer, nil] Page number default is 0
      #
      # @param page_size [Integer, nil] Page size default is 10 max is 100
      #
      # @param product_id [String, nil] Filter by product ID
      #
      # @param status [Symbol, Dodopayments::LicenseKeyStatus, nil] Filter by license key status
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::LicenseKey>]
      #
      # @see Dodopayments::Models::LicenseKeyListParams
      def list(params = {})
        parsed, options = Dodopayments::LicenseKeyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "license_keys",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::LicenseKey,
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
