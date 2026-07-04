# typed: strong

module Dodopayments
  module Models
    class CustomerListEntitlementGrantsParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerListEntitlementGrantsParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :customer_id

      # Filter by integration type (e.g. `feature_flag`)
      sig do
        returns(
          T.nilable(
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::OrSymbol
          )
        )
      end
      attr_reader :integration_type

      sig do
        params(
          integration_type:
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::OrSymbol
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

      # Filter by grant status
      sig do
        returns(
          T.nilable(
            Dodopayments::CustomerListEntitlementGrantsParams::Status::OrSymbol
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            Dodopayments::CustomerListEntitlementGrantsParams::Status::OrSymbol
        ).void
      end
      attr_writer :status

      sig do
        params(
          customer_id: String,
          integration_type:
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          status:
            Dodopayments::CustomerListEntitlementGrantsParams::Status::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        customer_id:,
        # Filter by integration type (e.g. `feature_flag`)
        integration_type: nil,
        # Page number (default 0)
        page_number: nil,
        # Page size (default 10, max 100)
        page_size: nil,
        # Filter by grant status
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            integration_type:
              Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            status:
              Dodopayments::CustomerListEntitlementGrantsParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by integration type (e.g. `feature_flag`)
      module IntegrationType
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISCORD =
          T.let(
            :discord,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        TELEGRAM =
          T.let(
            :telegram,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        GITHUB =
          T.let(
            :github,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        FIGMA =
          T.let(
            :figma,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        FRAMER =
          T.let(
            :framer,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        NOTION =
          T.let(
            :notion,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        DIGITAL_FILES =
          T.let(
            :digital_files,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        LICENSE_KEY =
          T.let(
            :license_key,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )
        FEATURE_FLAG =
          T.let(
            :feature_flag,
            Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::CustomerListEntitlementGrantsParams::IntegrationType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Filter by grant status
      module Status
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::CustomerListEntitlementGrantsParams::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :Pending,
            Dodopayments::CustomerListEntitlementGrantsParams::Status::TaggedSymbol
          )
        DELIVERED =
          T.let(
            :Delivered,
            Dodopayments::CustomerListEntitlementGrantsParams::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :Failed,
            Dodopayments::CustomerListEntitlementGrantsParams::Status::TaggedSymbol
          )
        REVOKED =
          T.let(
            :Revoked,
            Dodopayments::CustomerListEntitlementGrantsParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::CustomerListEntitlementGrantsParams::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
