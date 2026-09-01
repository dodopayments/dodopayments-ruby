# typed: strong

module Dodopayments
  module Models
    module Blocklist
      class CustomerListParams < Dodopayments::Internal::Type::BaseModel
        extend Dodopayments::Internal::Type::RequestParameters::Converter
        include Dodopayments::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Blocklist::CustomerListParams,
              Dodopayments::Internal::AnyHash
            )
          end

        # Filter by the dashboard user who blocked the customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :blocked_by_email

        # Blocked on or after this time.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at_gte

        # Blocked on or before this time.
        sig { returns(T.nilable(Time)) }
        attr_accessor :created_at_lte

        # Partial, case-insensitive match on the email and on the customer id.
        sig { returns(T.nilable(String)) }
        attr_accessor :identifier

        # Page number. Default 0.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :page_number

        # Page size. Default 10, maximum 100.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :page_size

        sig do
          params(
            blocked_by_email: T.nilable(String),
            created_at_gte: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            identifier: T.nilable(String),
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by the dashboard user who blocked the customer.
          blocked_by_email: nil,
          # Blocked on or after this time.
          created_at_gte: nil,
          # Blocked on or before this time.
          created_at_lte: nil,
          # Partial, case-insensitive match on the email and on the customer id.
          identifier: nil,
          # Page number. Default 0.
          page_number: nil,
          # Page size. Default 10, maximum 100.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              blocked_by_email: T.nilable(String),
              created_at_gte: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              identifier: T.nilable(String),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
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
