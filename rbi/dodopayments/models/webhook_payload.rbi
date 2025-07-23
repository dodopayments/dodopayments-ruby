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
              Dodopayments::WebhookPayload::Data::LicenseKey::OrHash
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
                Dodopayments::WebhookPayload::Data::LicenseKey
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
