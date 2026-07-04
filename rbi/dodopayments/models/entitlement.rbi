# typed: strong

module Dodopayments
  module Models
    class Entitlement < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Entitlement, Dodopayments::Internal::AnyHash)
        end

      # Unique identifier of the entitlement.
      sig { returns(String) }
      attr_accessor :id

      # Identifier of the business that owns this entitlement.
      sig { returns(String) }
      attr_accessor :business_id

      # Timestamp when the entitlement was created.
      sig { returns(Time) }
      attr_accessor :created_at

      # Integration-specific configuration. For `digital_files` entitlements this
      # includes presigned download URLs for each attached file.
      sig { returns(Dodopayments::IntegrationConfigResponse::Variants) }
      attr_accessor :integration_config

      # Platform integration this entitlement uses.
      sig { returns(Dodopayments::EntitlementIntegrationType::TaggedSymbol) }
      attr_accessor :integration_type

      # Always `true` for entitlements returned by the public API; soft-deleted
      # entitlements are not returned.
      sig { returns(T::Boolean) }
      attr_accessor :is_active

      # Arbitrary key-value metadata supplied at creation or via PATCH.
      sig { returns(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]) }
      attr_accessor :metadata

      # Display name supplied at creation.
      sig { returns(String) }
      attr_accessor :name

      # Timestamp when the entitlement was last modified.
      sig { returns(Time) }
      attr_accessor :updated_at

      # Optional description supplied at creation.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Detailed view of a single entitlement: identity, integration type,
      # integration-specific configuration, and metadata.
      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          integration_config:
            T.any(
              Dodopayments::IntegrationConfigResponse::FeatureFlagConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::GitHubConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::DiscordConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::TelegramConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::FigmaConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::FramerConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::NotionConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::DigitalFilesConfig::OrHash,
              Dodopayments::IntegrationConfigResponse::LicenseKeyConfig::OrHash
            ),
          integration_type: Dodopayments::EntitlementIntegrationType::OrSymbol,
          is_active: T::Boolean,
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          name: String,
          updated_at: Time,
          description: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the entitlement.
        id:,
        # Identifier of the business that owns this entitlement.
        business_id:,
        # Timestamp when the entitlement was created.
        created_at:,
        # Integration-specific configuration. For `digital_files` entitlements this
        # includes presigned download URLs for each attached file.
        integration_config:,
        # Platform integration this entitlement uses.
        integration_type:,
        # Always `true` for entitlements returned by the public API; soft-deleted
        # entitlements are not returned.
        is_active:,
        # Arbitrary key-value metadata supplied at creation or via PATCH.
        metadata:,
        # Display name supplied at creation.
        name:,
        # Timestamp when the entitlement was last modified.
        updated_at:,
        # Optional description supplied at creation.
        description: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            business_id: String,
            created_at: Time,
            integration_config:
              Dodopayments::IntegrationConfigResponse::Variants,
            integration_type:
              Dodopayments::EntitlementIntegrationType::TaggedSymbol,
            is_active: T::Boolean,
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            name: String,
            updated_at: Time,
            description: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
