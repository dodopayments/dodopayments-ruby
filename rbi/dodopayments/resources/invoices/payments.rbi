# typed: strong

module Dodopayments
  module Resources
    class Invoices
      class Payments
        sig do
          params(
            payment_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def retrieve(
          # Payment ID
          payment_id,
          request_options: {}
        )
        end

        sig do
          params(
            payout_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def retrieve_payout(
          # Payout ID
          payout_id,
          request_options: {}
        )
        end

        sig do
          params(
            refund_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def retrieve_refund(
          # Refund ID
          refund_id,
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
