# typed: strong

module Dodopayments
  module Models
    class WebhookPayload < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::WebhookPayload, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :business_id

      # The latest data at the time of delivery attempt
      sig do
        returns(
          T.any(
            Dodopayments::WebhookPayload::Data::Payment,
            Dodopayments::WebhookPayload::Data::Subscription,
            Dodopayments::WebhookPayload::Data::Refund,
            Dodopayments::WebhookPayload::Data::Dispute,
            Dodopayments::WebhookPayload::Data::LicenseKey,
            Dodopayments::WebhookPayload::Data::CreditLedgerEntry,
            Dodopayments::WebhookPayload::Data::CreditBalanceLow,
            Dodopayments::WebhookPayload::Data::AbandonedCheckout,
            Dodopayments::WebhookPayload::Data::DunningAttempt,
            Dodopayments::WebhookPayload::Data::EntitlementGrant
          )
        )
      end
      attr_accessor :data

      # The timestamp of when the event occurred (not necessarily the same of when it
      # was delivered)
      sig { returns(Time) }
      attr_accessor :timestamp

      # Event types for Dodo events
      sig { returns(Dodopayments::WebhookEventType::OrSymbol) }
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data:
            T.any(
              Dodopayments::WebhookPayload::Data::Payment::OrHash,
              Dodopayments::WebhookPayload::Data::Subscription::OrHash,
              Dodopayments::WebhookPayload::Data::Refund::OrHash,
              Dodopayments::WebhookPayload::Data::Dispute::OrHash,
              Dodopayments::WebhookPayload::Data::LicenseKey::OrHash,
              Dodopayments::WebhookPayload::Data::CreditLedgerEntry::OrHash,
              Dodopayments::WebhookPayload::Data::CreditBalanceLow::OrHash,
              Dodopayments::WebhookPayload::Data::AbandonedCheckout::OrHash,
              Dodopayments::WebhookPayload::Data::DunningAttempt::OrHash,
              Dodopayments::WebhookPayload::Data::EntitlementGrant::OrHash
            ),
          timestamp: Time,
          type: Dodopayments::WebhookEventType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        business_id:,
        # The latest data at the time of delivery attempt
        data:,
        # The timestamp of when the event occurred (not necessarily the same of when it
        # was delivered)
        timestamp:,
        # Event types for Dodo events
        type:
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data:
              T.any(
                Dodopayments::WebhookPayload::Data::Payment,
                Dodopayments::WebhookPayload::Data::Subscription,
                Dodopayments::WebhookPayload::Data::Refund,
                Dodopayments::WebhookPayload::Data::Dispute,
                Dodopayments::WebhookPayload::Data::LicenseKey,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry,
                Dodopayments::WebhookPayload::Data::CreditBalanceLow,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout,
                Dodopayments::WebhookPayload::Data::DunningAttempt,
                Dodopayments::WebhookPayload::Data::EntitlementGrant
              ),
            timestamp: Time,
            type: Dodopayments::WebhookEventType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The latest data at the time of delivery attempt
      module Data
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::WebhookPayload::Data::Payment,
              Dodopayments::WebhookPayload::Data::Subscription,
              Dodopayments::WebhookPayload::Data::Refund,
              Dodopayments::WebhookPayload::Data::Dispute,
              Dodopayments::WebhookPayload::Data::LicenseKey,
              Dodopayments::WebhookPayload::Data::CreditLedgerEntry,
              Dodopayments::WebhookPayload::Data::CreditBalanceLow,
              Dodopayments::WebhookPayload::Data::AbandonedCheckout,
              Dodopayments::WebhookPayload::Data::DunningAttempt,
              Dodopayments::WebhookPayload::Data::EntitlementGrant
            )
          end

        class Payment < Dodopayments::Models::Payment
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::Payment,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :Payment)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        class Subscription < Dodopayments::Models::Subscription
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::Subscription,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          # Response struct representing subscription details
          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :Subscription)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        class Refund < Dodopayments::Models::Refund
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::Refund,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :Refund)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        class Dispute < Dodopayments::Models::GetDispute
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::Dispute,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :Dispute)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        class LicenseKey < Dodopayments::Models::LicenseKey
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::LicenseKey,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :LicenseKey)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        class CreditLedgerEntry < Dodopayments::Models::CreditEntitlements::CreditLedgerEntry
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          # Response for a ledger entry
          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :CreditLedgerEntry)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        class CreditBalanceLow < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::CreditBalanceLow,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :available_balance

          # Brand id this credit entitlement belongs to
          sig { returns(String) }
          attr_accessor :brand_id

          sig { returns(String) }
          attr_accessor :credit_entitlement_id

          sig { returns(String) }
          attr_accessor :credit_entitlement_name

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig { returns(String) }
          attr_accessor :subscription_credits_amount

          sig { returns(String) }
          attr_accessor :subscription_id

          sig { returns(String) }
          attr_accessor :threshold_amount

          sig { returns(Integer) }
          attr_accessor :threshold_percent

          sig do
            params(
              available_balance: String,
              brand_id: String,
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              customer_id: String,
              subscription_credits_amount: String,
              subscription_id: String,
              threshold_amount: String,
              threshold_percent: Integer,
              payload_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            available_balance:,
            # Brand id this credit entitlement belongs to
            brand_id:,
            credit_entitlement_id:,
            credit_entitlement_name:,
            customer_id:,
            subscription_credits_amount:,
            subscription_id:,
            threshold_amount:,
            threshold_percent:,
            payload_type: :CreditBalanceLow
          )
          end

          sig do
            override.returns(
              {
                available_balance: String,
                brand_id: String,
                credit_entitlement_id: String,
                credit_entitlement_name: String,
                customer_id: String,
                payload_type: Symbol,
                subscription_credits_amount: String,
                subscription_id: String,
                threshold_amount: String,
                threshold_percent: Integer
              }
            )
          end
          def to_hash
          end
        end

        class AbandonedCheckout < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::AbandonedCheckout,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :abandoned_at

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason::OrSymbol
            )
          end
          attr_accessor :abandonment_reason

          # Brand id this abandoned checkout belongs to
          sig { returns(String) }
          attr_accessor :brand_id

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig { returns(String) }
          attr_accessor :payment_id

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::OrSymbol
            )
          end
          attr_accessor :status

          sig { returns(T.nilable(String)) }
          attr_accessor :recovered_payment_id

          sig do
            params(
              abandoned_at: Time,
              abandonment_reason:
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason::OrSymbol,
              brand_id: String,
              customer_id: String,
              payment_id: String,
              status:
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::OrSymbol,
              recovered_payment_id: T.nilable(String),
              payload_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            abandoned_at:,
            abandonment_reason:,
            # Brand id this abandoned checkout belongs to
            brand_id:,
            customer_id:,
            payment_id:,
            status:,
            recovered_payment_id: nil,
            payload_type: :AbandonedCheckout
          )
          end

          sig do
            override.returns(
              {
                abandoned_at: Time,
                abandonment_reason:
                  Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason::OrSymbol,
                brand_id: String,
                customer_id: String,
                payload_type: Symbol,
                payment_id: String,
                status:
                  Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::OrSymbol,
                recovered_payment_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module AbandonmentReason
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT_FAILED =
              T.let(
                :payment_failed,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason::TaggedSymbol
              )
            CHECKOUT_INCOMPLETE =
              T.let(
                :checkout_incomplete,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::AbandonedCheckout::AbandonmentReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ABANDONED =
              T.let(
                :abandoned,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::TaggedSymbol
              )
            RECOVERING =
              T.let(
                :recovering,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::TaggedSymbol
              )
            RECOVERED =
              T.let(
                :recovered,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::TaggedSymbol
              )
            EXHAUSTED =
              T.let(
                :exhausted,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::TaggedSymbol
              )
            OPTED_OUT =
              T.let(
                :opted_out,
                Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::AbandonedCheckout::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DunningAttempt < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::DunningAttempt,
                Dodopayments::Internal::AnyHash
              )
            end

          # Brand id this dunning attempt belongs to
          sig { returns(String) }
          attr_accessor :brand_id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(Symbol) }
          attr_accessor :payload_type

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::DunningAttempt::Status::OrSymbol
            )
          end
          attr_accessor :status

          sig { returns(String) }
          attr_accessor :subscription_id

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState::OrSymbol
            )
          end
          attr_accessor :trigger_state

          sig { returns(T.nilable(String)) }
          attr_accessor :payment_id

          sig do
            params(
              brand_id: String,
              created_at: Time,
              customer_id: String,
              status:
                Dodopayments::WebhookPayload::Data::DunningAttempt::Status::OrSymbol,
              subscription_id: String,
              trigger_state:
                Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState::OrSymbol,
              payment_id: T.nilable(String),
              payload_type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Brand id this dunning attempt belongs to
            brand_id:,
            created_at:,
            customer_id:,
            status:,
            subscription_id:,
            trigger_state:,
            payment_id: nil,
            payload_type: :DunningAttempt
          )
          end

          sig do
            override.returns(
              {
                brand_id: String,
                created_at: Time,
                customer_id: String,
                payload_type: Symbol,
                status:
                  Dodopayments::WebhookPayload::Data::DunningAttempt::Status::OrSymbol,
                subscription_id: String,
                trigger_state:
                  Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState::OrSymbol,
                payment_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module Status
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::DunningAttempt::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RECOVERING =
              T.let(
                :recovering,
                Dodopayments::WebhookPayload::Data::DunningAttempt::Status::TaggedSymbol
              )
            RECOVERED =
              T.let(
                :recovered,
                Dodopayments::WebhookPayload::Data::DunningAttempt::Status::TaggedSymbol
              )
            EXHAUSTED =
              T.let(
                :exhausted,
                Dodopayments::WebhookPayload::Data::DunningAttempt::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::DunningAttempt::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module TriggerState
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ON_HOLD =
              T.let(
                :on_hold,
                Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::DunningAttempt::TriggerState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class EntitlementGrant < Dodopayments::Models::Entitlements::EntitlementGrant
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::EntitlementGrant,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :payload_type

          # Detailed view of a single entitlement grant: who it's for, its lifecycle state,
          # and any integration-specific delivery payload.
          sig { params(payload_type: Symbol).returns(T.attached_class) }
          def self.new(payload_type: :EntitlementGrant)
          end

          sig { override.returns({ payload_type: Symbol }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[Dodopayments::WebhookPayload::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
