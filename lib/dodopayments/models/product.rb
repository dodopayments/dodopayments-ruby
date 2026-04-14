# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Products#create
    class Product < Dodopayments::Internal::Type::BaseModel
      # @!attribute brand_id
      #
      #   @return [String]
      required :brand_id, String

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

      # @!attribute credit_entitlements
      #   Attached credit entitlements with settings
      #
      #   @return [Array<Dodopayments::Models::CreditEntitlementMappingResponse>]
      required :credit_entitlements,
               -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::CreditEntitlementMappingResponse] }

      # @!attribute entitlements
      #   Attached entitlements (integration-based access grants)
      #
      #   @return [Array<Dodopayments::Models::Product::Entitlement>]
      required :entitlements, -> { Dodopayments::Internal::Type::ArrayOf[Dodopayments::Product::Entitlement] }

      # @!attribute is_recurring
      #   Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @return [Boolean]
      required :is_recurring, Dodopayments::Internal::Type::Boolean

      # @!attribute license_key_enabled
      #   @deprecated
      #
      #   Indicates whether the product requires a license key.
      #
      #   @return [Boolean]
      required :license_key_enabled, Dodopayments::Internal::Type::Boolean

      # @!attribute metadata
      #   Additional custom data associated with the product
      #
      #   @return [Hash{Symbol=>String}]
      required :metadata, Dodopayments::Internal::Type::HashOf[String]

      # @!attribute price
      #   Pricing information for the product.
      #
      #   @return [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice]
      required :price, union: -> { Dodopayments::Price }

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

      # @!attribute addons
      #   Available Addons for subscription products
      #
      #   @return [Array<String>, nil]
      optional :addons, Dodopayments::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute description
      #   Description of the product, optional.
      #
      #   @return [String, nil]
      optional :description, String, nil?: true

      # @!attribute digital_product_delivery
      #
      #   @return [Dodopayments::Models::DigitalProductDelivery, nil]
      optional :digital_product_delivery, -> { Dodopayments::DigitalProductDelivery }, nil?: true

      # @!attribute image
      #   URL of the product image, optional.
      #
      #   @return [String, nil]
      optional :image, String, nil?: true

      # @!attribute license_key_activation_message
      #   @deprecated
      #
      #   Message sent upon license key activation, if applicable.
      #
      #   @return [String, nil]
      optional :license_key_activation_message, String, nil?: true

      # @!attribute license_key_activations_limit
      #   @deprecated
      #
      #   Limit on the number of activations for the license key, if enabled.
      #
      #   @return [Integer, nil]
      optional :license_key_activations_limit, Integer, nil?: true

      # @!attribute license_key_duration
      #   Duration of the license key validity, if enabled.
      #
      #   @return [Dodopayments::Models::LicenseKeyDuration, nil]
      optional :license_key_duration, -> { Dodopayments::LicenseKeyDuration }, nil?: true

      # @!attribute name
      #   Name of the product, optional.
      #
      #   @return [String, nil]
      optional :name, String, nil?: true

      # @!attribute product_collection_id
      #   The product collection ID this product belongs to, if any
      #
      #   @return [String, nil]
      optional :product_collection_id, String, nil?: true

      # @!method initialize(brand_id:, business_id:, created_at:, credit_entitlements:, entitlements:, is_recurring:, license_key_enabled:, metadata:, price:, product_id:, tax_category:, updated_at:, addons: nil, description: nil, digital_product_delivery: nil, image: nil, license_key_activation_message: nil, license_key_activations_limit: nil, license_key_duration: nil, name: nil, product_collection_id: nil)
      #   @param brand_id [String]
      #
      #   @param business_id [String] Unique identifier for the business to which the product belongs.
      #
      #   @param created_at [Time] Timestamp when the product was created.
      #
      #   @param credit_entitlements [Array<Dodopayments::Models::CreditEntitlementMappingResponse>] Attached credit entitlements with settings
      #
      #   @param entitlements [Array<Dodopayments::Models::Product::Entitlement>] Attached entitlements (integration-based access grants)
      #
      #   @param is_recurring [Boolean] Indicates if the product is recurring (e.g., subscriptions).
      #
      #   @param license_key_enabled [Boolean] Indicates whether the product requires a license key.
      #
      #   @param metadata [Hash{Symbol=>String}] Additional custom data associated with the product
      #
      #   @param price [Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice, Dodopayments::Models::Price::UsageBasedPrice] Pricing information for the product.
      #
      #   @param product_id [String] Unique identifier for the product.
      #
      #   @param tax_category [Symbol, Dodopayments::Models::TaxCategory] Tax category associated with the product.
      #
      #   @param updated_at [Time] Timestamp when the product was last updated.
      #
      #   @param addons [Array<String>, nil] Available Addons for subscription products
      #
      #   @param description [String, nil] Description of the product, optional.
      #
      #   @param digital_product_delivery [Dodopayments::Models::DigitalProductDelivery, nil]
      #
      #   @param image [String, nil] URL of the product image, optional.
      #
      #   @param license_key_activation_message [String, nil] Message sent upon license key activation, if applicable.
      #
      #   @param license_key_activations_limit [Integer, nil] Limit on the number of activations for the license key, if enabled.
      #
      #   @param license_key_duration [Dodopayments::Models::LicenseKeyDuration, nil] Duration of the license key validity, if enabled.
      #
      #   @param name [String, nil] Name of the product, optional.
      #
      #   @param product_collection_id [String, nil] The product collection ID this product belongs to, if any

      class Entitlement < Dodopayments::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute integration_config
        #   Platform-specific configuration for an entitlement. Each variant uses unique
        #   field names so `#[serde(untagged)]` can disambiguate correctly.
        #
        #   @return [Dodopayments::Models::Product::Entitlement::IntegrationConfig::GitHubConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::DiscordConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::TelegramConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::FigmaConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::FramerConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::NotionConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::LicenseKeyConfig]
        required :integration_config, union: -> { Dodopayments::Product::Entitlement::IntegrationConfig }

        # @!attribute integration_type
        #
        #   @return [Symbol, Dodopayments::Models::Product::Entitlement::IntegrationType]
        required :integration_type, enum: -> { Dodopayments::Product::Entitlement::IntegrationType }

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
        #   {Dodopayments::Models::Product::Entitlement} for more details.
        #
        #   Summary of an entitlement attached to a product
        #
        #   @param id [String]
        #
        #   @param integration_config [Dodopayments::Models::Product::Entitlement::IntegrationConfig::GitHubConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::DiscordConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::TelegramConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::FigmaConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::FramerConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::NotionConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::LicenseKeyConfig] Platform-specific configuration for an entitlement.
        #
        #   @param integration_type [Symbol, Dodopayments::Models::Product::Entitlement::IntegrationType]
        #
        #   @param name [String]
        #
        #   @param description [String, nil]

        # Platform-specific configuration for an entitlement. Each variant uses unique
        # field names so `#[serde(untagged)]` can disambiguate correctly.
        #
        # @see Dodopayments::Models::Product::Entitlement#integration_config
        module IntegrationConfig
          extend Dodopayments::Internal::Type::Union

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::GitHubConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::DiscordConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::TelegramConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::FigmaConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::FramerConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::NotionConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::DigitalFilesConfig }

          variant -> { Dodopayments::Product::Entitlement::IntegrationConfig::LicenseKeyConfig }

          class GitHubConfig < Dodopayments::Internal::Type::BaseModel
            # @!attribute permission
            #   One of: pull, push, admin, maintain, triage
            #
            #   @return [String]
            required :permission, String

            # @!attribute target_id
            #
            #   @return [String]
            required :target_id, String

            # @!method initialize(permission:, target_id:)
            #   @param permission [String] One of: pull, push, admin, maintain, triage
            #
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
            # @!attribute digital_file_ids
            #
            #   @return [Array<String>]
            required :digital_file_ids, Dodopayments::Internal::Type::ArrayOf[String]

            # @!attribute external_url
            #
            #   @return [String, nil]
            optional :external_url, String, nil?: true

            # @!attribute instructions
            #
            #   @return [String, nil]
            optional :instructions, String, nil?: true

            # @!method initialize(digital_file_ids:, external_url: nil, instructions: nil)
            #   @param digital_file_ids [Array<String>]
            #   @param external_url [String, nil]
            #   @param instructions [String, nil]
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
            #   @return [String, nil]
            optional :duration_interval, String, nil?: true

            # @!method initialize(activation_message: nil, activations_limit: nil, duration_count: nil, duration_interval: nil)
            #   @param activation_message [String, nil]
            #   @param activations_limit [Integer, nil]
            #   @param duration_count [Integer, nil]
            #   @param duration_interval [String, nil]
          end

          # @!method self.variants
          #   @return [Array(Dodopayments::Models::Product::Entitlement::IntegrationConfig::GitHubConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::DiscordConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::TelegramConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::FigmaConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::FramerConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::NotionConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::DigitalFilesConfig, Dodopayments::Models::Product::Entitlement::IntegrationConfig::LicenseKeyConfig)]
        end

        # @see Dodopayments::Models::Product::Entitlement#integration_type
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
