# typed: strong

module Dodopayments
  module Models
    class SubscriptionServicePeriod < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionServicePeriod,
            Dodopayments::Internal::AnyHash
          )
        end

      # End of the service period.
      sig { returns(Time) }
      attr_accessor :ends_at

      # The part of one full billing period that the plan charge pays for. The value
      # `"1"` is a full period. A value less than 1 is a partial period, for example
      # after a plan change that keeps the billing cycle. For a plan change, this is the
      # value of the new plan. The credit for the old plan is not in this value.
      sig { returns(String) }
      attr_accessor :proration_factor

      # Start of the service period. For a renewal, this is the billing date. For a plan
      # change that applies at the next billing date, this is the time when the change
      # applied. This time can be some minutes after the billing date.
      sig { returns(Time) }
      attr_accessor :starts_at

      # Identifier of the subscription.
      sig { returns(String) }
      attr_accessor :subscription_id

      # The service period that a payment pays for, for one subscription.
      sig do
        params(
          ends_at: Time,
          proration_factor: String,
          starts_at: Time,
          subscription_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # End of the service period.
        ends_at:,
        # The part of one full billing period that the plan charge pays for. The value
        # `"1"` is a full period. A value less than 1 is a partial period, for example
        # after a plan change that keeps the billing cycle. For a plan change, this is the
        # value of the new plan. The credit for the old plan is not in this value.
        proration_factor:,
        # Start of the service period. For a renewal, this is the billing date. For a plan
        # change that applies at the next billing date, this is the time when the change
        # applied. This time can be some minutes after the billing date.
        starts_at:,
        # Identifier of the subscription.
        subscription_id:
      )
      end

      sig do
        override.returns(
          {
            ends_at: Time,
            proration_factor: String,
            starts_at: Time,
            subscription_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
