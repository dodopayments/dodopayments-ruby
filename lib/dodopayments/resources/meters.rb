# frozen_string_literal: true

module Dodopayments
  module Resources
    class Meters
      # @return [Dodopayments::Resources::Meters::Translations]
      attr_reader :translations

      # @overload create(aggregation:, event_name:, measurement_unit:, name:, description: nil, filter: nil, request_options: {})
      #
      # @param aggregation [Dodopayments::Models::MeterAggregation] Aggregation configuration for the meter
      #
      # @param event_name [String] Event name to track
      #
      # @param measurement_unit [String] measurement unit
      #
      # @param name [String] Name of the meter
      #
      # @param description [String, nil] Optional description of the meter
      #
      # @param filter [Dodopayments::Models::MeterFilter, nil] Optional filter to apply to the meter
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Meter]
      #
      # @see Dodopayments::Models::MeterCreateParams
      def create(params)
        parsed, options = Dodopayments::MeterCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "meters",
          body: parsed,
          model: Dodopayments::Meter,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::MeterRetrieveParams} for more details.
      #
      # @overload retrieve(id, locale: nil, request_options: {})
      #
      # @param id [String] Meter ID
      #
      # @param locale [String] Shows the translated name, description and unit of the catalog entities in this
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Meter]
      #
      # @see Dodopayments::Models::MeterRetrieveParams
      def retrieve(id, params = {})
        parsed, options = Dodopayments::MeterRetrieveParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["meters/%1$s", id],
          query: query,
          model: Dodopayments::Meter,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::MeterUpdateParams} for more details.
      #
      # @overload update(id, description: nil, measurement_unit: nil, name: nil, request_options: {})
      #
      # @param id [String] Meter ID
      #
      # @param description [String, nil] Description of the meter. Send `null` to remove the description. Omit it to keep
      #
      # @param measurement_unit [String, nil] Measurement unit
      #
      # @param name [String, nil] Name of the meter
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Models::Meter]
      #
      # @see Dodopayments::Models::MeterUpdateParams
      def update(id, params = {})
        parsed, options = Dodopayments::MeterUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["meters/%1$s", id],
          body: parsed,
          model: Dodopayments::Meter,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dodopayments::Models::MeterListParams} for more details.
      #
      # @overload list(archived: nil, locale: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param archived [Boolean] List archived meters
      #
      # @param locale [String] Shows the translated name, description and unit of the catalog entities in this
      #
      # @param page_number [Integer] Page number default is 0
      #
      # @param page_size [Integer] Page size default is 10 max is 100
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dodopayments::Internal::DefaultPageNumberPagination<Dodopayments::Models::Meter>]
      #
      # @see Dodopayments::Models::MeterListParams
      def list(params = {})
        parsed, options = Dodopayments::MeterListParams.dump_request(params)
        query = Dodopayments::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "meters",
          query: query,
          page: Dodopayments::Internal::DefaultPageNumberPagination,
          model: Dodopayments::Meter,
          options: options
        )
      end

      # @overload archive(id, request_options: {})
      #
      # @param id [String] Meter ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::MeterArchiveParams
      def archive(id, params = {})
        @client.request(
          method: :delete,
          path: ["meters/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload unarchive(id, request_options: {})
      #
      # @param id [String] Meter ID
      #
      # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dodopayments::Models::MeterUnarchiveParams
      def unarchive(id, params = {})
        @client.request(
          method: :post,
          path: ["meters/%1$s/unarchive", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dodopayments::Client]
      def initialize(client:)
        @client = client
        @translations = Dodopayments::Resources::Meters::Translations.new(client: client)
      end
    end
  end
end
