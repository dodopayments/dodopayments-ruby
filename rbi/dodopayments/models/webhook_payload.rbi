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
            Dodopayments::WebhookPayload::Data::LicenseKey
          )
        )
      end
      attr_accessor :data

      # The timestamp of when the event occurred (not necessarily the same of when it
      # was delivered)
      sig { returns(Time) }
      attr_accessor :timestamp

      # Event types for Dodo events
      sig { returns(Dodopayments::WebhookPayload::Type::OrSymbol) }
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
              Dodopayments::WebhookPayload::Data::LicenseKey::OrHash
            ),
          timestamp: Time,
          type: Dodopayments::WebhookPayload::Type::OrSymbol
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
                Dodopayments::WebhookPayload::Data::LicenseKey
              ),
            timestamp: Time,
            type: Dodopayments::WebhookPayload::Type::OrSymbol
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
              Dodopayments::WebhookPayload::Data::LicenseKey
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

        class Dispute < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::WebhookPayload::Data::Dispute,
                Dodopayments::Internal::AnyHash
              )
            end

          # The amount involved in the dispute, represented as a string to accommodate
          # precision.
          sig { returns(String) }
          attr_accessor :amount

          # The unique identifier of the business involved in the dispute.
          sig { returns(String) }
          attr_accessor :business_id

          # The timestamp of when the dispute was created, in UTC.
          sig { returns(Time) }
          attr_accessor :created_at

          # The currency of the disputed amount, represented as an ISO 4217 currency code.
          sig { returns(String) }
          attr_accessor :currency

          # The customer who filed the dispute
          sig { returns(Dodopayments::CustomerLimitedDetails) }
          attr_reader :customer

          sig do
            params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
          end
          attr_writer :customer

          # The unique identifier of the dispute.
          sig { returns(String) }
          attr_accessor :dispute_id

          # The current stage of the dispute process.
          sig { returns(Dodopayments::DisputeStage::OrSymbol) }
          attr_accessor :dispute_stage

          # The current status of the dispute.
          sig { returns(Dodopayments::DisputeStatus::OrSymbol) }
          attr_accessor :dispute_status

          sig do
            returns(
              Dodopayments::WebhookPayload::Data::Dispute::PayloadType::OrSymbol
            )
          end
          attr_accessor :payload_type

          # The unique identifier of the payment associated with the dispute.
          sig { returns(String) }
          attr_accessor :payment_id

          # Reason for the dispute
          sig { returns(T.nilable(String)) }
          attr_accessor :reason

          # Remarks
          sig { returns(T.nilable(String)) }
          attr_accessor :remarks

          sig do
            params(
              amount: String,
              business_id: String,
              created_at: Time,
              currency: String,
              customer: Dodopayments::CustomerLimitedDetails::OrHash,
              dispute_id: String,
              dispute_stage: Dodopayments::DisputeStage::OrSymbol,
              dispute_status: Dodopayments::DisputeStatus::OrSymbol,
              payload_type:
                Dodopayments::WebhookPayload::Data::Dispute::PayloadType::OrSymbol,
              payment_id: String,
              reason: T.nilable(String),
              remarks: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # The amount involved in the dispute, represented as a string to accommodate
            # precision.
            amount:,
            # The unique identifier of the business involved in the dispute.
            business_id:,
            # The timestamp of when the dispute was created, in UTC.
            created_at:,
            # The currency of the disputed amount, represented as an ISO 4217 currency code.
            currency:,
            # The customer who filed the dispute
            customer:,
            # The unique identifier of the dispute.
            dispute_id:,
            # The current stage of the dispute process.
            dispute_stage:,
            # The current status of the dispute.
            dispute_status:,
            payload_type:,
            # The unique identifier of the payment associated with the dispute.
            payment_id:,
            # Reason for the dispute
            reason: nil,
            # Remarks
            remarks: nil
          )
          end

          sig do
            override.returns(
              {
                amount: String,
                business_id: String,
                created_at: Time,
                currency: String,
                customer: Dodopayments::CustomerLimitedDetails,
                dispute_id: String,
                dispute_stage: Dodopayments::DisputeStage::OrSymbol,
                dispute_status: Dodopayments::DisputeStatus::OrSymbol,
                payload_type:
                  Dodopayments::WebhookPayload::Data::Dispute::PayloadType::OrSymbol,
                payment_id: String,
                reason: T.nilable(String),
                remarks: T.nilable(String)
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

        sig do
          override.returns(
            T::Array[Dodopayments::WebhookPayload::Data::Variants]
          )
        end
        def self.variants
        end
      end

      # Event types for Dodo events
      module Type
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dodopayments::WebhookPayload::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PAYMENT_SUCCEEDED =
          T.let(
            :"payment.succeeded",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        PAYMENT_FAILED =
          T.let(
            :"payment.failed",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        PAYMENT_PROCESSING =
          T.let(
            :"payment.processing",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        PAYMENT_CANCELLED =
          T.let(
            :"payment.cancelled",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        REFUND_SUCCEEDED =
          T.let(
            :"refund.succeeded",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        REFUND_FAILED =
          T.let(
            :"refund.failed",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_OPENED =
          T.let(
            :"dispute.opened",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_EXPIRED =
          T.let(
            :"dispute.expired",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_ACCEPTED =
          T.let(
            :"dispute.accepted",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_CANCELLED =
          T.let(
            :"dispute.cancelled",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_CHALLENGED =
          T.let(
            :"dispute.challenged",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_WON =
          T.let(
            :"dispute.won",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        DISPUTE_LOST =
          T.let(
            :"dispute.lost",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_ACTIVE =
          T.let(
            :"subscription.active",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_RENEWED =
          T.let(
            :"subscription.renewed",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_ON_HOLD =
          T.let(
            :"subscription.on_hold",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_PAUSED =
          T.let(
            :"subscription.paused",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_CANCELLED =
          T.let(
            :"subscription.cancelled",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_FAILED =
          T.let(
            :"subscription.failed",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_EXPIRED =
          T.let(
            :"subscription.expired",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        SUBSCRIPTION_PLAN_CHANGED =
          T.let(
            :"subscription.plan_changed",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )
        LICENSE_KEY_CREATED =
          T.let(
            :"license_key.created",
            Dodopayments::WebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Dodopayments::WebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
