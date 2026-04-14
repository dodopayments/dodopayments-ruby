# typed: strong

module Dodopayments
  module Models
    class Product < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Product, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :brand_id

      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Attached credit entitlements with settings
      sig { returns(T::Array[Dodopayments::CreditEntitlementMappingResponse]) }
      attr_accessor :credit_entitlements

      # Attached entitlements (integration-based access grants)
      sig { returns(T::Array[Dodopayments::Product::Entitlement]) }
      attr_accessor :entitlements

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      attr_accessor :is_recurring

      # Indicates whether the product requires a license key.
      sig { returns(T::Boolean) }
      attr_accessor :license_key_enabled

      # Additional custom data associated with the product
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Pricing information for the product.
      sig { returns(Dodopayments::Price::Variants) }
      attr_accessor :price

      # Unique identifier for the product.
      sig { returns(String) }
      attr_accessor :product_id

      # Tax category associated with the product.
      sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
      attr_accessor :tax_category

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Available Addons for subscription products
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :addons

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(Dodopayments::DigitalProductDelivery)) }
      attr_reader :digital_product_delivery

      sig do
        params(
          digital_product_delivery:
            T.nilable(Dodopayments::DigitalProductDelivery::OrHash)
        ).void
      end
      attr_writer :digital_product_delivery

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Message sent upon license key activation, if applicable.
      sig { returns(T.nilable(String)) }
      attr_accessor :license_key_activation_message

      # Limit on the number of activations for the license key, if enabled.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :license_key_activations_limit

      # Duration of the license key validity, if enabled.
      sig { returns(T.nilable(Dodopayments::LicenseKeyDuration)) }
      attr_reader :license_key_duration

      sig do
        params(
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash)
        ).void
      end
      attr_writer :license_key_duration

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # The product collection ID this product belongs to, if any
      sig { returns(T.nilable(String)) }
      attr_accessor :product_collection_id

      sig do
        params(
          brand_id: String,
          business_id: String,
          created_at: Time,
          credit_entitlements:
            T::Array[Dodopayments::CreditEntitlementMappingResponse::OrHash],
          entitlements: T::Array[Dodopayments::Product::Entitlement::OrHash],
          is_recurring: T::Boolean,
          license_key_enabled: T::Boolean,
          metadata: T::Hash[Symbol, String],
          price:
            T.any(
              Dodopayments::Price::OneTimePrice::OrHash,
              Dodopayments::Price::RecurringPrice::OrHash,
              Dodopayments::Price::UsageBasedPrice::OrHash
            ),
          product_id: String,
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          updated_at: Time,
          addons: T.nilable(T::Array[String]),
          description: T.nilable(String),
          digital_product_delivery:
            T.nilable(Dodopayments::DigitalProductDelivery::OrHash),
          image: T.nilable(String),
          license_key_activation_message: T.nilable(String),
          license_key_activations_limit: T.nilable(Integer),
          license_key_duration:
            T.nilable(Dodopayments::LicenseKeyDuration::OrHash),
          name: T.nilable(String),
          product_collection_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        brand_id:,
        # Unique identifier for the business to which the product belongs.
        business_id:,
        # Timestamp when the product was created.
        created_at:,
        # Attached credit entitlements with settings
        credit_entitlements:,
        # Attached entitlements (integration-based access grants)
        entitlements:,
        # Indicates if the product is recurring (e.g., subscriptions).
        is_recurring:,
        # Indicates whether the product requires a license key.
        license_key_enabled:,
        # Additional custom data associated with the product
        metadata:,
        # Pricing information for the product.
        price:,
        # Unique identifier for the product.
        product_id:,
        # Tax category associated with the product.
        tax_category:,
        # Timestamp when the product was last updated.
        updated_at:,
        # Available Addons for subscription products
        addons: nil,
        # Description of the product, optional.
        description: nil,
        digital_product_delivery: nil,
        # URL of the product image, optional.
        image: nil,
        # Message sent upon license key activation, if applicable.
        license_key_activation_message: nil,
        # Limit on the number of activations for the license key, if enabled.
        license_key_activations_limit: nil,
        # Duration of the license key validity, if enabled.
        license_key_duration: nil,
        # Name of the product, optional.
        name: nil,
        # The product collection ID this product belongs to, if any
        product_collection_id: nil
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            business_id: String,
            created_at: Time,
            credit_entitlements:
              T::Array[Dodopayments::CreditEntitlementMappingResponse],
            entitlements: T::Array[Dodopayments::Product::Entitlement],
            is_recurring: T::Boolean,
            license_key_enabled: T::Boolean,
            metadata: T::Hash[Symbol, String],
            price: Dodopayments::Price::Variants,
            product_id: String,
            tax_category: Dodopayments::TaxCategory::TaggedSymbol,
            updated_at: Time,
            addons: T.nilable(T::Array[String]),
            description: T.nilable(String),
            digital_product_delivery:
              T.nilable(Dodopayments::DigitalProductDelivery),
            image: T.nilable(String),
            license_key_activation_message: T.nilable(String),
            license_key_activations_limit: T.nilable(Integer),
            license_key_duration: T.nilable(Dodopayments::LicenseKeyDuration),
            name: T.nilable(String),
            product_collection_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      class Entitlement < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Product::Entitlement,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Platform-specific configuration for an entitlement. Each variant uses unique
        # field names so `#[serde(untagged)]` can disambiguate correctly.
        sig do
          returns(
            Dodopayments::Product::Entitlement::IntegrationConfig::Variants
          )
        end
        attr_accessor :integration_config

        sig do
          returns(
            Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
          )
        end
        attr_accessor :integration_type

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        # Summary of an entitlement attached to a product
        sig do
          params(
            id: String,
            integration_config:
              T.any(
                Dodopayments::Product::Entitlement::IntegrationConfig::GitHubConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::DiscordConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::TelegramConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::FigmaConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::FramerConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::NotionConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::DigitalFilesConfig::OrHash,
                Dodopayments::Product::Entitlement::IntegrationConfig::LicenseKeyConfig::OrHash
              ),
            integration_type:
              Dodopayments::Product::Entitlement::IntegrationType::OrSymbol,
            name: String,
            description: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Platform-specific configuration for an entitlement. Each variant uses unique
          # field names so `#[serde(untagged)]` can disambiguate correctly.
          integration_config:,
          integration_type:,
          name:,
          description: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              integration_config:
                Dodopayments::Product::Entitlement::IntegrationConfig::Variants,
              integration_type:
                Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol,
              name: String,
              description: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Platform-specific configuration for an entitlement. Each variant uses unique
        # field names so `#[serde(untagged)]` can disambiguate correctly.
        module IntegrationConfig
          extend Dodopayments::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Dodopayments::Product::Entitlement::IntegrationConfig::GitHubConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::DiscordConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::TelegramConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::FigmaConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::FramerConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::NotionConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::DigitalFilesConfig,
                Dodopayments::Product::Entitlement::IntegrationConfig::LicenseKeyConfig
              )
            end

          class GitHubConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::GitHubConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            # One of: pull, push, admin, maintain, triage
            sig { returns(String) }
            attr_accessor :permission

            sig { returns(String) }
            attr_accessor :target_id

            sig do
              params(permission: String, target_id: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # One of: pull, push, admin, maintain, triage
              permission:,
              target_id:
            )
            end

            sig { override.returns({ permission: String, target_id: String }) }
            def to_hash
            end
          end

          class DiscordConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::DiscordConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :guild_id

            sig { returns(T.nilable(String)) }
            attr_accessor :role_id

            sig do
              params(guild_id: String, role_id: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(guild_id:, role_id: nil)
            end

            sig do
              override.returns({ guild_id: String, role_id: T.nilable(String) })
            end
            def to_hash
            end
          end

          class TelegramConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::TelegramConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :chat_id

            sig { params(chat_id: String).returns(T.attached_class) }
            def self.new(chat_id:)
            end

            sig { override.returns({ chat_id: String }) }
            def to_hash
            end
          end

          class FigmaConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::FigmaConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :figma_file_id

            sig { params(figma_file_id: String).returns(T.attached_class) }
            def self.new(figma_file_id:)
            end

            sig { override.returns({ figma_file_id: String }) }
            def to_hash
            end
          end

          class FramerConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::FramerConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :framer_template_id

            sig { params(framer_template_id: String).returns(T.attached_class) }
            def self.new(framer_template_id:)
            end

            sig { override.returns({ framer_template_id: String }) }
            def to_hash
            end
          end

          class NotionConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::NotionConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :notion_template_id

            sig { params(notion_template_id: String).returns(T.attached_class) }
            def self.new(notion_template_id:)
            end

            sig { override.returns({ notion_template_id: String }) }
            def to_hash
            end
          end

          class DigitalFilesConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::DigitalFilesConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(T::Array[String]) }
            attr_accessor :digital_file_ids

            sig { returns(T.nilable(String)) }
            attr_accessor :external_url

            sig { returns(T.nilable(String)) }
            attr_accessor :instructions

            sig do
              params(
                digital_file_ids: T::Array[String],
                external_url: T.nilable(String),
                instructions: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              digital_file_ids:,
              external_url: nil,
              instructions: nil
            )
            end

            sig do
              override.returns(
                {
                  digital_file_ids: T::Array[String],
                  external_url: T.nilable(String),
                  instructions: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          class LicenseKeyConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Product::Entitlement::IntegrationConfig::LicenseKeyConfig,
                  Dodopayments::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :activation_message

            sig { returns(T.nilable(Integer)) }
            attr_accessor :activations_limit

            sig { returns(T.nilable(Integer)) }
            attr_accessor :duration_count

            sig { returns(T.nilable(String)) }
            attr_accessor :duration_interval

            sig do
              params(
                activation_message: T.nilable(String),
                activations_limit: T.nilable(Integer),
                duration_count: T.nilable(Integer),
                duration_interval: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              activation_message: nil,
              activations_limit: nil,
              duration_count: nil,
              duration_interval: nil
            )
            end

            sig do
              override.returns(
                {
                  activation_message: T.nilable(String),
                  activations_limit: T.nilable(Integer),
                  duration_count: T.nilable(Integer),
                  duration_interval: T.nilable(String)
                }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Dodopayments::Product::Entitlement::IntegrationConfig::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module IntegrationType
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dodopayments::Product::Entitlement::IntegrationType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISCORD =
            T.let(
              :discord,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          GITHUB =
            T.let(
              :github,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          FIGMA =
            T.let(
              :figma,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          FRAMER =
            T.let(
              :framer,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          NOTION =
            T.let(
              :notion,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          DIGITAL_FILES =
            T.let(
              :digital_files,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )
          LICENSE_KEY =
            T.let(
              :license_key,
              Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Product::Entitlement::IntegrationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
