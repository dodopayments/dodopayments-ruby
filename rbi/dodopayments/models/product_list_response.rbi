# typed: strong

module Dodopayments
  module Models
    class ProductListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::ProductListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # Unique identifier for the business to which the product belongs.
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the product was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Entitlements linked to this product
      sig do
        returns(
          T::Array[Dodopayments::Models::ProductListResponse::Entitlement]
        )
      end
      attr_accessor :entitlements

      # Indicates if the product is recurring (e.g., subscriptions).
      sig { returns(T::Boolean) }
      attr_accessor :is_recurring

      # Additional custom data associated with the product
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Unique identifier for the product.
      sig { returns(String) }
      attr_accessor :product_id

      # Tax category associated with the product.
      sig { returns(Dodopayments::TaxCategory::TaggedSymbol) }
      attr_accessor :tax_category

      # Timestamp when the product was last updated.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Currency of the price
      sig { returns(T.nilable(Dodopayments::Currency::TaggedSymbol)) }
      attr_accessor :currency

      # Description of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # URL of the product image, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :image

      # Name of the product, optional.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # Price of the product, optional.
      #
      # The price is represented in the lowest denomination of the currency. For
      # example:
      #
      # - In USD, a price of `$12.34` would be represented as `1234` (cents).
      # - In JPY, a price of `¥1500` would be represented as `1500` (yen).
      # - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
      #
      # This ensures precision and avoids floating-point rounding errors.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :price

      # Details of the price
      sig { returns(T.nilable(Dodopayments::Price::Variants)) }
      attr_accessor :price_detail

      # Indicates if the price is tax inclusive
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :tax_inclusive

      sig do
        params(
          business_id: String,
          created_at: Time,
          entitlements:
            T::Array[
              Dodopayments::Models::ProductListResponse::Entitlement::OrHash
            ],
          is_recurring: T::Boolean,
          metadata: T::Hash[Symbol, String],
          product_id: String,
          tax_category: Dodopayments::TaxCategory::OrSymbol,
          updated_at: Time,
          currency: T.nilable(Dodopayments::Currency::OrSymbol),
          description: T.nilable(String),
          image: T.nilable(String),
          name: T.nilable(String),
          price: T.nilable(Integer),
          price_detail:
            T.nilable(
              T.any(
                Dodopayments::Price::OneTimePrice::OrHash,
                Dodopayments::Price::RecurringPrice::OrHash,
                Dodopayments::Price::UsageBasedPrice::OrHash
              )
            ),
          tax_inclusive: T.nilable(T::Boolean)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the business to which the product belongs.
        business_id:,
        # Timestamp when the product was created.
        created_at:,
        # Entitlements linked to this product
        entitlements:,
        # Indicates if the product is recurring (e.g., subscriptions).
        is_recurring:,
        # Additional custom data associated with the product
        metadata:,
        # Unique identifier for the product.
        product_id:,
        # Tax category associated with the product.
        tax_category:,
        # Timestamp when the product was last updated.
        updated_at:,
        # Currency of the price
        currency: nil,
        # Description of the product, optional.
        description: nil,
        # URL of the product image, optional.
        image: nil,
        # Name of the product, optional.
        name: nil,
        # Price of the product, optional.
        #
        # The price is represented in the lowest denomination of the currency. For
        # example:
        #
        # - In USD, a price of `$12.34` would be represented as `1234` (cents).
        # - In JPY, a price of `¥1500` would be represented as `1500` (yen).
        # - In INR, a price of `₹1234.56` would be represented as `123456` (paise).
        #
        # This ensures precision and avoids floating-point rounding errors.
        price: nil,
        # Details of the price
        price_detail: nil,
        # Indicates if the price is tax inclusive
        tax_inclusive: nil
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            created_at: Time,
            entitlements:
              T::Array[Dodopayments::Models::ProductListResponse::Entitlement],
            is_recurring: T::Boolean,
            metadata: T::Hash[Symbol, String],
            product_id: String,
            tax_category: Dodopayments::TaxCategory::TaggedSymbol,
            updated_at: Time,
            currency: T.nilable(Dodopayments::Currency::TaggedSymbol),
            description: T.nilable(String),
            image: T.nilable(String),
            name: T.nilable(String),
            price: T.nilable(Integer),
            price_detail: T.nilable(Dodopayments::Price::Variants),
            tax_inclusive: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end

      class Entitlement < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::ProductListResponse::Entitlement,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Platform-specific configuration for an entitlement. Each variant uses unique
        # field names so `#[serde(untagged)]` can disambiguate correctly.
        sig do
          returns(
            Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::Variants
          )
        end
        attr_accessor :integration_config

        sig do
          returns(
            Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
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
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig::OrHash,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig::OrHash
              ),
            integration_type:
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::OrSymbol,
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
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::Variants,
              integration_type:
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol,
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
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig
              )
            end

          class GitHubConfig < Dodopayments::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::GitHubConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DiscordConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::TelegramConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FigmaConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::FramerConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::NotionConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::DigitalFilesConfig,
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
                  Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::LicenseKeyConfig,
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
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationConfig::Variants
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
              T.all(
                Symbol,
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISCORD =
            T.let(
              :discord,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          GITHUB =
            T.let(
              :github,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          FIGMA =
            T.let(
              :figma,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          FRAMER =
            T.let(
              :framer,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          NOTION =
            T.let(
              :notion,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          DIGITAL_FILES =
            T.let(
              :digital_files,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )
          LICENSE_KEY =
            T.let(
              :license_key,
              Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::ProductListResponse::Entitlement::IntegrationType::TaggedSymbol
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
