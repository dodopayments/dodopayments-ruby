# frozen_string_literal: true

module Dodopayments
  module Resources
    class LicenseKeyInstances
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::LicenseKeyInstance]
      #
      # @see Dodopayments::Models::LicenseKeyInstanceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["license_key_instances/%1$s", id],
          model: Dodopayments::Models::LicenseKeyInstance,
          options: params[:request_options]
        )
      end

      # @overload update(id, name:, request_options: {})
      #
      # @param id [String]
      # @param name [String]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::LicenseKeyInstance]
      #
      # @see Dodopayments::Models::LicenseKeyInstanceUpdateParams
      def update(id, params)
        parsed, options = Dodopayments::Models::LicenseKeyInstanceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["license_key_instances/%1$s", id],
          body: parsed,
          model: Dodopayments::Models::LicenseKeyInstance,
          options: options
        )
      end

      # @overload list(license_key_id: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param license_key_id [String, nil]
      # @param page_number [Integer, nil]
      # @param page_size [Integer, nil]
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::LicenseKeyInstance>]
      #
      # @see Dodopayments::Models::LicenseKeyInstanceListParams
      def list(params = {})
        parsed, options = Dodopayments::Models::LicenseKeyInstanceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "license_key_instances",
          query: parsed,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::LicenseKeyInstance,
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
