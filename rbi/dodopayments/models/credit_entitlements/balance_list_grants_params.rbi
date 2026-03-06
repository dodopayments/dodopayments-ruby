# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceListGrantsParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::BalanceListGrantsParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        # Page number default is 0
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # Page size default is 10 max is 100
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Filter by grant status: active, expired, depleted
        sig do
          returns(
            T.nilable(
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::OrSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            credit_entitlement_id: String,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            status:
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::OrSymbol,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          customer_id:,
          # Page number default is 0
          page_number: nil,
          # Page size default is 10 max is 100
          page_size: nil,
          # Filter by grant status: active, expired, depleted
          status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              customer_id: String,
              page_number: Integer,
              page_size: Integer,
              status:
                Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::OrSymbol,
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by grant status: active, expired, depleted
        module Status
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACTIVE =
            T.let(
              :active,
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::TaggedSymbol
            )
          DEPLETED =
            T.let(
              :depleted,
              Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::CreditEntitlements::BalanceListGrantsParams::Status::TaggedSymbol
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
