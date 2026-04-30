# typed: strong

module Dodopayments
  module Models
    class EntitlementListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::EntitlementListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Filter by integration type
      sig do
        returns(
          T.nilable(
            Dodopayments::EntitlementListParams::IntegrationType::OrSymbol
          )
        )
      end
      attr_reader :integration_type

      sig do
        params(
          integration_type:
            Dodopayments::EntitlementListParams::IntegrationType::OrSymbol
        ).void
      end
      attr_writer :integration_type

      # Page number (default 0)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size (default 10, max 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          integration_type:
            Dodopayments::EntitlementListParams::IntegrationType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter by integration type
        integration_type: nil,
        # Page number (default 0)
        page_number: nil,
        # Page size (default 10, max 100)
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            integration_type:
              Dodopayments::EntitlementListParams::IntegrationType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by integration type
      module IntegrationType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::EntitlementListParams::IntegrationType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISCORD =
          T.let(
            :discord,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        TELEGRAM =
          T.let(
            :telegram,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        GITHUB =
          T.let(
            :github,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        FIGMA =
          T.let(
            :figma,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        FRAMER =
          T.let(
            :framer,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        NOTION =
          T.let(
            :notion,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        DIGITAL_FILES =
          T.let(
            :digital_files,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )
        LICENSE_KEY =
          T.let(
            :license_key,
            Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::EntitlementListParams::IntegrationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
