# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#list
    class ProductListResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute business_id
      #   Unique identifier for the business to which the product belongs.
      #
      #   @return [String]
      required :business_id, String

      # @!attribute created_at
      #   Timestamp when the product was created.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute entitlements
      #   Entitlements linked to this product
      #
      #   @return [Array<Dodopayments::Models::ProductListResponse::Entitlement>]
      required :entitlements,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Models::ProductListResponse::Entitlement] }

      # @!attribute is_recurring
      #   Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @return [Boolean]
      required :is_recurring, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional custom data associated with the product
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute product_id
      #   Unique identifier for the product.
      #
      #   @return [String]
      required :product_id, String

      # @!attribute tax_category
      #   Tax category associated with the product.
      #
      #   @return [Symbol, Dodopayments::Models::TaxCategory]
      required :tax_category, enum: -> { Dodopayments::TaxCategory }

      # @!attribute updated_at
      #   Timestamp when the product was last updated.
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute currency
      #   Currency of the price
      #
      #   @return [Symbol, Dodopayments::Models::Currency, nil]
      optional :currency, enum: -> { Dodopayments::Currency }, nil?: true

      # @!attribute description
      #   Description of the product, optional.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute image
      #   URL of the product image, optional.
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute price
      #   Price of the product, optional.
      #
      #   The price is represented in the lowest denomination of the currency. For
      #   example:
      #
      #   - In USD, a price of `$12.34` would be represented as `1234` (cents).
      #   - In JPY, a price of `¥1500` would be represented as `1500` (yen).
      #   - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
      #
      #   This ensures precision and avoids floating-point rounding errors.
      #
      #   @return [Integer, nil]
      optional :price, Integer, nil?: true

      # @!attribute price_detail
      #   Details of the price
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice, nil]
      optional :price_detail, union: -> { Dodopayments::Price }, nil?: true

      # @!attribute tax_inclusive
      #   Indicates if the price is tax inclusive
      #
      #   @return [Boolean, nil]
      optional :tax_inclusive, Dodopayments::Internal::Type::Boolean, nil?: true

      # @!method initialize(business_id:, created_at:, entitlements:, is_recurring:, metadata:, product_id:, tax_category:, updated_at:, currency: nil, description: nil, image: nil, name: nil, price: nil, price_detail: nil, tax_inclusive: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::ProductListResponse} for more details.
      #
      #   @param business_id [String] Unique identifier for the business to which the product belongs.
      #
      #   @param created_at [Time] Timestamp when the product was created.
      #
      #   @param entitlements [Array<Dodopayments::Models::ProductListResponse::Entitlement>] Entitlements linked to this product
      #
      #   @param is_recurring [Boolean] Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @param metadata [Hash{Symbol=>String}] Additional custom data associated with the product
      #
      #   @param product_id [String] Unique identifier for the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Tax category associated with the product.
      #
      #   @param updated_at [Time] Timestamp when the product was last updated.
      #
      #   @param currency [Symbol, Dodopayments::Models::Currency, nil] Currency of the price
      #
      #   @param description [String, nil] Description of the product, optional.
      #
      #   @param image [String, nil] URL of the product image, optional.
      #
      #   @param name [String, nil] Name of the product, optional.
      #
      #   @param price [Integer, nil] Price of the product, optional.
      #
      #   @param price_detail [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice, nil] Details of the price
      #
      #   @param tax_inclusive [Boolean, nil] Indicates if the price is tax inclusive

      class Entitlement < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute integration_config
        #   Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
        #   the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
        #   `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
        #   ID-only via [`IntegrationConfig`]; this enum is response-only.
        #
        #   @return [Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig]
        required :integration_config,
                 union: -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig }

        # @!attribute integration_type
        #
        #   @return [Symbol, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType]
        required :integration_type,
                 enum: -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType }

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String, nil?: true

        # @!method initialize(id:, integration_config:, integration_type:, name:, description: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dodopayments::Models::ProductListResponse::Entitlement} for more details.
        #
        #   Summary of an entitlement attached to a product.
        #
        #   `integration_config` uses [`IntegrationConfigResponse`] (NOT the persisted
        #   [`IntegrationConfig`]) so digital_files entitlements embed the resolved
        #   `digital_files` object — matching what `GET /entitlements/{id}` returns. All
        #   other variants pass through unchanged via `#[serde(untagged)]`.
        #
        #   @param id [String]
        #
        #   @param integration_config [Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig] Public-facing variant of [`IntegrationConfig`]. Mirrors every variant
        #
        #   @param integration_type [Symbol, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType]
        #
        #   @param name [String]
        #
        #   @param description [String, nil]

        # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
        # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
        # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
        # ID-only via [`IntegrationConfig`]; this enum is response-only.
        #
        # @see Dodopayments::Models::ProductListResponse::Entitlement#integration_config
        module IntegrationConfig
          extend Dodopayments::Internal::Type::Union

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig }

          variant -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig }

          class GitHubConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute permission
            #
            #   @return [String]
            required :permission, String

            # @!attribute target_id
            #
            #   @return [String]
            required :target_id, String

            # @!method initialize(permission:, target_id:)
            #   @param permission [String]
            #   @param target_id [String]
          end

          class DiscordConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute guild_id
            #
            #   @return [String]
            required :guild_id, String

            # @!attribute role_id
            #
            #   @return [String, nil]
            optional :role_id, String, nil?: true

            # @!method initialize(guild_id:, role_id: nil)
            #   @param guild_id [String]
            #   @param role_id [String, nil]
          end

          class TelegramConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute chat_id
            #
            #   @return [String]
            required :chat_id, String

            # @!method initialize(chat_id:)
            #   @param chat_id [String]
          end

          class FigmaConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute figma_file_id
            #
            #   @return [String]
            required :figma_file_id, String

            # @!method initialize(figma_file_id:)
            #   @param figma_file_id [String]
          end

          class FramerConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute framer_template_id
            #
            #   @return [String]
            required :framer_template_id, String

            # @!method initialize(framer_template_id:)
            #   @param framer_template_id [String]
          end

          class NotionConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute notion_template_id
            #
            #   @return [String]
            required :notion_template_id, String

            # @!method initialize(notion_template_id:)
            #   @param notion_template_id [String]
          end

          class DigitalFilesConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute digital_files
            #   Populated digital-files payload for entitlement read surfaces. Mirrors
            #   `DigitalProductDelivery` but is sourced from an entitlement's
            #   `integration_config` (not a grant) and tags each file with its origin (`legacy`
            #   vs `ee`).
            #
            #   @return [Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles]
            required :digital_files,
                     -> { Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles }

            # @!method initialize(digital_files:)
            #   Some parameter documentations has been truncated, see
            #   {Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig}
            #   for more details.
            #
            #   @param digital_files [Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles] Populated digital-files payload for entitlement read surfaces. Mirrors

            # @see Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig#digital_files
            class DigitalFiles < Dodopayments::Internal::Type::BaseModel
              # @!attribute files
              #
              #   @return [Array<Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File>]
              required :files,
                       -> do
                         Dodopayments::Internal::Type::ArrayOf[
                           Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File
                         ]
                       end

              # @!attribute external_url
              #
              #   @return [String, nil]
              optional :external_url, String, nil?: true

              # @!attribute instructions
              #
              #   @return [String, nil]
              optional :instructions, String, nil?: true

              # @!method initialize(files:, external_url: nil, instructions: nil)
              #   Populated digital-files payload for entitlement read surfaces. Mirrors
              #   `DigitalProductDelivery` but is sourced from an entitlement's
              #   `integration_config` (not a grant) and tags each file with its origin (`legacy`
              #   vs `ee`).
              #
              #   @param files [Array<Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File>]
              #   @param external_url [String, nil]
              #   @param instructions [String, nil]

              class File < Dodopayments::Internal::Type::BaseModel
                # @!attribute download_url
                #
                #   @return [String]
                required :download_url, String

                # @!attribute expires_in
                #   Seconds until `download_url` expires.
                #
                #   @return [Integer]
                required :expires_in, Integer

                # @!attribute file_id
                #
                #   @return [String]
                required :file_id, String

                # @!attribute filename
                #
                #   @return [String]
                required :filename, String

                # @!attribute source
                #   `"legacy"` for files in `product_files`, `"ee"` for files managed by the
                #   Entitlements Engine.
                #
                #   @return [String]
                required :source, String

                # @!attribute content_type
                #
                #   @return [String, nil]
                optional :content_type, String, nil?: true

                # @!attribute file_size
                #
                #   @return [Integer, nil]
                optional :file_size, Integer, nil?: true

                # @!method initialize(download_url:, expires_in:, file_id:, filename:, source:, content_type: nil, file_size: nil)
                #   Some parameter documentations has been truncated, see
                #   {Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::DigitalFiles::File}
                #   for more details.
                #
                #   @param download_url [String]
                #
                #   @param expires_in [Integer] Seconds until `download_url` expires.
                #
                #   @param file_id [String]
                #
                #   @param filename [String]
                #
                #   @param source [String] `"legacy"` for files in `product_files`, `"ee"` for files managed by the
                #
                #   @param content_type [String, nil]
                #
                #   @param file_size [Integer, nil]
              end
            end
          end

          class LicenseKeyConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute activation_message
            #
            #   @return [String, nil]
            optional :activation_message, String, nil?: true

            # @!attribute activations_limit
            #
            #   @return [Integer, nil]
            optional :activations_limit, Integer, nil?: true

            # @!attribute duration_count
            #
            #   @return [Integer, nil]
            optional :duration_count, Integer, nil?: true

            # @!attribute duration_interval
            #
            #   @return [Symbol, Dodopayments::Models::TimeInterval, nil]
            optional :duration_interval, enum: -> { Dodopayments::TimeInterval }, nil?: true

            # @!method initialize(activation_message: nil, activations_limit: nil, duration_count: nil, duration_interval: nil)
            #   @param activation_message [String, nil]
            #   @param activations_limit [Integer, nil]
            #   @param duration_count [Integer, nil]
            #   @param duration_interval [Symbol, Dodopayments::Models::TimeInterval, nil]
          end

          # @!method self.variants
          #   @return [Array(Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig)]
        end

        # @see Dodopayments::Models::ProductListResponse::Entitlement#integration_type
        module IntegrationType
          extend Dodopayments::Internal::Type::Enum

          DISCORD = :discord
          TELEGRAM = :telegram
          GITHUB = :github
          FIGMA = :figma
          FRAMER = :framer
          NOTION = :notion
          DIGITAL_FILES = :digital_files
          LICENSE_KEY = :license_key

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
