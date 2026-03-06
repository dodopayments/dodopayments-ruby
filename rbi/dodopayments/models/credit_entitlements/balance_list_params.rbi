# typed: strong

module Dodopayments
  module Models
    module CreditEntitlements
      class BalanceListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::CreditEntitlements::BalanceListParams,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        # Filter by specific customer ID
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

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

        sig do
          params(
            credit_entitlement_id: String,
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          # Filter by specific customer ID
          customer_id: nil,
          # Page number default is 0
          page_number: nil,
          # Page size default is 10 max is 100
          page_size: nil,
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
