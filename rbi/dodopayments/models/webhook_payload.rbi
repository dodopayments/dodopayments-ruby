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
            Dodopayments::WebhookPayload::Data::CreditBalanceLow
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
              Dodopayments::WebhookPayload::Data::CreditBalanceLow::OrHash
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
                Dodopayments::WebhookPayload::Data::CreditBalanceLow
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
              Dodopayments::WebhookPayload::Data::CreditBalanceLow
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

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::Payment::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          sig do
            params(
              payload_type:
                Dodopayments::WebhookPayload::Data::Payment::PayloadType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payload_type:)
          end

          sig do
            override.returns(
              {
                payload_type:
                  Dodopayments::WebhookPayload::Data::Payment::PayloadType::OrSymbol
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::Payment::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PAYMENT =
              T.let(
                :Payment,
                Dodopayments::WebhookPayload::Data::Payment::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::Payment::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::Subscription::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          # Response struct representing subscription details
          sig do
            params(
              payload_type:
                Dodopayments::WebhookPayload::Data::Subscription::PayloadType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payload_type:)
          end

          sig do
            override.returns(
              {
                payload_type:
                  Dodopayments::WebhookPayload::Data::Subscription::PayloadType::OrSymbol
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::Subscription::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUBSCRIPTION =
              T.let(
                :Subscription,
                Dodopayments::WebhookPayload::Data::Subscription::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::Subscription::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::Refund::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          sig do
            params(
              payload_type:
                Dodopayments::WebhookPayload::Data::Refund::PayloadType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payload_type:)
          end

          sig do
            override.returns(
              {
                payload_type:
                  Dodopayments::WebhookPayload::Data::Refund::PayloadType::OrSymbol
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::Refund::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REFUND =
              T.let(
                :Refund,
                Dodopayments::WebhookPayload::Data::Refund::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::Refund::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::Dispute::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          sig do
            params(
              payload_type:
                Dodopayments::WebhookPayload::Data::Dispute::PayloadType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payload_type:)
          end

          sig do
            override.returns(
              {
                payload_type:
                  Dodopayments::WebhookPayload::Data::Dispute::PayloadType::OrSymbol
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::Dispute::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DISPUTE =
              T.let(
                :Dispute,
                Dodopayments::WebhookPayload::Data::Dispute::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::Dispute::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          sig do
            params(
              payload_type:
                Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payload_type:)
          end

          sig do
            override.returns(
              {
                payload_type:
                  Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType::OrSymbol
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            LICENSE_KEY =
              T.let(
                :LicenseKey,
                Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::LicenseKey::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class CreditLedgerEntry < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(String) }
          attr_accessor :amount

          sig { returns(String) }
          attr_accessor :balance_after

          sig { returns(String) }
          attr_accessor :balance_before

          sig { returns(String) }
          attr_accessor :business_id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(String) }
          attr_accessor :credit_entitlement_id

          sig { returns(String) }
          attr_accessor :customer_id

          sig { returns(T::Boolean) }
          attr_accessor :is_credit

          sig { returns(String) }
          attr_accessor :overage_after

          sig { returns(String) }
          attr_accessor :overage_before

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::OrSymbol
            )
          end
          attr_accessor :transaction_type

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T.nilable(String)) }
          attr_accessor :grant_id

          sig { returns(T.nilable(String)) }
          attr_accessor :reference_id

          sig { returns(T.nilable(String)) }
          attr_accessor :reference_type

          sig do
            params(
              id: String,
              amount: String,
              balance_after: String,
              balance_before: String,
              business_id: String,
              created_at: Time,
              credit_entitlement_id: String,
              customer_id: String,
              is_credit: T::Boolean,
              overage_after: String,
              overage_before: String,
              payload_type:
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::OrSymbol,
              transaction_type:
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::OrSymbol,
              description: T.nilable(String),
              grant_id: T.nilable(String),
              reference_id: T.nilable(String),
              reference_type: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            amount:,
            balance_after:,
            balance_before:,
            business_id:,
            created_at:,
            credit_entitlement_id:,
            customer_id:,
            is_credit:,
            overage_after:,
            overage_before:,
            payload_type:,
            transaction_type:,
            description: nil,
            grant_id: nil,
            reference_id: nil,
            reference_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                amount: String,
                balance_after: String,
                balance_before: String,
                business_id: String,
                created_at: Time,
                credit_entitlement_id: String,
                customer_id: String,
                is_credit: T::Boolean,
                overage_after: String,
                overage_before: String,
                payload_type:
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::OrSymbol,
                transaction_type:
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::OrSymbol,
                description: T.nilable(String),
                grant_id: T.nilable(String),
                reference_id: T.nilable(String),
                reference_type: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_LEDGER_ENTRY =
              T.let(
                :CreditLedgerEntry,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module TransactionType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_ADDED =
              T.let(
                :credit_added,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            CREDIT_DEDUCTED =
              T.let(
                :credit_deducted,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            CREDIT_EXPIRED =
              T.let(
                :credit_expired,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            CREDIT_ROLLED_OVER =
              T.let(
                :credit_rolled_over,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            ROLLOVER_FORFEITED =
              T.let(
                :rollover_forfeited,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            OVERAGE_CHARGED =
              T.let(
                :overage_charged,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            AUTO_TOP_UP =
              T.let(
                :auto_top_up,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            MANUAL_ADJUSTMENT =
              T.let(
                :manual_adjustment,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )
            REFUND =
              T.let(
                :refund,
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::TransactionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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

          sig { returns(String) }
          attr_accessor :credit_entitlement_id

          sig { returns(String) }
          attr_accessor :credit_entitlement_name

          sig { returns(String) }
          attr_accessor :customer_id

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType::OrSymbol
            )
          end
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
              credit_entitlement_id: String,
              credit_entitlement_name: String,
              customer_id: String,
              payload_type:
                Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType::OrSymbol,
              subscription_credits_amount: String,
              subscription_id: String,
              threshold_amount: String,
              threshold_percent: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            available_balance:,
            credit_entitlement_id:,
            credit_entitlement_name:,
            customer_id:,
            payload_type:,
            subscription_credits_amount:,
            subscription_id:,
            threshold_amount:,
            threshold_percent:
          )
          end

          sig do
            override.returns(
              {
                available_balance: String,
                credit_entitlement_id: String,
                credit_entitlement_name: String,
                customer_id: String,
                payload_type:
                  Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType::OrSymbol,
                subscription_credits_amount: String,
                subscription_id: String,
                threshold_amount: String,
                threshold_percent: Integer
              }
            )
          end
          def to_hash
          end

          module PayloadType
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CREDIT_BALANCE_LOW =
              T.let(
                :CreditBalanceLow,
                Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::WebhookPayload::Data::CreditBalanceLow::PayloadType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
