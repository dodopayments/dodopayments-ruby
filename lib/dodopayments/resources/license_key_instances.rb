# frozen_string_literal: true

module Dodopayments
  module Resources
    class LicenseKeyInstances
      # @param id [String] License key instance ID
      #
      # @param params [Dodopayments::Models::LicenseKeyInstanceRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::LicenseKeyInstance]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_key_instances/%0s", id],
          model: Dodopayments::Models::LicenseKeyInstance,
          options: params[:request_options]
        )
      end

      # @param id [String] License key instance ID
      #
      # @param params [Dodopayments::Models::LicenseKeyInstanceUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::LicenseKeyInstance]
      def update(id, params)
        parsed, options = Dodopayments::Models::LicenseKeyInstanceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_key_instances/%0s", id],
          body: parsed,
          model: Dodopayments::Models::LicenseKeyInstance,
          options: options
        )
      end

      # @param params [Dodopayments::Models::LicenseKeyInstanceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :license_key_id Filter by license key ID
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<Dodopayments::Models::LicenseKeyInstanceListResponseItem>]
      def list(params = {})
        parsed, options = Dodopayments::Models::LicenseKeyInstanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "license_key_instances",
          query: parsed,
          model: Dodopayments::ArrayOf[Dodopayments::Models::LicenseKeyInstanceListResponseItem],
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
