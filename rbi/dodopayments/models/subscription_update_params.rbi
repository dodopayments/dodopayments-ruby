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
