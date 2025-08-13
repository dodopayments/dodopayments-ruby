# frozen_string_literal: true

module Dodopayments
  module Resources
    class Licenses
      # @overload activate(license_key:, name:, request_options: {})
      #
      # @param license_key [String]
      # @param name [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::LicenseKeyInstance]
      #
      # @see Dodopayments::Models::LicenseActivateParams
      def activate(params)
        parsed, options = Dodopayments::LicenseActivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/activate",
          body: parsed,
          model: Dodopayments::LicenseKeyInstance,
          options: options
        )
      end

      # @overload deactivate(license_key:, license_key_instance_id:, request_options: {})
      #
      # @param license_key [String]
      # @param license_key_instance_id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::LicenseDeactivateParams
      def deactivate(params)
        parsed, options = Dodopayments::LicenseDeactivateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/deactivate",
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # @overload validate(license_key:, license_key_instance_id: nil, request_options: {})
      #
      # @param license_key [String]
      # @param license_key_instance_id [String, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::LicenseValidateResponse]
      #
      # @see Dodopayments::Models::LicenseValidateParams
      def validate(params)
        parsed, options = Dodopayments::LicenseValidateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "licenses/validate",
          body: parsed,
          model: Dodopayments::Models::LicenseValidateResponse,
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
