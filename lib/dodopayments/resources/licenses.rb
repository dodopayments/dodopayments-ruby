# frozen_string_literal: true

module Dodopayments
  module Resources
    class Licenses
      # @param params [Dodopayments::Models::LicenseActivateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :license_key
      #
      #   @option params [String] :name
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::LicenseKeyInstance]
      def activate(params)
        parsed, options = Dodopayments::Models::LicenseActivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/activate",
          body: parsed,
          model: Dodopayments::Models::LicenseKeyInstance,
          options: options
        )
      end

      # @param params [Dodopayments::Models::LicenseDeactivateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :license_key
      #
      #   @option params [String] :license_key_instance_id
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [nil]
      def deactivate(params)
        parsed, options = Dodopayments::Models::LicenseDeactivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/deactivate",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @param params [Dodopayments::Models::LicenseValidateParams, Hash{Symbol=>Object}] .
      #
      #   @option params [String] :license_key
      #
      #   @option params [String, nil] :license_key_instance_id
      #
      #   @option params [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
      #
      # @return [Dodopayments::Models::LicenseValidateResponse]
      def validate(params)
        parsed, options = Dodopayments::Models::LicenseValidateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/validate",
          body: parsed,
          model: Dodopayments::Models::LicenseValidateResponse,
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
