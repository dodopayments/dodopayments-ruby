# typed: strong

module Dodopayments
  module Models
    class DisputeListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::DisputeListResponse,
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
      # routes (the merchant's own Hyperswitch connector); `dodo` for everything Dodo
      # processed itself.
      sig do
        returns(
          Dodopayments::Models::DisputeListResponse::PaymentProvider::TaggedSymbol
        )
      end
      attr_accessor :payment_provider

      # Whether the dispute was resolved by Rapid Dispute Resolution
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_resolved_by_rdr

      sig do
        params(
          amount: String,
          business_id: String,
          created_at: Time,
          currency: String,
          dispute_id: String,
          dispute_stage: Dodopayments::DisputeStage::OrSymbol,
          dispute_status: Dodopayments::DisputeStatus::OrSymbol,
          payment_id: String,
          payment_provider:
            Dodopayments::Models::DisputeListResponse::PaymentProvider::OrSymbol,
          is_resolved_by_rdr: T.nilable(T::Boolean)
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
        # The unique identifier of the dispute.
        dispute_id:,
        # The current stage of the dispute process.
        dispute_stage:,
        # The current status of the dispute.
        dispute_status:,
        # The unique identifier of the payment associated with the dispute.
        payment_id:,
        # Which processor handled the underlying payment. `stripe` / `adyen` for BYOP
        # routes (the merchant's own Hyperswitch connector); `dodo` for everything Dodo
        # processed itself.
        payment_provider:,
        # Whether the dispute was resolved by Rapid Dispute Resolution
        is_resolved_by_rdr: nil
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            business_id: String,
            created_at: Time,
            currency: String,
            dispute_id: String,
            dispute_stage: Dodopayments::DisputeStage::TaggedSymbol,
            dispute_status: Dodopayments::DisputeStatus::TaggedSymbol,
            payment_id: String,
            payment_provider:
              Dodopayments::Models::DisputeListResponse::PaymentProvider::TaggedSymbol,
            is_resolved_by_rdr: T.nilable(T::Boolean)
          }
        )
      end
      def to_hash
      end

      # Which processor handled the underlying payment. `stripe` / `adyen` for BYOP
      # routes (the merchant's own Hyperswitch connector); `dodo` for everything Dodo
      # processed itself.
      module PaymentProvider
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::Models::DisputeListResponse::PaymentProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE =
          T.let(
            :stripe,
            Dodopayments::Models::DisputeListResponse::PaymentProvider::TaggedSymbol
          )
        ADYEN =
          T.let(
            :adyen,
            Dodopayments::Models::DisputeListResponse::PaymentProvider::TaggedSymbol
          )
        DODO =
          T.let(
            :dodo,
            Dodopayments::Models::DisputeListResponse::PaymentProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::Models::DisputeListResponse::PaymentProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
