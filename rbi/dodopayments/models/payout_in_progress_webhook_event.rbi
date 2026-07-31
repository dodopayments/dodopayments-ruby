# typed: strong

module Dodopayments
  module Models
    class PayoutInProgressWebhookEvent < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::PayoutInProgressWebhookEvent,
            Dodopayments::Internal::AnyHash
          )
        end

      # The business identifier
      sig { returns(String) }
      attr_accessor :business_id

      sig { returns(Dodopayments::PayoutInProgressWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Dodopayments::PayoutInProgressWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # The timestamp of when the event occurred
      sig { returns(Time) }
      attr_accessor :timestamp

      # The event type
      sig { returns(Symbol) }
      attr_accessor :type

      sig do
        params(
          business_id: String,
          data: Dodopayments::PayoutInProgressWebhookEvent::Data::OrHash,
          timestamp: Time,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The business identifier
        business_id:,
        data:,
        # The timestamp of when the event occurred
        timestamp:,
        # The event type
        type: :"payout.in_progress"
      )
      end

      sig do
        override.returns(
          {
            business_id: String,
            data: Dodopayments::PayoutInProgressWebhookEvent::Data,
            timestamp: Time,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      class Data < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::PayoutInProgressWebhookEvent::Data,
              Dodopayments::Internal::AnyHash
            )
          end

        # The total amount of the payout.
        sig { returns(Integer) }
        attr_accessor :amount

        # The unique identifier of the business associated with the payout.
        sig { returns(String) }
        attr_accessor :business_id

        # The total value of chargebacks associated with the payout.
        sig { returns(Integer) }
        attr_accessor :chargebacks

        # The timestamp when the payout was created, in UTC.
        sig { returns(Time) }
        attr_accessor :created_at

        # The currency of the payout, represented as an ISO 4217 currency code.
        sig { returns(Dodopayments::Currency::TaggedSymbol) }
        attr_accessor :currency

        # The fee charged for processing the payout.
        sig { returns(Integer) }
        attr_accessor :fee

        # The payment method used for the payout (e.g., bank transfer, card, etc.).
        sig { returns(String) }
        attr_accessor :payment_method

        # The unique identifier of the payout.
        sig { returns(String) }
        attr_accessor :payout_id

        # The total value of refunds associated with the payout.
        sig { returns(Integer) }
        attr_accessor :refunds

        # The current status of the payout.
        sig do
          returns(
            Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        # The tax applied to the payout.
        sig { returns(Integer) }
        attr_accessor :tax

        # The timestamp when the payout was last updated, in UTC.
        sig { returns(Time) }
        attr_accessor :updated_at

        # The name of the payout recipient or purpose.
        sig { returns(T.nilable(String)) }
        attr_accessor :name

        # The URL of the document associated with the payout.
        sig { returns(T.nilable(String)) }
        attr_accessor :payout_document_url

        # Any additional remarks or notes associated with the payout.
        sig { returns(T.nilable(String)) }
        attr_accessor :remarks

        sig do
          params(
            amount: Integer,
            business_id: String,
            chargebacks: Integer,
            created_at: Time,
            currency: Dodopayments::Currency::OrSymbol,
            fee: Integer,
            payment_method: String,
            payout_id: String,
            refunds: Integer,
            status:
              Dodopayments::PayoutInProgressWebhookEvent::Data::Status::OrSymbol,
            tax: Integer,
            updated_at: Time,
            name: T.nilable(String),
            payout_document_url: T.nilable(String),
            remarks: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # The total amount of the payout.
          amount:,
          # The unique identifier of the business associated with the payout.
          business_id:,
          # The total value of chargebacks associated with the payout.
          chargebacks:,
          # The timestamp when the payout was created, in UTC.
          created_at:,
          # The currency of the payout, represented as an ISO 4217 currency code.
          currency:,
          # The fee charged for processing the payout.
          fee:,
          # The payment method used for the payout (e.g., bank transfer, card, etc.).
          payment_method:,
          # The unique identifier of the payout.
          payout_id:,
          # The total value of refunds associated with the payout.
          refunds:,
          # The current status of the payout.
          status:,
          # The tax applied to the payout.
          tax:,
          # The timestamp when the payout was last updated, in UTC.
          updated_at:,
          # The name of the payout recipient or purpose.
          name: nil,
          # The URL of the document associated with the payout.
          payout_document_url: nil,
          # Any additional remarks or notes associated with the payout.
          remarks: nil
        )
        end

        sig do
          override.returns(
            {
              amount: Integer,
              business_id: String,
              chargebacks: Integer,
              created_at: Time,
              currency: Dodopayments::Currency::TaggedSymbol,
              fee: Integer,
              payment_method: String,
              payout_id: String,
              refunds: Integer,
              status:
                Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol,
              tax: Integer,
              updated_at: Time,
              name: T.nilable(String),
              payout_document_url: T.nilable(String),
              remarks: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # The current status of the payout.
        module Status
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::PayoutInProgressWebhookEvent::Data::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NOT_INITIATED =
            T.let(
              :not_initiated,
              Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
            )
          ON_HOLD =
            T.let(
              :on_hold,
              Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::PayoutInProgressWebhookEvent::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
