# typed: strong

module Dodopayments
  module Models
    class GetDispute < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::GetDispute, Dodopayments::Internal::AnyHash)
        end

      # The amount involved in the dispute, represented as a string to accommodate
      # precision.
      sig { returns(String) }
      attr_accessor :amount

      # Brand id this dispute belongs to
      sig { returns(String) }
      attr_accessor :brand_id

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
      sig { returns(Dodopayments::DisputeStage::TaggedSymbol) }
      attr_accessor :dispute_stage

      # The current status of the dispute.
      sig { returns(Dodopayments::DisputeStatus::TaggedSymbol) }
      attr_accessor :dispute_status

      # The unique identifier of the payment associated with the dispute.
      sig { returns(String) }
      attr_accessor :payment_id

      # Which processor handled the underlying payment. `stripe` / `adyen` for BYOP
      # routes (the merchant's own payment connector); `dodo` for everything Dodo
      # processed itself.
      sig { returns(Dodopayments::GetDispute::PaymentProvider::TaggedSymbol) }
      attr_accessor :payment_provider

      # Whether the dispute was resolved by Rapid Dispute Resolution
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_resolved_by_rdr

      # Reason for the dispute
      sig { returns(T.nilable(String)) }
      attr_accessor :reason

      # Remarks
      sig { returns(T.nilable(String)) }
      attr_accessor :remarks

      sig do
        params(
          amount: String,
          brand_id: String,
          business_id: String,
          created_at: Time,
          currency: String,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          dispute_id: String,
          dispute_stage: Dodopayments::DisputeStage::OrSymbol,
          dispute_status: Dodopayments::DisputeStatus::OrSymbol,
          payment_id: String,
          payment_provider: Dodopayments::GetDispute::PaymentProvider::OrSymbol,
          is_resolved_by_rdr: T.nilable(T::Boolean),
          reason: T.nilable(String),
          remarks: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # The amount involved in the dispute, represented as a string to accommodate
        # precision.
        amount:,
        # Brand id this dispute belongs to
        brand_id:,
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
        # The unique identifier of the payment associated with the dispute.
        payment_id:,
        # Which processor handled the underlying payment. `stripe` / `adyen` for BYOP
        # routes (the merchant's own payment connector); `dodo` for everything Dodo
        # processed itself.
        payment_provider:,
        # Whether the dispute was resolved by Rapid Dispute Resolution
        is_resolved_by_rdr: nil,
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
            brand_id: String,
            business_id: String,
            created_at: Time,
            currency: String,
            customer: Dodopayments::CustomerLimitedDetails,
            dispute_id: String,
            dispute_stage: Dodopayments::DisputeStage::TaggedSymbol,
            dispute_status: Dodopayments::DisputeStatus::TaggedSymbol,
            payment_id: String,
            payment_provider:
              Dodopayments::GetDispute::PaymentProvider::TaggedSymbol,
            is_resolved_by_rdr: T.nilable(T::Boolean),
            reason: T.nilable(String),
            remarks: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Which processor handled the underlying payment. `stripe` / `adyen` for BYOP
      # routes (the merchant's own payment connector); `dodo` for everything Dodo
      # processed itself.
      module PaymentProvider
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Dodopayments::GetDispute::PaymentProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE =
          T.let(
            :stripe,
            Dodopayments::GetDispute::PaymentProvider::TaggedSymbol
          )
        ADYEN =
          T.let(:adyen, Dodopayments::GetDispute::PaymentProvider::TaggedSymbol)
        DODO =
          T.let(:dodo, Dodopayments::GetDispute::PaymentProvider::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dodopayments::GetDispute::PaymentProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
