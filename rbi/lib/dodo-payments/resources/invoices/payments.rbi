# typed: strong

module DodoPayments
  module Resources
    class Invoices
      class Payments
        sig do
          params(
            payment_id: String,
            request_options: T.nilable(T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .void
        end
        def retrieve(payment_id, request_options: {})
        end

        sig { params(client: DodoPayments::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
