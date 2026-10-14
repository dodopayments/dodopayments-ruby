# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionServicePeriod < Dodopayments::Internal::Type::BaseModel
      # @!attribute ends_at
      #   End of the service period.
      #
      #   @return [Time]
      required :ends_at, Time

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

      # @!method initialize(ends_at:, starts_at:, subscription_id:)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionServicePeriod} for more details.
      #
      #   The service period that a payment pays for, for one subscription.
      #
      #   @param ends_at [Time] End of the service period.
      #
      #   @param starts_at [Time] Start of the service period. For a renewal, this is the billing date. For a
      #
      #   @param subscription_id [String] Identifier of the subscription.
    end
  end
end
