# frozen_string_literal: true

module Dodopayments
  module Models
    module PaymentMethodTypes
      extend Dodopayments::Internal::Type::Enum

      CREDIT = :credit
      DEBIT = :debit
      UPI_COLLECT = :upi_collect
      UPI_INTENT = :upi_intent
      APPLE_PAY = :apple_pay
      CASHAPP = :cashapp
      GOOGLE_PAY = :google_pay
      MULTIBANCO = :multibanco
      BANCONTACT_CARD = :bancontact_card
      EPS = :eps
      IDEAL = :ideal
      PRZELEWY24 = :przelewy24
      AFFIRM = :affirm
      KLARNA = :klarna
      SEPA = :sepa
      ACH = :ach
      AMAZON_PAY = :amazon_pay
      AFTERPAY_CLEARPAY = :afterpay_clearpay

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
