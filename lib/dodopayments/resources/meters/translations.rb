# frozen_string_literal: true

module Dodopayments
  module Resources
    class Meters
      class Translations
        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Meters::TranslationUpdateParams} for more details.
        #
        # Creates or replaces the translation of one locale. The response is 201 for a new
        # locale and 200 for a replaced locale.
        #
        # @overload update(locale, id:, description: nil, name: nil, request_options: {})
        #
        # @param locale [Symbol, Dodopayments::Models::Locale] Path param: A locale that the checkout and the customer portal can show.
        #
        # @param id [String] Path param: Meter Id
        #
        # @param description [String, nil] Body param: The translated description.
        #
        # @param name [String, nil] Body param: The translated name.
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::Translation]
        #
        # @see Dodopayments::Models::Meters::TranslationUpdateParams
        def update(locale, params)
          parsed, options = Dodopayments::Meters::TranslationUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["meters/%1$s/translations/%2$s", id, locale],
            body: parsed,
            model: Dodopayments::Products::Translation,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Meters::TranslationListParams} for more details.
        #
        # Lists the translations, for all the locales or for the locales of the filter.
        #
        # @overload list(id, locale: nil, request_options: {})
        #
        # @param id [String] Meter Id
        #
        # @param locale [Array<String>] Returns only these locales, for example `?locale=fr&locale=de`. With no value, t
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Products::TranslationsListResponse]
        #
        # @see Dodopayments::Models::Meters::TranslationListParams
        def list(id, params = {})
          parsed, options = Dodopayments::Meters::TranslationListParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["meters/%1$s/translations", id],
            query: query,
            model: Dodopayments::Products::TranslationsListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Meters::TranslationDeleteParams} for more details.
        #
        # Deletes the translation of one locale.
        #
        # @overload delete(locale, id:, request_options: {})
        #
        # @param locale [Symbol, Dodopayments::Models::Locale] A locale that the checkout and the customer portal can show.
        #
        # @param id [String] Meter Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Meters::TranslationDeleteParams
        def delete(locale, params)
          parsed, options = Dodopayments::Meters::TranslationDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["meters/%1$s/translations/%2$s", id, locale],
            model: NilClass,
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
end
