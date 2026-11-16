# frozen_string_literal: true

module Dodopayments
  module Models
    # @see Dodopayments::Resources::Subscriptions#start_trial
    class SubscriptionStartTrialResponse < Dodopayments::Internal::Type::BaseModel
      # @!attribute invoice_id
      #   The paid $0 invoice of the trial.
      #
      #   @return [String]
      required :invoice_id, String

      # @!attribute subscription_id
      #
      #   @return [String]
      required :subscription_id, String

      # @!attribute trial_ends_at
      #   The first invoice after the trial bills at this time.
      #
      #   @return [Time]
      required :trial_ends_at, Time

      # @!method initialize(invoice_id:, subscription_id:, trial_ends_at:)
      #   @param invoice_id [String] The paid $0 invoice of the trial.
      #
      #   @param subscription_id [String]
      #
      #   @param trial_ends_at [Time] The first invoice after the trial bills at this time.
    end
  end
end
