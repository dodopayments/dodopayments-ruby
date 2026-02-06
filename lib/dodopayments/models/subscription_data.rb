# frozen_string_literal: true

module Dodopayments
  module Models
    class SubscriptionData < Dodopayments::Internal::Type::BaseModel
      # @!attribute on_demand
      #
      #   @return [Dodopayments::Models::OnDemandSubscription, nil]
      optional :on_demand, -> { Dodopayments::OnDemandSubscription }, nil?: true

      # @!attribute trial_period_days
      #   Optional trial period in days If specified, this value overrides the trial
      #   period set in the product's price Must be between 0 and 10000 days
      #
      #   @return [Integer, nil]
      optional :trial_period_days, Integer, nil?: true

      # @!method initialize(on_demand: nil, trial_period_days: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dodopayments::Models::SubscriptionData} for more details.
      #
      #   @param on_demand [Dodopayments::Models::OnDemandSubscription, nil]
      #
      #   @param trial_period_days [Integer, nil] Optional trial period in days If specified, this value overrides the trial perio
    end
  end
end
