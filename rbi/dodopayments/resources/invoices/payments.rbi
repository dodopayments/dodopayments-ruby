# typed: strong

module Dodopayments
  module Resources
    class Invoices
      class Payments
        sig { params(payment_id: String, request_options: Dodopayments::RequestOpts).void }
        def retrieve(payment_id, request_options: {}); end

        # @api private
        sig { params(client: Dodopayments::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
