# typed: strong

module Dodopayments
  module Models
    module Entitlements
      class GrantListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Entitlements::GrantListParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Filter by customer ID
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

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
              Dodopayments::Entitlements::GrantListParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Dodopayments::Entitlements::GrantListParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            id: String,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            status:
              Dodopayments::Entitlements::GrantListParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Filter by customer ID
          customer_id: nil,
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
              id: String,
              customer_id: String,
              page_number: Integer,
              page_size: Integer,
              status:
                Dodopayments::Entitlements::GrantListParams::Status::OrSymbol,
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by grant status
        module Status
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dodopayments::Entitlements::GrantListParams::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :Pending,
              Dodopayments::Entitlements::GrantListParams::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :Delivered,
              Dodopayments::Entitlements::GrantListParams::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :Failed,
              Dodopayments::Entitlements::GrantListParams::Status::TaggedSymbol
            )
          REVOKED =
            T.let(
              :Revoked,
              Dodopayments::Entitlements::GrantListParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Entitlements::GrantListParams::Status::TaggedSymbol
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
