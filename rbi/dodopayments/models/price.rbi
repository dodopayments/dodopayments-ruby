# typed: strong

module Dodopayments
  module Models
    module Price
      extend Dodopayments::Internal::Type::Union

      class OneTimePrice < Dodopayments::Internal::Type::BaseModel
        sig { returns(Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Float) }
        attr_accessor :discount

        # The payment amount, in the smallest denomination of the currency (e.g., cents
        # for USD). For example, to charge $1.00, pass `100`.
        #
        # If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
        # represents the **minimum** amount the customer must pay.
        sig { returns(Integer) }
        attr_accessor :price

        # Indicates if purchasing power parity adjustments are applied to the price.
        # Purchasing power parity feature is not available as of now.
        sig { returns(T::Boolean) }
        attr_accessor :purchasing_power_parity

        sig { returns(Symbol) }
        attr_accessor :type

        # Indicates whether the customer can pay any amount they choose. If set to `true`,
        # the [`price`](Self::price) field is the minimum amount.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :pay_what_you_want

        sig { params(pay_what_you_want: T::Boolean).void }
        attr_writer :pay_what_you_want

        # A suggested price for the user to pay. This value is only considered if
        # [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
        # ignored.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :suggested_price

        # Indicates if the price is tax inclusive.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        sig do
          params(
            currency: Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol,
            discount: Float,
            price: Integer,
            purchasing_power_parity: T::Boolean,
            pay_what_you_want: T::Boolean,
            suggested_price: T.nilable(Integer),
            tax_inclusive: T.nilable(T::Boolean),
            type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          currency:,
          # Discount applied to the price, represented as a percentage (0 to 100).
          discount:,
          # The payment amount, in the smallest denomination of the currency (e.g., cents
          # for USD). For example, to charge $1.00, pass `100`.
          #
          # If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
          # represents the **minimum** amount the customer must pay.
          price:,
          # Indicates if purchasing power parity adjustments are applied to the price.
          # Purchasing power parity feature is not available as of now.
          purchasing_power_parity:,
          # Indicates whether the customer can pay any amount they choose. If set to `true`,
          # the [`price`](Self::price) field is the minimum amount.
          pay_what_you_want: nil,
          # A suggested price for the user to pay. This value is only considered if
          # [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
          # ignored.
          suggested_price: nil,
          # Indicates if the price is tax inclusive.
          tax_inclusive: nil,
          type: :one_time_price
        ); end
        sig do
          override
            .returns(
              {
                currency: Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol,
                discount: Float,
                price: Integer,
                purchasing_power_parity: T::Boolean,
                type: Symbol,
                pay_what_you_want: T::Boolean,
                suggested_price: T.nilable(Integer),
                tax_inclusive: T.nilable(T::Boolean)
              }
            )
        end
        def to_hash; end

        module Currency
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Price::OneTimePrice::Currency) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED = T.let(:AED, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ALL = T.let(:ALL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          AMD = T.let(:AMD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ANG = T.let(:ANG, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          AOA = T.let(:AOA, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ARS = T.let(:ARS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          AUD = T.let(:AUD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          AWG = T.let(:AWG, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          AZN = T.let(:AZN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BAM = T.let(:BAM, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BBD = T.let(:BBD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BDT = T.let(:BDT, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BGN = T.let(:BGN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BHD = T.let(:BHD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BIF = T.let(:BIF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BMD = T.let(:BMD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BND = T.let(:BND, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BOB = T.let(:BOB, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BRL = T.let(:BRL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BSD = T.let(:BSD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BWP = T.let(:BWP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BYN = T.let(:BYN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          BZD = T.let(:BZD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CAD = T.let(:CAD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CHF = T.let(:CHF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CLP = T.let(:CLP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CNY = T.let(:CNY, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          COP = T.let(:COP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CRC = T.let(:CRC, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CUP = T.let(:CUP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CVE = T.let(:CVE, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          CZK = T.let(:CZK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          DJF = T.let(:DJF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          DKK = T.let(:DKK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          DOP = T.let(:DOP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          DZD = T.let(:DZD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          EGP = T.let(:EGP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ETB = T.let(:ETB, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          EUR = T.let(:EUR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          FJD = T.let(:FJD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          FKP = T.let(:FKP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GBP = T.let(:GBP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GEL = T.let(:GEL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GHS = T.let(:GHS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GIP = T.let(:GIP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GMD = T.let(:GMD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GNF = T.let(:GNF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GTQ = T.let(:GTQ, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          GYD = T.let(:GYD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          HKD = T.let(:HKD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          HNL = T.let(:HNL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          HRK = T.let(:HRK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          HTG = T.let(:HTG, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          HUF = T.let(:HUF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          IDR = T.let(:IDR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ILS = T.let(:ILS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          INR = T.let(:INR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          IQD = T.let(:IQD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          JMD = T.let(:JMD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          JOD = T.let(:JOD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          JPY = T.let(:JPY, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KES = T.let(:KES, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KGS = T.let(:KGS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KHR = T.let(:KHR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KMF = T.let(:KMF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KRW = T.let(:KRW, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KWD = T.let(:KWD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KYD = T.let(:KYD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          KZT = T.let(:KZT, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          LAK = T.let(:LAK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          LBP = T.let(:LBP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          LKR = T.let(:LKR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          LRD = T.let(:LRD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          LSL = T.let(:LSL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          LYD = T.let(:LYD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MAD = T.let(:MAD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MDL = T.let(:MDL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MGA = T.let(:MGA, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MKD = T.let(:MKD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MMK = T.let(:MMK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MNT = T.let(:MNT, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MOP = T.let(:MOP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MRU = T.let(:MRU, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MUR = T.let(:MUR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MVR = T.let(:MVR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MWK = T.let(:MWK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MXN = T.let(:MXN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MYR = T.let(:MYR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          MZN = T.let(:MZN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          NAD = T.let(:NAD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          NGN = T.let(:NGN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          NIO = T.let(:NIO, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          NOK = T.let(:NOK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          NPR = T.let(:NPR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          NZD = T.let(:NZD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          OMR = T.let(:OMR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PAB = T.let(:PAB, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PEN = T.let(:PEN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PGK = T.let(:PGK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PHP = T.let(:PHP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PKR = T.let(:PKR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PLN = T.let(:PLN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          PYG = T.let(:PYG, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          QAR = T.let(:QAR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          RON = T.let(:RON, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          RSD = T.let(:RSD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          RUB = T.let(:RUB, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          RWF = T.let(:RWF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SAR = T.let(:SAR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SBD = T.let(:SBD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SCR = T.let(:SCR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SEK = T.let(:SEK, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SGD = T.let(:SGD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SHP = T.let(:SHP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SLE = T.let(:SLE, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SLL = T.let(:SLL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SOS = T.let(:SOS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SRD = T.let(:SRD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SSP = T.let(:SSP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          STN = T.let(:STN, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SVC = T.let(:SVC, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          SZL = T.let(:SZL, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          THB = T.let(:THB, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          TND = T.let(:TND, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          TOP = T.let(:TOP, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          TRY = T.let(:TRY, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          TTD = T.let(:TTD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          TWD = T.let(:TWD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          TZS = T.let(:TZS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          UAH = T.let(:UAH, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          UGX = T.let(:UGX, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          USD = T.let(:USD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          UYU = T.let(:UYU, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          UZS = T.let(:UZS, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          VES = T.let(:VES, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          VND = T.let(:VND, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          VUV = T.let(:VUV, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          WST = T.let(:WST, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          XAF = T.let(:XAF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          XCD = T.let(:XCD, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          XOF = T.let(:XOF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          XPF = T.let(:XPF, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          YER = T.let(:YER, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ZAR = T.let(:ZAR, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)
          ZMW = T.let(:ZMW, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol)

          sig { override.returns(T::Array[Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol]) }
          def self.values; end
        end
      end

      class RecurringPrice < Dodopayments::Internal::Type::BaseModel
        sig { returns(Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol) }
        attr_accessor :currency

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Float) }
        attr_accessor :discount

        # Number of units for the payment frequency. For example, a value of `1` with a
        # `payment_frequency_interval` of `month` represents monthly payments.
        sig { returns(Integer) }
        attr_accessor :payment_frequency_count

        sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
        attr_accessor :payment_frequency_interval

        # The payment amount. Represented in the lowest denomination of the currency
        # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(Integer) }
        attr_accessor :price

        # Indicates if purchasing power parity adjustments are applied to the price.
        # Purchasing power parity feature is not available as of now
        sig { returns(T::Boolean) }
        attr_accessor :purchasing_power_parity

        # Number of units for the subscription period. For example, a value of `12` with a
        # `subscription_period_interval` of `month` represents a one-year subscription.
        sig { returns(Integer) }
        attr_accessor :subscription_period_count

        sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
        attr_accessor :subscription_period_interval

        sig { returns(Symbol) }
        attr_accessor :type

        # Indicates if the price is tax inclusive
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :tax_inclusive

        # Number of days for the trial period. A value of `0` indicates no trial period.
        sig { returns(T.nilable(Integer)) }
        attr_reader :trial_period_days

        sig { params(trial_period_days: Integer).void }
        attr_writer :trial_period_days

        sig do
          params(
            currency: Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol,
            discount: Float,
            payment_frequency_count: Integer,
            payment_frequency_interval: Dodopayments::Models::TimeInterval::OrSymbol,
            price: Integer,
            purchasing_power_parity: T::Boolean,
            subscription_period_count: Integer,
            subscription_period_interval: Dodopayments::Models::TimeInterval::OrSymbol,
            tax_inclusive: T.nilable(T::Boolean),
            trial_period_days: Integer,
            type: Symbol
          )
            .returns(T.attached_class)
        end
        def self.new(
          currency:,
          # Discount applied to the price, represented as a percentage (0 to 100).
          discount:,
          # Number of units for the payment frequency. For example, a value of `1` with a
          # `payment_frequency_interval` of `month` represents monthly payments.
          payment_frequency_count:,
          payment_frequency_interval:,
          # The payment amount. Represented in the lowest denomination of the currency
          # (e.g., cents for USD). For example, to charge $1.00, pass `100`.
          price:,
          # Indicates if purchasing power parity adjustments are applied to the price.
          # Purchasing power parity feature is not available as of now
          purchasing_power_parity:,
          # Number of units for the subscription period. For example, a value of `12` with a
          # `subscription_period_interval` of `month` represents a one-year subscription.
          subscription_period_count:,
          subscription_period_interval:,
          # Indicates if the price is tax inclusive
          tax_inclusive: nil,
          # Number of days for the trial period. A value of `0` indicates no trial period.
          trial_period_days: nil,
          type: :recurring_price
        ); end
        sig do
          override
            .returns(
              {
                currency: Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol,
                discount: Float,
                payment_frequency_count: Integer,
                payment_frequency_interval: Dodopayments::Models::TimeInterval::OrSymbol,
                price: Integer,
                purchasing_power_parity: T::Boolean,
                subscription_period_count: Integer,
                subscription_period_interval: Dodopayments::Models::TimeInterval::OrSymbol,
                type: Symbol,
                tax_inclusive: T.nilable(T::Boolean),
                trial_period_days: Integer
              }
            )
        end
        def to_hash; end

        module Currency
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Price::RecurringPrice::Currency) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AED = T.let(:AED, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ALL = T.let(:ALL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          AMD = T.let(:AMD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ANG = T.let(:ANG, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          AOA = T.let(:AOA, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ARS = T.let(:ARS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          AUD = T.let(:AUD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          AWG = T.let(:AWG, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          AZN = T.let(:AZN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BAM = T.let(:BAM, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BBD = T.let(:BBD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BDT = T.let(:BDT, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BGN = T.let(:BGN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BHD = T.let(:BHD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BIF = T.let(:BIF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BMD = T.let(:BMD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BND = T.let(:BND, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BOB = T.let(:BOB, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BRL = T.let(:BRL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BSD = T.let(:BSD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BWP = T.let(:BWP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BYN = T.let(:BYN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          BZD = T.let(:BZD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CAD = T.let(:CAD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CHF = T.let(:CHF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CLP = T.let(:CLP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CNY = T.let(:CNY, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          COP = T.let(:COP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CRC = T.let(:CRC, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CUP = T.let(:CUP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CVE = T.let(:CVE, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          CZK = T.let(:CZK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          DJF = T.let(:DJF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          DKK = T.let(:DKK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          DOP = T.let(:DOP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          DZD = T.let(:DZD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          EGP = T.let(:EGP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ETB = T.let(:ETB, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          EUR = T.let(:EUR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          FJD = T.let(:FJD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          FKP = T.let(:FKP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GBP = T.let(:GBP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GEL = T.let(:GEL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GHS = T.let(:GHS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GIP = T.let(:GIP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GMD = T.let(:GMD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GNF = T.let(:GNF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GTQ = T.let(:GTQ, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          GYD = T.let(:GYD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          HKD = T.let(:HKD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          HNL = T.let(:HNL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          HRK = T.let(:HRK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          HTG = T.let(:HTG, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          HUF = T.let(:HUF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          IDR = T.let(:IDR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ILS = T.let(:ILS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          INR = T.let(:INR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          IQD = T.let(:IQD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          JMD = T.let(:JMD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          JOD = T.let(:JOD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          JPY = T.let(:JPY, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KES = T.let(:KES, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KGS = T.let(:KGS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KHR = T.let(:KHR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KMF = T.let(:KMF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KRW = T.let(:KRW, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KWD = T.let(:KWD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KYD = T.let(:KYD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          KZT = T.let(:KZT, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          LAK = T.let(:LAK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          LBP = T.let(:LBP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          LKR = T.let(:LKR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          LRD = T.let(:LRD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          LSL = T.let(:LSL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          LYD = T.let(:LYD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MAD = T.let(:MAD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MDL = T.let(:MDL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MGA = T.let(:MGA, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MKD = T.let(:MKD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MMK = T.let(:MMK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MNT = T.let(:MNT, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MOP = T.let(:MOP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MRU = T.let(:MRU, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MUR = T.let(:MUR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MVR = T.let(:MVR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MWK = T.let(:MWK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MXN = T.let(:MXN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MYR = T.let(:MYR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          MZN = T.let(:MZN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          NAD = T.let(:NAD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          NGN = T.let(:NGN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          NIO = T.let(:NIO, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          NOK = T.let(:NOK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          NPR = T.let(:NPR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          NZD = T.let(:NZD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          OMR = T.let(:OMR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PAB = T.let(:PAB, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PEN = T.let(:PEN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PGK = T.let(:PGK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PHP = T.let(:PHP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PKR = T.let(:PKR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PLN = T.let(:PLN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          PYG = T.let(:PYG, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          QAR = T.let(:QAR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          RON = T.let(:RON, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          RSD = T.let(:RSD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          RUB = T.let(:RUB, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          RWF = T.let(:RWF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SAR = T.let(:SAR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SBD = T.let(:SBD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SCR = T.let(:SCR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SEK = T.let(:SEK, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SGD = T.let(:SGD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SHP = T.let(:SHP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SLE = T.let(:SLE, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SLL = T.let(:SLL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SOS = T.let(:SOS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SRD = T.let(:SRD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SSP = T.let(:SSP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          STN = T.let(:STN, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SVC = T.let(:SVC, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          SZL = T.let(:SZL, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          THB = T.let(:THB, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          TND = T.let(:TND, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          TOP = T.let(:TOP, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          TRY = T.let(:TRY, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          TTD = T.let(:TTD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          TWD = T.let(:TWD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          TZS = T.let(:TZS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          UAH = T.let(:UAH, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          UGX = T.let(:UGX, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          USD = T.let(:USD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          UYU = T.let(:UYU, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          UZS = T.let(:UZS, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          VES = T.let(:VES, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          VND = T.let(:VND, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          VUV = T.let(:VUV, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          WST = T.let(:WST, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          XAF = T.let(:XAF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          XCD = T.let(:XCD, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          XOF = T.let(:XOF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          XPF = T.let(:XPF, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          YER = T.let(:YER, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ZAR = T.let(:ZAR, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)
          ZMW = T.let(:ZMW, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol)

          sig { override.returns(T::Array[Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol]) }
          def self.values; end
        end
      end

      sig { override.returns([Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice]) }
      def self.variants; end
    end
  end
end
