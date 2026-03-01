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

        class CreditLedgerEntry < Dodopayments::Models::CreditEntitlements::CreditLedgerEntry
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry,
                Dodopayments::Internal::AnyHash
              )
            end

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          # Response for a ledger entry
          sig do
            params(
              payload_type:
                Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payload_type:)
          end

          sig do
            override.returns(
              {
                payload_type:
                  Dodopayments::WebhookPayload::Data::CreditLedgerEntry::PayloadType::OrSymbol
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
