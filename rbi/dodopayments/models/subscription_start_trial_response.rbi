# typed: strong

module Dodopayments
  module Models
    class SubscriptionStartTrialResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionStartTrialResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      # The paid $0 invoice of the trial.
      sig { returns(String) }
      attr_accessor :invoice_id

      sig { returns(String) }
      attr_accessor :subscription_id

      # The first invoice after the trial bills at this time.
      sig { returns(Time) }
      attr_accessor :trial_ends_at

      sig do
        params(
          invoice_id: String,
          subscription_id: String,
          trial_ends_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # The paid $0 invoice of the trial.
        invoice_id:,
        subscription_id:,
        # The first invoice after the trial bills at this time.
        trial_ends_at:
      )
      end

      sig do
        override.returns(
          { invoice_id: String, subscription_id: String, trial_ends_at: Time }
        )
      end
      def to_hash
      end
    end
  end
end
