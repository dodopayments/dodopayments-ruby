# typed: strong

module Dodopayments
  module Resources
    class Customers
      class Emails
        # Returns every transactional email sent to this customer in the last 180 days,
        # newest first, with its delivery outcome. Delivery status comes from the email
        # provider and is as fresh as replication, typically seconds.
        sig do
          params(
            customer_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            Dodopayments::Internal::DefaultPageNumberPagination[
              Dodopayments::Customers::EmailLogItem
            ]
          )
        end
        def list(
          # The customer's id
          customer_id,
          # Which page to return. The default is 0.
          page_number: nil,
          # How many emails to return. The default is 10 and the maximum is 100.
          page_size: nil,
          request_options: {}
        )
        end

        # Returns the email exactly as it was sent, plus the reason it failed when it did.
        # Some emails have no body to show: an authentication email carries a live login
        # token, a blocked email never reached the provider, and the provider clears
        # bodies at 180 days.
        sig do
          params(
            email_log_id: String,
            customer_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::Customers::EmailBody)
        end
        def retrieve_body(
          # The email log entry's id
          email_log_id,
          # The customer's id
          customer_id:,
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
