# typed: strong

module Dodopayments
  module Resources
    class Meters
      class Translations
        # Creates or replaces the translation of one locale. The response is 201 for a new
        # locale and 200 for a replaced locale.
        sig do
          params(
            locale: Dodopayments::Locale::OrSymbol,
            id: String,
            description: T.nilable(String),
            name: T.nilable(String),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Products::Translation)
        end
        def update(
          # Path param: A locale that the checkout and the customer portal can show.
          #
          # The codes are a copy of the checkout locales. `GET /locales` lists them.
          locale,
          # Path param: Meter Id
          id:,
          # Body param: The translated description.
          description: nil,
          # Body param: The translated name.
          name: nil,
          request_options: {}
        )
        end

        # Lists the translations, for all the locales or for the locales of the filter.
        sig do
          params(
            id: String,
            locale: T::Array[String],
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Products::TranslationsListResponse)
        end
        def list(
          # Meter Id
          id,
          # Returns only these locales, for example `?locale=fr&locale=de`. With no value,
          # the response has all the locales.
          locale: nil,
          request_options: {}
        )
        end

        # Deletes the translation of one locale.
        sig do
          params(
            locale: Dodopayments::Locale::OrSymbol,
            id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def delete(
          # A locale that the checkout and the customer portal can show.
          #
          # The codes are a copy of the checkout locales. `GET /locales` lists them.
          locale,
          # Meter Id
          id:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
