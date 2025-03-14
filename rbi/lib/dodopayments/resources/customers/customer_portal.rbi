# typed: strong

module Dodopayments
  module Resources
    class Customers
      class CustomerPortal
        sig do
          params(
            customer_id: String,
            send_email: T.nilable(T::Boolean),
            request_options: T.nilable(T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def create(
          # Customer Id
          customer_id,
          # If true, will send link to user.
          send_email: nil,
          request_options: {}
        )
        end

        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
