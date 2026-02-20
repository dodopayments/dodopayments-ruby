# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Dodopayments::BillingAddress)) }
      attr_reader :billing

      sig do
        params(billing: T.nilable(Dodopayments::BillingAddress::OrHash)).void
      end
      attr_writer :billing

      # When set, the subscription will remain active until the end of billing period
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :cancel_at_next_billing_date

      # Update credit entitlement cart settings
      sig do
        returns(
          T.nilable(
            T::Array[
              Dodopayments::SubscriptionUpdateParams::CreditEntitlementCart
            ]
          )
        )
      end
      attr_accessor :credit_entitlement_cart

      sig { returns(T.nilable(String)) }
      attr_accessor :customer_name

      sig do
        returns(
          T.nilable(Dodopayments::SubscriptionUpdateParams::DisableOnDemand)
        )
      end
      attr_reader :disable_on_demand

      sig do
        params(
          disable_on_demand:
            T.nilable(
              Dodopayments::SubscriptionUpdateParams::DisableOnDemand::OrHash
            )
        ).void
      end
      attr_writer :disable_on_demand

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(Time)) }
      attr_accessor :next_billing_date

      sig { returns(T.nilable(Dodopayments::SubscriptionStatus::OrSymbol)) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      sig do
        params(
          billing: T.nilable(Dodopayments::BillingAddress::OrHash),
          cancel_at_next_billing_date: T.nilable(T::Boolean),
          credit_entitlement_cart:
            T.nilable(
              T::Array[
                Dodopayments::SubscriptionUpdateParams::CreditEntitlementCart::OrHash
              ]
            ),
          customer_name: T.nilable(String),
          disable_on_demand:
            T.nilable(
              Dodopayments::SubscriptionUpdateParams::DisableOnDemand::OrHash
            ),
          metadata: T.nilable(T::Hash[Symbol, String]),
          next_billing_date: T.nilable(Time),
          status: T.nilable(Dodopayments::SubscriptionStatus::OrSymbol),
          tax_id: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        billing: nil,
        # When set, the subscription will remain active until the end of billing period
        cancel_at_next_billing_date: nil,
        # Update credit entitlement cart settings
        credit_entitlement_cart: nil,
        customer_name: nil,
        disable_on_demand: nil,
        metadata: nil,
        next_billing_date: nil,
        status: nil,
        tax_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            billing: T.nilable(Dodopayments::BillingAddress),
            cancel_at_next_billing_date: T.nilable(T::Boolean),
            credit_entitlement_cart:
              T.nilable(
                T::Array[
                  Dodopayments::SubscriptionUpdateParams::CreditEntitlementCart
                ]
              ),
            customer_name: T.nilable(String),
            disable_on_demand:
              T.nilable(
                Dodopayments::SubscriptionUpdateParams::DisableOnDemand
              ),
            metadata: T.nilable(T::Hash[Symbol, String]),
            next_billing_date: T.nilable(Time),
            status: T.nilable(Dodopayments::SubscriptionStatus::OrSymbol),
            tax_id: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      class CreditEntitlementCart < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionUpdateParams::CreditEntitlementCart,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :credit_entitlement_id

        sig { returns(T.nilable(String)) }
        attr_accessor :credits_amount

        sig { returns(T.nilable(Integer)) }
        attr_accessor :expires_after_days

        sig { returns(T.nilable(Integer)) }
        attr_accessor :low_balance_threshold_percent

        sig { returns(T.nilable(Integer)) }
        attr_accessor :max_rollover_count

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :overage_charge_at_billing

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :overage_enabled

        sig { returns(T.nilable(String)) }
        attr_accessor :overage_limit

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :rollover_enabled

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_percentage

        sig { returns(T.nilable(Integer)) }
        attr_accessor :rollover_timeframe_count

        sig { returns(T.nilable(Dodopayments::TimeInterval::OrSymbol)) }
        attr_accessor :rollover_timeframe_interval

        sig do
          params(
            credit_entitlement_id: String,
            credits_amount: T.nilable(String),
            expires_after_days: T.nilable(Integer),
            low_balance_threshold_percent: T.nilable(Integer),
            max_rollover_count: T.nilable(Integer),
            overage_charge_at_billing: T.nilable(T::Boolean),
            overage_enabled: T.nilable(T::Boolean),
            overage_limit: T.nilable(String),
            rollover_enabled: T.nilable(T::Boolean),
            rollover_percentage: T.nilable(Integer),
            rollover_timeframe_count: T.nilable(Integer),
            rollover_timeframe_interval:
              T.nilable(Dodopayments::TimeInterval::OrSymbol)
          ).returns(T.attached_class)
        end
        def self.new(
          credit_entitlement_id:,
          credits_amount: nil,
          expires_after_days: nil,
          low_balance_threshold_percent: nil,
          max_rollover_count: nil,
          overage_charge_at_billing: nil,
          overage_enabled: nil,
          overage_limit: nil,
          rollover_enabled: nil,
          rollover_percentage: nil,
          rollover_timeframe_count: nil,
          rollover_timeframe_interval: nil
        )
        end

        sig do
          override.returns(
            {
              credit_entitlement_id: String,
              credits_amount: T.nilable(String),
              expires_after_days: T.nilable(Integer),
              low_balance_threshold_percent: T.nilable(Integer),
              max_rollover_count: T.nilable(Integer),
              overage_charge_at_billing: T.nilable(T::Boolean),
              overage_enabled: T.nilable(T::Boolean),
              overage_limit: T.nilable(String),
              rollover_enabled: T.nilable(T::Boolean),
              rollover_percentage: T.nilable(Integer),
              rollover_timeframe_count: T.nilable(Integer),
              rollover_timeframe_interval:
                T.nilable(Dodopayments::TimeInterval::OrSymbol)
            }
          )
        end
        def to_hash
        end
      end

      class DisableOnDemand < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionUpdateParams::DisableOnDemand,
              Dodopayments::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :next_billing_date

        sig { params(next_billing_date: Time).returns(T.attached_class) }
        def self.new(next_billing_date:)
        end

        sig { override.returns({ next_billing_date: Time }) }
        def to_hash
        end
      end
    end
  end
end
