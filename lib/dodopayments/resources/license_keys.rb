# frozen_string_literal: true

module Dodopayments
  module Resources
    class LicenseKeys
      # @param id [String] License key ID
      #
      # @param params [Dodopayments::Models::LicenseKeyRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::LicenseKey]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_keys/%0s", id],
          model: Dodopayments::Models::LicenseKey,
          options: params[:request_options]
        )
      end

      # @param id [String] License key ID
      #
      # @param params [Dodopayments::Models::LicenseKeyUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Integer, nil] :activations_limit The updated activation limit for the license key. Use `null` to remove the
      #     limit, or omit this field to leave it unchanged.
      #
      #   @option params [Boolean, nil] :disabled Indicates whether the license key should be disabled. A value of `true` disables
      #     the key, while `false` enables it. Omit this field to leave it unchanged.
      #
      #   @option params [Time, nil] :expires_at The updated expiration timestamp for the license key in UTC. Use `null` to
      #     remove the expiration date, or omit this field to leave it unchanged.
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::LicenseKey]
      def update(id, params = {})
        parsed, options = Dodopayments::Models::LicenseKeyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_keys/%0s", id],
          body: parsed,
          model: Dodopayments::Models::LicenseKey,
          options: options
        )
      end

      # @param params [Dodopayments::Models::LicenseKeyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :customer_id Filter by customer ID
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [String, nil] :product_id Filter by product ID
      #
      #   @option params [Symbol, Dodopayments::Models::LicenseKeyStatus, nil] :status Filter by license key status
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::DefaultPageNumberPagination<Dodopayments::Models::LicenseKey>]
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

      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
