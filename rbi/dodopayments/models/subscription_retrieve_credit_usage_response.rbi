# typed: strong

module Dodopayments
  module Models
    class SubscriptionRetrieveCreditUsageResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item
          ]
        )
      end
      attr_accessor :items

      sig { returns(String) }
      attr_accessor :subscription_id

      # Credit usage status for all entitlements linked to a subscription
      sig do
        params(
          items:
            T::Array[
              Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item::OrHash
            ],
          subscription_id: String
        ).returns(T.attached_class)
      end
      def self.new(items:, subscription_id:)
      end

      sig do
        override.returns(
          {
            items:
              T::Array[
                Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item
              ],
            subscription_id: String
          }
        )
      end
      def to_hash
      end

      class Item < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::SubscriptionRetrieveCreditUsageResponse::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        # Customer's current credit balance for this entitlement (customer-wide)
        sig { returns(String) }
        attr_accessor :balance

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(String) }
        attr_accessor :credit_entitlement_name

        # True if overage has reached or exceeded the limit. When true, further deductions
        # that would increase overage will fail.
        sig { returns(T::Boolean) }
        attr_accessor :limit_reached

        # Current overage amount accrued (customer-wide)
        sig { returns(String) }
        attr_accessor :overage

        # Whether overage is enabled for this entitlement on this subscription
        sig { returns(T::Boolean) }
        attr_accessor :overage_enabled

        # Unit label for the credit entitlement (e.g. "API Calls", "Tokens")
        sig { returns(String) }
        attr_accessor :unit

        # Maximum allowed overage before deductions are blocked. None means unlimited
        # overage (when overage_enabled is true).
        sig { returns(T.nilable(String)) }
        attr_accessor :overage_limit

        # How much more overage can accumulate before being blocked. None if overage is
        # not enabled or there is no limit (unlimited). A value of 0 means the next
        # deduction that increases overage will be blocked.
        sig { returns(T.nilable(String)) }
        attr_accessor :remaining_headroom

        # Per-entitlement credit usage status for a subscription
        sig do
          params(
            balance: String,
            credit_entitlement_id: String,
            credit_entitlement_name: String,
            limit_reached: T::Boolean,
            overage: String,
            overage_enabled: T::Boolean,
            unit: String,
            overage_limit: T.nilable(String),
            remaining_headroom: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Customer's current credit balance for this entitlement (customer-wide)
          balance:,
          credit_entitlement_id:,
          credit_entitlement_name:,
          # True if overage has reached or exceeded the limit. When true, further deductions
          # that would increase overage will fail.
          limit_reached:,
          # Current overage amount accrued (customer-wide)
          overage:,
          # Whether overage is enabled for this entitlement on this subscription
          overage_enabled:,
          # Unit label for the credit entitlement (e.g. "API Calls", "Tokens")
          unit:,
          # Maximum allowed overage before deductions are blocked. None means unlimited
          # overage (when overage_enabled is true).
          overage_limit: nil,
          # How much more overage can accumulate before being blocked. None if overage is
          # not enabled or there is no limit (unlimited). A value of 0 means the next
          # deduction that increases overage will be blocked.
          remaining_headroom: nil
        )
        end

        sig do
          override.returns(
            {
              balance: String,
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              limit_reached: T::Boolean,
              overage: String,
              overage_enabled: T::Boolean,
              unit: String,
              overage_limit: T.nilable(String),
              remaining_headroom: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
