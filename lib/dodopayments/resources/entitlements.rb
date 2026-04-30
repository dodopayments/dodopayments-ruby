# frozen_string_literal: true

module Dodopayments
  module Resources
    class Entitlements
      # @return [Dodopayments::Resources::Entitlements::Files]
      attr_reader :files

      # @return [Dodopayments::Resources::Entitlements::Grants]
      attr_reader :grants

      # POST /entitlements
      #
      # @overload create(integration_config:, integration_type:, name:, description: nil, metadata: nil, request_options: {})
      #
      # @param integration_config [Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementCreateParams::IntegrationConfig::LicenseKeyConfig] Platform-specific configuration (validated per integration_type)
      #
      # @param integration_type [Symbol, Dodopayments::Models::EntitlementCreateParams::IntegrationType] Which platform integration this entitlement uses
      #
      # @param name [String] Display name for this entitlement
      #
      # @param description [String, nil] Optional description
      #
      # @param metadata [Hash{Symbol=>String}, nil] Optional user-facing metadata
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::EntitlementCreateResponse]
      #
      # @see Dodopayments::Models::EntitlementCreateParams
      def create(params)
        parsed, options = Dodopayments::EntitlementCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "entitlements",
          body: parsed,
          model: Dodopayments::Models::EntitlementCreateResponse,
          options: options
        )
      end

      # GET /entitlements/{id}
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Entitlement ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::EntitlementRetrieveResponse]
      #
      # @see Dodopayments::Models::EntitlementRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["entitlements/%1$s", id],
          model: Dodopayments::Models::EntitlementRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::EntitlementUpdateParams} for more details.
      #
      # PATCH /entitlements/{id}
      #
      # @overload update(id, description: nil, integration_config: nil, metadata: nil, name: nil, request_options: {})
      #
      # @param id [String] Entitlement ID
      #
      # @param description [String, nil]
      #
      # @param integration_config [Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::GitHubConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DiscordConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::TelegramConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FigmaConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::FramerConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::NotionConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::EntitlementUpdateParams::IntegrationConfig::LicenseKeyConfig, nil] Platform-specific configuration for an entitlement.
      #
      # @param metadata [Hash{Symbol=>String}, nil]
      #
      # @param name [String, nil]
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::EntitlementUpdateResponse]
      #
      # @see Dodopayments::Models::EntitlementUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::EntitlementUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["entitlements/%1$s", id],
          body: parsed,
          model: Dodopayments::Models::EntitlementUpdateResponse,
          options: options
        )
      end

      # GET /entitlements
      #
      # @overload list(integration_type: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param integration_type [Symbol, Dodopayments::Models::EntitlementListParams::IntegrationType] Filter by integration type
      #
      # @param page_number [Integer] Page number (default 0)
      #
      # @param page_size [Integer] Page size (default 10, max 100)
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::EntitlementListResponse>]
      #
      # @see Dodopayments::Models::EntitlementListParams
      def list(params = {})
        parsed, options = Dodopayments::EntitlementListParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "entitlements",
          query: query,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Models::EntitlementListResponse,
          options: options
        )
      end

      # DELETE /entitlements/{id} (soft-delete)
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Entitlement ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::EntitlementDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["entitlements/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @files = Dodopayments::Resources::Entitlements::Files.new(client: client)
        @grants = Dodopayments::Resources::Entitlements::Grants.new(client: client)
      end
    end
  end
end
