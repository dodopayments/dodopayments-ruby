# typed: strong

module Dodopayments
  module Models
    module PaymentMethodTypes
      extend Dodopayments::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Dodopayments::PaymentMethodTypes) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH = T.let(:ach, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      AFFIRM = T.let(:affirm, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      AFTERPAY_CLEARPAY =
        T.let(
          :afterpay_clearpay,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      ALFAMART =
        T.let(:alfamart, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ALI_PAY = T.let(:ali_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ALI_PAY_HK =
        T.let(:ali_pay_hk, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ALMA = T.let(:alma, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      AMAZON_PAY =
        T.let(:amazon_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      APPLE_PAY =
        T.let(:apple_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ATOME = T.let(:atome, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BACS = T.let(:bacs, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BANCONTACT_CARD =
        T.let(:bancontact_card, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BECS = T.let(:becs, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BENEFIT = T.let(:benefit, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BIZUM = T.let(:bizum, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BLIK = T.let(:blik, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BOLETO = T.let(:boleto, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BCA_BANK_TRANSFER =
        T.let(
          :bca_bank_transfer,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      BNI_VA = T.let(:bni_va, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      BRI_VA = T.let(:bri_va, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CARD_REDIRECT =
        T.let(:card_redirect, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CIMB_VA = T.let(:cimb_va, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CLASSIC = T.let(:classic, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CREDIT = T.let(:credit, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CRYPTO_CURRENCY =
        T.let(:crypto_currency, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      CASHAPP = T.let(:cashapp, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      DANA = T.let(:dana, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      DANAMON_VA =
        T.let(:danamon_va, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      DEBIT = T.let(:debit, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      DUIT_NOW =
        T.let(:duit_now, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      EFECTY = T.let(:efecty, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      EFT = T.let(:eft, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      EPS = T.let(:eps, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      FPS = T.let(:fps, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      EVOUCHER =
        T.let(:evoucher, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      GIROPAY = T.let(:giropay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      GIVEX = T.let(:givex, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      GOOGLE_PAY =
        T.let(:google_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      GO_PAY = T.let(:go_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      GCASH = T.let(:gcash, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      IDEAL = T.let(:ideal, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      INTERAC = T.let(:interac, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      INDOMARET =
        T.let(:indomaret, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      KLARNA = T.let(:klarna, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      KAKAO_PAY =
        T.let(:kakao_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      LOCAL_BANK_REDIRECT =
        T.let(
          :local_bank_redirect,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      MANDIRI_VA =
        T.let(:mandiri_va, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      KNET = T.let(:knet, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MB_WAY = T.let(:mb_way, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MOBILE_PAY =
        T.let(:mobile_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MOMO = T.let(:momo, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MOMO_ATM =
        T.let(:momo_atm, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MULTIBANCO =
        T.let(:multibanco, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ONLINE_BANKING_THAILAND =
        T.let(
          :online_banking_thailand,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      ONLINE_BANKING_CZECH_REPUBLIC =
        T.let(
          :online_banking_czech_republic,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      ONLINE_BANKING_FINLAND =
        T.let(
          :online_banking_finland,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      ONLINE_BANKING_FPX =
        T.let(
          :online_banking_fpx,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      ONLINE_BANKING_POLAND =
        T.let(
          :online_banking_poland,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      ONLINE_BANKING_SLOVAKIA =
        T.let(
          :online_banking_slovakia,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      OXXO = T.let(:oxxo, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAGO_EFECTIVO =
        T.let(:pago_efectivo, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PERMATA_BANK_TRANSFER =
        T.let(
          :permata_bank_transfer,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      OPEN_BANKING_UK =
        T.let(:open_banking_uk, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAY_BRIGHT =
        T.let(:pay_bright, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAYPAL = T.let(:paypal, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAZE = T.let(:paze, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PIX = T.let(:pix, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAY_SAFE_CARD =
        T.let(:pay_safe_card, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PRZELEWY24 =
        T.let(:przelewy24, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PROMPT_PAY =
        T.let(:prompt_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PSE = T.let(:pse, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      RED_COMPRA =
        T.let(:red_compra, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      RED_PAGOS =
        T.let(:red_pagos, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SAMSUNG_PAY =
        T.let(:samsung_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SEPA = T.let(:sepa, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SEPA_BANK_TRANSFER =
        T.let(
          :sepa_bank_transfer,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      SOFORT = T.let(:sofort, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SWISH = T.let(:swish, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      TOUCH_N_GO =
        T.let(:touch_n_go, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      TRUSTLY = T.let(:trustly, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      TWINT = T.let(:twint, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      UPI_COLLECT =
        T.let(:upi_collect, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      UPI_INTENT =
        T.let(:upi_intent, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      VIPPS = T.let(:vipps, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      VIET_QR = T.let(:viet_qr, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      VENMO = T.let(:venmo, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      WALLEY = T.let(:walley, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      WE_CHAT_PAY =
        T.let(:we_chat_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SEVEN_ELEVEN =
        T.let(:seven_eleven, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      LAWSON = T.let(:lawson, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      MINI_STOP =
        T.let(:mini_stop, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      FAMILY_MART =
        T.let(:family_mart, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      SEICOMART =
        T.let(:seicomart, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAY_EASY =
        T.let(:pay_easy, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      LOCAL_BANK_TRANSFER =
        T.let(
          :local_bank_transfer,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      MIFINITY =
        T.let(:mifinity, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      OPEN_BANKING_PIS =
        T.let(:open_banking_pis, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      DIRECT_CARRIER_BILLING =
        T.let(
          :direct_carrier_billing,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      INSTANT_BANK_TRANSFER =
        T.let(
          :instant_bank_transfer,
          Dodopayments::PaymentMethodTypes::TaggedSymbol
        )
      BILLIE = T.let(:billie, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      ZIP = T.let(:zip, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      REVOLUT_PAY =
        T.let(:revolut_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      NAVER_PAY =
        T.let(:naver_pay, Dodopayments::PaymentMethodTypes::TaggedSymbol)
      PAYCO = T.let(:payco, Dodopayments::PaymentMethodTypes::TaggedSymbol)

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
