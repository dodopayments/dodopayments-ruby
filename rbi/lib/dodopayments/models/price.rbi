# typed: strong

module Dodopayments
  module Models
    module Price
      extend Dodopayments::Union

      Variants =
        type_template(:out) { {fixed: T.any(Dodopayments::Models::Price::OneTimePrice, Dodopayments::Models::Price::RecurringPrice)} }

      class OneTimePrice < Dodopayments::BaseModel
        sig { returns(Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol) }
        def currency
        end

        sig do
          params(_: Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
            .returns(Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
        end
        def currency=(_)
        end

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Float) }
        def discount
        end

        sig { params(_: Float).returns(Float) }
        def discount=(_)
        end

        # The payment amount, in the smallest denomination of the currency (e.g., cents
        #   for USD). For example, to charge $1.00, pass `100`.
        #
        #   If [`pay_what_you_want`](Self::pay_what_you_want) is set to `true`, this field
        #   represents the **minimum** amount the customer must pay.
        sig { returns(Integer) }
        def price
        end

        sig { params(_: Integer).returns(Integer) }
        def price=(_)
        end

        # Indicates if purchasing power parity adjustments are applied to the price.
        #   Purchasing power parity feature is not available as of now.
        sig { returns(T::Boolean) }
        def purchasing_power_parity
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def purchasing_power_parity=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # Indicates whether the customer can pay any amount they choose. If set to `true`,
        #   the [`price`](Self::price) field is the minimum amount.
        sig { returns(T.nilable(T::Boolean)) }
        def pay_what_you_want
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def pay_what_you_want=(_)
        end

        # A suggested price for the user to pay. This value is only considered if
        #   [`pay_what_you_want`](Self::pay_what_you_want) is `true`. Otherwise, it is
        #   ignored.
        sig { returns(T.nilable(Integer)) }
        def suggested_price
        end

        sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def suggested_price=(_)
        end

        # Indicates if the price is tax inclusive.
        sig { returns(T.nilable(T::Boolean)) }
        def tax_inclusive
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def tax_inclusive=(_)
        end

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
          discount:,
          price:,
          purchasing_power_parity:,
          pay_what_you_want: nil,
          suggested_price: nil,
          tax_inclusive: nil,
          type: :one_time_price
        )
        end

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
        def to_hash
        end

        module Currency
          extend Dodopayments::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Price::OneTimePrice::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Dodopayments::Models::Price::OneTimePrice::Currency::TaggedSymbol) }

          AED = T.let(:AED, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ALL = T.let(:ALL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          AMD = T.let(:AMD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ANG = T.let(:ANG, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          AOA = T.let(:AOA, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ARS = T.let(:ARS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          AUD = T.let(:AUD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          AWG = T.let(:AWG, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          AZN = T.let(:AZN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BAM = T.let(:BAM, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BBD = T.let(:BBD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BDT = T.let(:BDT, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BGN = T.let(:BGN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BHD = T.let(:BHD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BIF = T.let(:BIF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BMD = T.let(:BMD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BND = T.let(:BND, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BOB = T.let(:BOB, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BRL = T.let(:BRL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BSD = T.let(:BSD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BWP = T.let(:BWP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BYN = T.let(:BYN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          BZD = T.let(:BZD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CAD = T.let(:CAD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CHF = T.let(:CHF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CLP = T.let(:CLP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CNY = T.let(:CNY, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          COP = T.let(:COP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CRC = T.let(:CRC, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CUP = T.let(:CUP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CVE = T.let(:CVE, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          CZK = T.let(:CZK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          DJF = T.let(:DJF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          DKK = T.let(:DKK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          DOP = T.let(:DOP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          DZD = T.let(:DZD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          EGP = T.let(:EGP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ETB = T.let(:ETB, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          EUR = T.let(:EUR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          FJD = T.let(:FJD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          FKP = T.let(:FKP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GBP = T.let(:GBP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GEL = T.let(:GEL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GHS = T.let(:GHS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GIP = T.let(:GIP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GMD = T.let(:GMD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GNF = T.let(:GNF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GTQ = T.let(:GTQ, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          GYD = T.let(:GYD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          HKD = T.let(:HKD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          HNL = T.let(:HNL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          HRK = T.let(:HRK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          HTG = T.let(:HTG, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          HUF = T.let(:HUF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          IDR = T.let(:IDR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ILS = T.let(:ILS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          INR = T.let(:INR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          IQD = T.let(:IQD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          JMD = T.let(:JMD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          JOD = T.let(:JOD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          JPY = T.let(:JPY, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KES = T.let(:KES, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KGS = T.let(:KGS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KHR = T.let(:KHR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KMF = T.let(:KMF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KRW = T.let(:KRW, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KWD = T.let(:KWD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KYD = T.let(:KYD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          KZT = T.let(:KZT, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          LAK = T.let(:LAK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          LBP = T.let(:LBP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          LKR = T.let(:LKR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          LRD = T.let(:LRD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          LSL = T.let(:LSL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          LYD = T.let(:LYD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MAD = T.let(:MAD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MDL = T.let(:MDL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MGA = T.let(:MGA, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MKD = T.let(:MKD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MMK = T.let(:MMK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MNT = T.let(:MNT, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MOP = T.let(:MOP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MRU = T.let(:MRU, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MUR = T.let(:MUR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MVR = T.let(:MVR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MWK = T.let(:MWK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MXN = T.let(:MXN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MYR = T.let(:MYR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          MZN = T.let(:MZN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          NAD = T.let(:NAD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          NGN = T.let(:NGN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          NIO = T.let(:NIO, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          NOK = T.let(:NOK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          NPR = T.let(:NPR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          NZD = T.let(:NZD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          OMR = T.let(:OMR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PAB = T.let(:PAB, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PEN = T.let(:PEN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PGK = T.let(:PGK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PHP = T.let(:PHP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PKR = T.let(:PKR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PLN = T.let(:PLN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          PYG = T.let(:PYG, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          QAR = T.let(:QAR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          RON = T.let(:RON, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          RSD = T.let(:RSD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          RUB = T.let(:RUB, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          RWF = T.let(:RWF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SAR = T.let(:SAR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SBD = T.let(:SBD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SCR = T.let(:SCR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SEK = T.let(:SEK, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SGD = T.let(:SGD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SHP = T.let(:SHP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SLE = T.let(:SLE, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SLL = T.let(:SLL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SOS = T.let(:SOS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SRD = T.let(:SRD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SSP = T.let(:SSP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          STN = T.let(:STN, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SVC = T.let(:SVC, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          SZL = T.let(:SZL, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          THB = T.let(:THB, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          TND = T.let(:TND, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          TOP = T.let(:TOP, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          TRY = T.let(:TRY, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          TTD = T.let(:TTD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          TWD = T.let(:TWD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          TZS = T.let(:TZS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          UAH = T.let(:UAH, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          UGX = T.let(:UGX, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          USD = T.let(:USD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          UYU = T.let(:UYU, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          UZS = T.let(:UZS, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          VES = T.let(:VES, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          VND = T.let(:VND, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          VUV = T.let(:VUV, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          WST = T.let(:WST, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          XAF = T.let(:XAF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          XCD = T.let(:XCD, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          XOF = T.let(:XOF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          XPF = T.let(:XPF, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          YER = T.let(:YER, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ZAR = T.let(:ZAR, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
          ZMW = T.let(:ZMW, Dodopayments::Models::Price::OneTimePrice::Currency::OrSymbol)
        end
      end

      class RecurringPrice < Dodopayments::BaseModel
        sig { returns(Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol) }
        def currency
        end

        sig do
          params(_: Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
            .returns(Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
        end
        def currency=(_)
        end

        # Discount applied to the price, represented as a percentage (0 to 100).
        sig { returns(Float) }
        def discount
        end

        sig { params(_: Float).returns(Float) }
        def discount=(_)
        end

        # Number of units for the payment frequency. For example, a value of `1` with a
        #   `payment_frequency_interval` of `month` represents monthly payments.
        sig { returns(Integer) }
        def payment_frequency_count
        end

        sig { params(_: Integer).returns(Integer) }
        def payment_frequency_count=(_)
        end

        sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
        def payment_frequency_interval
        end

        sig do
          params(_: Dodopayments::Models::TimeInterval::OrSymbol)
            .returns(Dodopayments::Models::TimeInterval::OrSymbol)
        end
        def payment_frequency_interval=(_)
        end

        # The payment amount. Represented in the lowest denomination of the currency
        #   (e.g., cents for USD). For example, to charge $1.00, pass `100`.
        sig { returns(Integer) }
        def price
        end

        sig { params(_: Integer).returns(Integer) }
        def price=(_)
        end

        # Indicates if purchasing power parity adjustments are applied to the price.
        #   Purchasing power parity feature is not available as of now
        sig { returns(T::Boolean) }
        def purchasing_power_parity
        end

        sig { params(_: T::Boolean).returns(T::Boolean) }
        def purchasing_power_parity=(_)
        end

        # Number of units for the subscription period. For example, a value of `12` with a
        #   `subscription_period_interval` of `month` represents a one-year subscription.
        sig { returns(Integer) }
        def subscription_period_count
        end

        sig { params(_: Integer).returns(Integer) }
        def subscription_period_count=(_)
        end

        sig { returns(Dodopayments::Models::TimeInterval::OrSymbol) }
        def subscription_period_interval
        end

        sig do
          params(_: Dodopayments::Models::TimeInterval::OrSymbol)
            .returns(Dodopayments::Models::TimeInterval::OrSymbol)
        end
        def subscription_period_interval=(_)
        end

        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        # Indicates if the price is tax inclusive
        sig { returns(T.nilable(T::Boolean)) }
        def tax_inclusive
        end

        sig { params(_: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def tax_inclusive=(_)
        end

        # Number of days for the trial period. A value of `0` indicates no trial period.
        sig { returns(T.nilable(Integer)) }
        def trial_period_days
        end

        sig { params(_: Integer).returns(Integer) }
        def trial_period_days=(_)
        end

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
          discount:,
          payment_frequency_count:,
          payment_frequency_interval:,
          price:,
          purchasing_power_parity:,
          subscription_period_count:,
          subscription_period_interval:,
          tax_inclusive: nil,
          trial_period_days: nil,
          type: :recurring_price
        )
        end

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
        def to_hash
        end

        module Currency
          extend Dodopayments::Enum

          TaggedSymbol = T.type_alias { T.all(Symbol, Dodopayments::Models::Price::RecurringPrice::Currency) }
          OrSymbol =
            T.type_alias { T.any(Symbol, Dodopayments::Models::Price::RecurringPrice::Currency::TaggedSymbol) }

          AED = T.let(:AED, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ALL = T.let(:ALL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          AMD = T.let(:AMD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ANG = T.let(:ANG, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          AOA = T.let(:AOA, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ARS = T.let(:ARS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          AUD = T.let(:AUD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          AWG = T.let(:AWG, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          AZN = T.let(:AZN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BAM = T.let(:BAM, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BBD = T.let(:BBD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BDT = T.let(:BDT, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BGN = T.let(:BGN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BHD = T.let(:BHD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BIF = T.let(:BIF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BMD = T.let(:BMD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BND = T.let(:BND, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BOB = T.let(:BOB, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BRL = T.let(:BRL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BSD = T.let(:BSD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BWP = T.let(:BWP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BYN = T.let(:BYN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          BZD = T.let(:BZD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CAD = T.let(:CAD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CHF = T.let(:CHF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CLP = T.let(:CLP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CNY = T.let(:CNY, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          COP = T.let(:COP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CRC = T.let(:CRC, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CUP = T.let(:CUP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CVE = T.let(:CVE, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          CZK = T.let(:CZK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          DJF = T.let(:DJF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          DKK = T.let(:DKK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          DOP = T.let(:DOP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          DZD = T.let(:DZD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          EGP = T.let(:EGP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ETB = T.let(:ETB, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          EUR = T.let(:EUR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          FJD = T.let(:FJD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          FKP = T.let(:FKP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GBP = T.let(:GBP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GEL = T.let(:GEL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GHS = T.let(:GHS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GIP = T.let(:GIP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GMD = T.let(:GMD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GNF = T.let(:GNF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GTQ = T.let(:GTQ, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          GYD = T.let(:GYD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          HKD = T.let(:HKD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          HNL = T.let(:HNL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          HRK = T.let(:HRK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          HTG = T.let(:HTG, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          HUF = T.let(:HUF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          IDR = T.let(:IDR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ILS = T.let(:ILS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          INR = T.let(:INR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          IQD = T.let(:IQD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          JMD = T.let(:JMD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          JOD = T.let(:JOD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          JPY = T.let(:JPY, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KES = T.let(:KES, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KGS = T.let(:KGS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KHR = T.let(:KHR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KMF = T.let(:KMF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KRW = T.let(:KRW, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KWD = T.let(:KWD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KYD = T.let(:KYD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          KZT = T.let(:KZT, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          LAK = T.let(:LAK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          LBP = T.let(:LBP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          LKR = T.let(:LKR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          LRD = T.let(:LRD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          LSL = T.let(:LSL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          LYD = T.let(:LYD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MAD = T.let(:MAD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MDL = T.let(:MDL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MGA = T.let(:MGA, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MKD = T.let(:MKD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MMK = T.let(:MMK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MNT = T.let(:MNT, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MOP = T.let(:MOP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MRU = T.let(:MRU, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MUR = T.let(:MUR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MVR = T.let(:MVR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MWK = T.let(:MWK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MXN = T.let(:MXN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MYR = T.let(:MYR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          MZN = T.let(:MZN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          NAD = T.let(:NAD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          NGN = T.let(:NGN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          NIO = T.let(:NIO, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          NOK = T.let(:NOK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          NPR = T.let(:NPR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          NZD = T.let(:NZD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          OMR = T.let(:OMR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PAB = T.let(:PAB, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PEN = T.let(:PEN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PGK = T.let(:PGK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PHP = T.let(:PHP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PKR = T.let(:PKR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PLN = T.let(:PLN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          PYG = T.let(:PYG, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          QAR = T.let(:QAR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          RON = T.let(:RON, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          RSD = T.let(:RSD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          RUB = T.let(:RUB, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          RWF = T.let(:RWF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SAR = T.let(:SAR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SBD = T.let(:SBD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SCR = T.let(:SCR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SEK = T.let(:SEK, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SGD = T.let(:SGD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SHP = T.let(:SHP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SLE = T.let(:SLE, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SLL = T.let(:SLL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SOS = T.let(:SOS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SRD = T.let(:SRD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SSP = T.let(:SSP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          STN = T.let(:STN, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SVC = T.let(:SVC, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          SZL = T.let(:SZL, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          THB = T.let(:THB, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          TND = T.let(:TND, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          TOP = T.let(:TOP, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          TRY = T.let(:TRY, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          TTD = T.let(:TTD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          TWD = T.let(:TWD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          TZS = T.let(:TZS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          UAH = T.let(:UAH, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          UGX = T.let(:UGX, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          USD = T.let(:USD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          UYU = T.let(:UYU, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          UZS = T.let(:UZS, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          VES = T.let(:VES, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          VND = T.let(:VND, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          VUV = T.let(:VUV, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          WST = T.let(:WST, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          XAF = T.let(:XAF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          XCD = T.let(:XCD, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          XOF = T.let(:XOF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          XPF = T.let(:XPF, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          YER = T.let(:YER, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ZAR = T.let(:ZAR, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
          ZMW = T.let(:ZMW, Dodopayments::Models::Price::RecurringPrice::Currency::OrSymbol)
        end
      end
    end
  end
end
