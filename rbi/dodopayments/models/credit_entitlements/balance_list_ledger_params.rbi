# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceListLedgerParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::BalanceListLedgerParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :customer_id

        # Filter by end date
        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

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

        # Filter by start date
        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        # Filter by transaction type (snake_case: credit_added, credit_deducted,
        # credit_expired, etc.)
        sig { returns(T.nilable(String)) }
        attr_reader :transaction_type

        sig { params(transaction_type: String).void }
        attr_writer :transaction_type

        sig do
          params(
            credit_entitlement_id: String,
            customer_id: String,
            end_date: Time,
            page_number: Integer,
            page_size: Integer,
            start_date: Time,
            transaction_type: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          customer_id:,
          # Filter by end date
          end_date: nil,
          # Page number default is 0
          page_number: nil,
          # Page size default is 10 max is 100
          page_size: nil,
          # Filter by start date
          start_date: nil,
          # Filter by transaction type (snake_case: credit_added, credit_deducted,
          # credit_expired, etc.)
          transaction_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              customer_id: String,
              end_date: Time,
              page_number: Integer,
              page_size: Integer,
              start_date: Time,
              transaction_type: String,
              request_options: Dodopayments::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
