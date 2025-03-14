# frozen_string_literal: true

module DodoPayments
  module Resources
    class LicenseKeys
      # @param id [String] License key ID
      #
      # @param params [DodoPayments::Models::LicenseKeyRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::LicenseKey]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_keys/%0s", id],
          model: DodoPayments::Models::LicenseKey,
          options: params[:request_options]
        )
      end

      # @param id [String] License key ID
      #
      # @param params [DodoPayments::Models::LicenseKeyUpdateParams, Hash{Symbol=>Object}] .
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
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::LicenseKey]
      def update(id, params = {})
        parsed, options = DodoPayments::Models::LicenseKeyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_keys/%0s", id],
          body: parsed,
          model: DodoPayments::Models::LicenseKey,
          options: options
        )
      end

      # @param params [DodoPayments::Models::LicenseKeyListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :customer_id Filter by customer ID
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [String, nil] :product_id Filter by product ID
      #
      #   @option params [Symbol, DodoPayments::Models::LicenseKeyListParams::Status, nil] :status Filter by license key status
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<DodoPayments::Models::LicenseKeyListResponseItem>]
      def list(params = {})
        parsed, options = DodoPayments::Models::LicenseKeyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "license_keys",
          query: parsed,
          model: DodoPayments::ArrayOf[DodoPayments::Models::LicenseKeyListResponseItem],
          options: options
        )
      end

      # @param client [DodoPayments::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
