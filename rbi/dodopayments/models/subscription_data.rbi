# typed: strong

module Dodopayments
  module Models
    class SubscriptionData < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::SubscriptionData, Dodopayments::Internal::AnyHash)
        end

      sig { returns(T.nilable(Dodopayments::OnDemandSubscription)) }
      attr_reader :on_demand

      sig do
        params(
          on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash)
        ).void
      end
      attr_writer :on_demand

      # Optional trial period in days If specified, this value overrides the trial
      # period set in the product's price Must be between 0 and 10000 days
      sig { returns(T.nilable(Integer)) }
      attr_accessor :trial_period_days

      sig do
        params(
          on_demand: T.nilable(Dodopayments::OnDemandSubscription::OrHash),
          trial_period_days: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        on_demand: nil,
        # Optional trial period in days If specified, this value overrides the trial
        # period set in the product's price Must be between 0 and 10000 days
        trial_period_days: nil
      )
      end

      sig do
        override.returns(
          {
            on_demand: T.nilable(Dodopayments::OnDemandSubscription),
            trial_period_days: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
