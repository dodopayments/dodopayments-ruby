# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionServicePeriod < Dodopayments::Internal::Type::BaseModel
      # @!attribute ends_at
      #   End of the service period.
      #
      #   @return [Time]
      required :ends_at, Time

      # @!attribute proration_factor
      #   The part of one full billing period that the plan charge pays for. The value
      #   `"1"` is a full period. A value less than 1 is a partial period, for example
      #   after a plan change that keeps the billing cycle. For a plan change, this is the
      #   value of the new plan. The credit for the old plan is not in this value.
      #
      #   @return [String]
      required :proration_factor, String

      # @!attribute starts_at
      #   Start of the service period. For a renewal, this is the billing date. For a plan
      #   change that applies at the next billing date, this is the time when the change
      #   applied. This time can be some minutes after the billing date.
      #
      #   @return [Time]
      required :starts_at, Time

      # @!attribute subscription_id
      #   Identifier of the subscription.
      #
      #   @return [String]
      required :subscription_id, String

      # @!method initialize(ends_at:, proration_factor:, starts_at:, subscription_id:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionServicePeriod} for more details.
      #
      #   The service period that a payment pays for, for one subscription.
      #
      #   @param ends_at [Time] End of the service period.
      #
      #   @param proration_factor [String] The part of one full billing period that the plan charge pays for. The value
      #
      #   @param starts_at [Time] Start of the service period. For a renewal, this is the billing date. For a
      #
      #   @param subscription_id [String] Identifier of the subscription.
    end
  end
end
