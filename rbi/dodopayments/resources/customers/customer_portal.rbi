# typed: strong

module Dodopayments
  module Resources
    class Customers
      class CustomerPortal
        sig do
          params(
            customer_id: String,
            return_url: String,
            send_email: T::Boolean,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(Dodopayments::CustomerPortalSession)
        end
        def create(
          # Customer Id
          customer_id,
          # Optional return URL for this session. Overrides the business-level default. This
          # URL will be shown as a "Return to {business}" back button in the portal.
          return_url: nil,
          # If true, will send link to user.
          send_email: nil,
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
