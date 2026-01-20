# typed: strong

module Dodopayments
  module Models
    module PaymentMethodTypes
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::PaymentMethodTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      CREDIT = T.let(:credit, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      DEBIT = T.let(:debit, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      UPI_COLLECT =
        T.let(:upi_collect, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      UPI_INTENT =
        T.let(:upi_intent, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      APPLE_PAY =
        T.let(:apple_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CASHAPP = T.let(:cashapp, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      GOOGLE_PAY =
        T.let(:google_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MULTIBANCO =
        T.let(:multibanco, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BANCONTACT_CARD =
        T.let(:bancontact_card, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      EPS = T.let(:eps, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      IDEAL = T.let(:ideal, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PRZELEWY24 =
        T.let(:przelewy24, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAYPAL = T.let(:paypal, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      AFFIRM = T.let(:affirm, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      KLARNA = T.let(:klarna, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SEPA = T.let(:sepa, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ACH = T.let(:ach, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      AMAZON_PAY =
        T.let(:amazon_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      AFTERPAY_CLEARPAY =
        T.let(
          :afterpay_clearpay,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Dodopayments::PaymentMethodTypes::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
