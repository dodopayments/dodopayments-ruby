# typed: strong

module Dodopayments
  module Models
    class Entitlement < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::Entitlement, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Time) }
      attr_accessor :created_at

      # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
      # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
      # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
      # ID-only via [`IntegrationConfig`]; this enum is response-only.
      sig { returns(Dodopayments::IntegrationConfigResponse::Variants) }
      attr_accessor :integration_config

      sig { returns(Dodopayments::EntitlementIntegrationType::TaggedSymbol) }
      attr_accessor :integration_type

      sig { returns(T::Boolean) }
      attr_accessor :is_active

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(T.nilable(String)) }
      attr_accessor :description

      sig { returns(T.nilable(T.anything)) }
      attr_reader :metadata

      sig { params(metadata: T.anything).void }
      attr_writer :metadata

      sig do
        params(
          id: String,
          business_id: String,
          created_at: Time,
          integration_config:
            T.any(
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
          name: String,
          updated_at: Time,
          description: T.nilable(String),
          metadata: T.anything
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        business_id:,
        created_at:,
        # Public-facing variant of [`IntegrationConfig`]. Mirrors every variant shape on
        # the wire EXCEPT `DigitalFiles`, which is replaced with a hydrated
        # `digital_files` object (resolved download URLs etc.). The persisted JSONB stays
        # ID-only via [`IntegrationConfig`]; this enum is response-only.
        integration_config:,
        integration_type:,
        is_active:,
        name:,
        updated_at:,
        description: nil,
        metadata: nil
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
            name: String,
            updated_at: Time,
            description: T.nilable(String),
            metadata: T.anything
          }
        )
      end
      def to_hash
      end
    end
  end
end
