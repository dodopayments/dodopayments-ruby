# frozen_string_literal: true

module Dodopayments
  module Resources
    class Entitlements
      class Translations
        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Entitlements::TranslationUpdateParams} for more details.
        #
        # Creates or replaces the translation of one locale. The response is 201 for a new
        # locale and 200 for a replaced locale.
        #
        # @overload update(locale, id:, activation_message: nil, description: nil, instructions: nil, name: nil, request_options: {})
        #
        # @param locale [Symbol, Dodopayments::Models::Locale] Path param: A locale that the checkout and the customer portal can show.
        #
        # @param id [String] Path param: Entitlement Id
        #
        # @param activation_message [String, nil] Body param: The translated activation message. Only a `license_key` entitlement
        #
        # @param description [String, nil] Body param: The translated description.
        #
        # @param instructions [String, nil] Body param: The translated delivery instructions. Only a `digital_files` entitle
        #
        # @param name [String, nil] Body param: The translated name.
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Entitlements::EntitlementTranslation]
        #
        # @see Dodopayments::Models::Entitlements::TranslationUpdateParams
        def update(locale, params)
          parsed, options = Dodopayments::Entitlements::TranslationUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :put,
            path: ["entitlements/%1$s/translations/%2$s", id, locale],
            body: parsed,
            model: Dodopayments::Entitlements::EntitlementTranslation,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Entitlements::TranslationListParams} for more details.
        #
        # Lists the translations, for all the locales or for the locales of the filter.
        #
        # @overload list(id, locale: nil, request_options: {})
        #
        # @param id [String] Entitlement Id
        #
        # @param locale [Array<String>] Returns only these locales, for example `?locale=fr&locale=de`. With no value, t
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dodopayments::Models::Entitlements::EntitlementTranslationsListResponse]
        #
        # @see Dodopayments::Models::Entitlements::TranslationListParams
        def list(id, params = {})
          parsed, options = Dodopayments::Entitlements::TranslationListParams.dump_request(params)
          query = Dodopayments::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["entitlements/%1$s/translations", id],
            query: query,
            model: Dodopayments::Entitlements::EntitlementTranslationsListResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Dodopayments::Models::Entitlements::TranslationDeleteParams} for more details.
        #
        # Deletes the translation of one locale.
        #
        # @overload delete(locale, id:, request_options: {})
        #
        # @param locale [Symbol, Dodopayments::Models::Locale] A locale that the checkout and the customer portal can show.
        #
        # @param id [String] Entitlement Id
        #
        # @param request_options [Dodopayments::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Dodopayments::Models::Entitlements::TranslationDeleteParams
        def delete(locale, params)
          parsed, options = Dodopayments::Entitlements::TranslationDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["entitlements/%1$s/translations/%2$s", id, locale],
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
