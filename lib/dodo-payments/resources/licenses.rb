# frozen_string_literal: true

module DodoPayments
  module Resources
    class Licenses
      # @param params [DodoPayments::Models::LicenseActivateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :license_key
      #
      #   @option params [String] :name
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::LicenseKeyInstance]
      def activate(params)
        parsed, options = DodoPayments::Models::LicenseActivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/activate",
          body: parsed,
          model: DodoPayments::Models::LicenseKeyInstance,
          options: options
        )
      end

      # @param params [DodoPayments::Models::LicenseDeactivateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :license_key
      #
      #   @option params [String] :license_key_instance_id
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def deactivate(params)
        parsed, options = DodoPayments::Models::LicenseDeactivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/deactivate",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @param params [DodoPayments::Models::LicenseValidateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :license_key
      #
      #   @option params [String, nil] :license_key_instance_id
      #
      #   @option params [DodoPayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [DodoPayments::Models::LicenseValidateResponse]
      def validate(params)
        parsed, options = DodoPayments::Models::LicenseValidateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/validate",
          body: parsed,
          model: DodoPayments::Models::LicenseValidateResponse,
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
