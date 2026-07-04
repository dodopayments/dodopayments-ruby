# typed: strong

module Dodopayments
  module Models
    class PaymentListResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::PaymentListResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :brand_id

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Dodopayments::Currency::TaggedSymbol) }
      attr_accessor :currency

      sig { returns(Dodopayments::CustomerLimitedDetails) }
      attr_reader :customer

      sig do
        params(customer: Dodopayments::CustomerLimitedDetails::OrHash).void
      end
      attr_writer :customer

      sig { returns(T::Boolean) }
      attr_accessor :digital_products_delivered

      sig { returns(T::Boolean) }
      attr_accessor :has_license_key

      # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
      sig { returns(T::Hash[Symbol, Dodopayments::MetadataItem::Variants]) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :payment_id

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      sig do
        returns(
          Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
        )
      end
      attr_accessor :payment_provider

      sig { returns(Integer) }
      attr_accessor :total_amount

      # The last four digits of the card
      sig { returns(T.nilable(String)) }
      attr_accessor :card_last_four

      # Card network like VISA, MASTERCARD etc.
      sig { returns(T.nilable(String)) }
      attr_accessor :card_network

      # The most recent dispute status for this payment. None if no disputes exist.
      sig { returns(T.nilable(Dodopayments::DisputeStatus::TaggedSymbol)) }
      attr_accessor :dispute_status

      # Invoice ID for this payment. Uses India-specific invoice ID if available.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_id

      # URL to download the invoice PDF for this payment.
      sig { returns(T.nilable(String)) }
      attr_accessor :invoice_url

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method

      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_type

      # Summary of the refund status for this payment. None if no succeeded refunds
      # exist.
      sig do
        returns(T.nilable(Dodopayments::PaymentRefundStatus::TaggedSymbol))
      end
      attr_accessor :refund_status

      sig { returns(T.nilable(Dodopayments::IntentStatus::TaggedSymbol)) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subscription_id

      sig do
        params(
          brand_id: String,
          created_at: Time,
          currency: Dodopayments::Currency::OrSymbol,
          customer: Dodopayments::CustomerLimitedDetails::OrHash,
          digital_products_delivered: T::Boolean,
          has_license_key: T::Boolean,
          metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
          payment_id: String,
          payment_provider:
            Dodopayments::Models::PaymentListResponse::PaymentProvider::OrSymbol,
          total_amount: Integer,
          card_last_four: T.nilable(String),
          card_network: T.nilable(String),
          dispute_status: T.nilable(Dodopayments::DisputeStatus::OrSymbol),
          invoice_id: T.nilable(String),
          invoice_url: T.nilable(String),
          payment_method: T.nilable(String),
          payment_method_type: T.nilable(String),
          refund_status: T.nilable(Dodopayments::PaymentRefundStatus::OrSymbol),
          status: T.nilable(Dodopayments::IntentStatus::OrSymbol),
          subscription_id: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        brand_id:,
        created_at:,
        currency:,
        customer:,
        digital_products_delivered:,
        has_license_key:,
        # Arbitrary key-value metadata. Values can be string, integer, number, or boolean.
        metadata:,
        payment_id:,
        # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
        # merchant's own payment connector); `dodo` for everything Dodo processed itself.
        payment_provider:,
        total_amount:,
        # The last four digits of the card
        card_last_four: nil,
        # Card network like VISA, MASTERCARD etc.
        card_network: nil,
        # The most recent dispute status for this payment. None if no disputes exist.
        dispute_status: nil,
        # Invoice ID for this payment. Uses India-specific invoice ID if available.
        invoice_id: nil,
        # URL to download the invoice PDF for this payment.
        invoice_url: nil,
        payment_method: nil,
        payment_method_type: nil,
        # Summary of the refund status for this payment. None if no succeeded refunds
        # exist.
        refund_status: nil,
        status: nil,
        subscription_id: nil
      )
      end

      sig do
        override.returns(
          {
            brand_id: String,
            created_at: Time,
            currency: Dodopayments::Currency::TaggedSymbol,
            customer: Dodopayments::CustomerLimitedDetails,
            digital_products_delivered: T::Boolean,
            has_license_key: T::Boolean,
            metadata: T::Hash[Symbol, Dodopayments::MetadataItem::Variants],
            payment_id: String,
            payment_provider:
              Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol,
            total_amount: Integer,
            card_last_four: T.nilable(String),
            card_network: T.nilable(String),
            dispute_status:
              T.nilable(Dodopayments::DisputeStatus::TaggedSymbol),
            invoice_id: T.nilable(String),
            invoice_url: T.nilable(String),
            payment_method: T.nilable(String),
            payment_method_type: T.nilable(String),
            refund_status:
              T.nilable(Dodopayments::PaymentRefundStatus::TaggedSymbol),
            status: T.nilable(Dodopayments::IntentStatus::TaggedSymbol),
            subscription_id: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      # Which processor handled this payment. `stripe` / `adyen` for BYOP routes (the
      # merchant's own payment connector); `dodo` for everything Dodo processed itself.
      module PaymentProvider
        extend Dodopayments::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Dodopayments::Models::PaymentListResponse::PaymentProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STRIPE =
          T.let(
            :stripe,
            Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
          )
        ADYEN =
          T.let(
            :adyen,
            Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
          )
        DODO =
          T.let(
            :dodo,
            Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::Models::PaymentListResponse::PaymentProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
