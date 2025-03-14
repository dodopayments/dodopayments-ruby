# frozen_string_literal: true

module DodoPayments
  module Resources
    class LicenseKeyInstances
      # @param id [String] License key instance ID
      #
      # @param params [DodoPayments::Models::LicenseKeyInstanceRetrieveParams, Hash{Symbol=>Object}] .
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::LicenseKeyInstance]
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_key_instances/%0s", id],
          model: DodoPayments::Models::LicenseKeyInstance,
          options: params[:request_options]
        )
      end

      # @param id [String] License key instance ID
      #
      # @param params [DodoPayments::Models::LicenseKeyInstanceUpdateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :name
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::LicenseKeyInstance]
      def update(id, params)
        parsed, options = DodoPayments::Models::LicenseKeyInstanceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_key_instances/%0s", id],
          body: parsed,
          model: DodoPayments::Models::LicenseKeyInstance,
          options: options
        )
      end

      # @param params [DodoPayments::Models::LicenseKeyInstanceListParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String, nil] :license_key_id Filter by license key ID
      #
      #   @option params [Integer, nil] :page_number Page number default is 0
      #
      #   @option params [Integer, nil] :page_size Page size default is 10 max is 100
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Array<DodoPayments::Models::LicenseKeyInstanceListResponseItem>]
      def list(params = {})
        parsed, options = DodoPayments::Models::LicenseKeyInstanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "license_key_instances",
          query: parsed,
          model: DodoPayments::ArrayOf[DodoPayments::Models::LicenseKeyInstanceListResponseItem],
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
