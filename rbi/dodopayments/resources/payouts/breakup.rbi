# typed: strong

module Dodopayments
  module Resources
    class Payouts
      class Breakup
        sig { returns(Dodopayments::Resources::Payouts::Breakup::Details) }
        attr_reader :details

        # Returns the breakdown of a payout by event type (payments, refunds, disputes,
        # fees, etc.) in the payout's currency. Each amount is proportionally allocated
        # based on USD equivalent values, ensuring the total sums exactly to the payout
        # amount.
        sig do
          params(
            payout_id: String,
            request_options: Dodopayments::RequestOptions::OrHash
          ).returns(
            T::Array[Dodopayments::Models::Payouts::BreakupRetrieveResponseItem]
          )
        end
        def retrieve(
          # Id of the Payout to get breakup for
          payout_id,
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
