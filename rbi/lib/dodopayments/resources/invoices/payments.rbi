# typed: strong

module Dodopayments
  module Resources
    class Invoices
      class Payments
        sig do
          params(
            payment_id: String,
            request_options: T.nilable(
              T.any(
                Dodopayments::RequestOptions,
                Dodopayments::Internal::Util::AnyHash
              )
            )
          )
            .void
        end
        def retrieve(payment_id, request_options: {})
        end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
