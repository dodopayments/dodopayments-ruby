# typed: strong

module Dodopayments
  module Resources
    class Blocklist
      class Customers
        sig { returns(Dodopayments::Resources::Blocklist::Customers::Notes) }
        attr_reader :notes

        sig do
          params(
            create_blocked_customer_request:
              T.any(
                Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByCustomerID::OrHash,
                Dodopayments::Blocklist::CreateBlockedCustomerRequest::BlocklistCustomersBlockByEmail::OrHash
              ),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Blocklist::BlockedCustomer)
        end
        def create(create_blocked_customer_request:, request_options: {})
        end

        sig do
          params(
            entry_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Blocklist::BlockedCustomer)
        end
        def retrieve(
          # Blocklist entry id
          entry_id,
          request_options: {}
        )
        end

        sig do
          params(
            blocked_by_email: T.nilable(String),
            created_at_gte: T.nilable(Time),
            created_at_lte: T.nilable(Time),
            identifier: T.nilable(String),
            page_number: T.nilable(Integer),
            page_size: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::Blocklist::BlockedCustomer
            ]
          )
        end
        def list(
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
          params(
            entry_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).void
        end
        def delete(
          # Blocklist entry id
          entry_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
