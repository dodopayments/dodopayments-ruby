# typed: strong

module Dodopayments
  module Models
    class CustomerRetrievePaymentMethodsResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::CustomerRetrievePaymentMethodsResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item
          ]
        )
      end
      attr_accessor :items

      sig do
        params(
          items:
            T::Array[
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(items:)
      end

      sig do
        override.returns(
          {
            items:
              T::Array[
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item
              ]
          }
        )
      end
      def to_hash
      end

      class Item < Dodopayments::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item,
              Dodopayments::Internal::AnyHash
            )
          end

        sig do
          returns(
            Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
          )
        end
        attr_accessor :payment_method

        sig { returns(String) }
        attr_accessor :payment_method_id

        sig do
          returns(
            T.nilable(
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card
            )
          )
        end
        attr_reader :card

        sig do
          params(
            card:
              T.nilable(
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card::OrHash
              )
          ).void
        end
        attr_writer :card

        sig { returns(T.nilable(Time)) }
        attr_accessor :last_used_at

        sig do
          returns(T.nilable(Dodopayments::PaymentMethodTypes::TaggedSymbol))
        end
        attr_accessor :payment_method_type

        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :recurring_enabled

        sig do
          params(
            payment_method:
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::OrSymbol,
            payment_method_id: String,
            card:
              T.nilable(
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card::OrHash
              ),
            last_used_at: T.nilable(Time),
            payment_method_type:
              T.nilable(Dodopayments::PaymentMethodTypes::OrSymbol),
            recurring_enabled: T.nilable(T::Boolean)
          ).returns(T.attached_class)
        end
        def self.new(
          payment_method:,
          payment_method_id:,
          card: nil,
          last_used_at: nil,
          payment_method_type: nil,
          recurring_enabled: nil
        )
        end

        sig do
          override.returns(
            {
              payment_method:
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol,
              payment_method_id: String,
              card:
                T.nilable(
                  Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card
                ),
              last_used_at: T.nilable(Time),
              payment_method_type:
                T.nilable(Dodopayments::PaymentMethodTypes::TaggedSymbol),
              recurring_enabled: T.nilable(T::Boolean)
            }
          )
        end
        def to_hash
        end

        module PaymentMethod
          extend Dodopayments::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CARD =
            T.let(
              :card,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          CARD_REDIRECT =
            T.let(
              :card_redirect,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          PAY_LATER =
            T.let(
              :pay_later,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          WALLET =
            T.let(
              :wallet,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          BANK_REDIRECT =
            T.let(
              :bank_redirect,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          BANK_TRANSFER =
            T.let(
              :bank_transfer,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          CRYPTO =
            T.let(
              :crypto,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          BANK_DEBIT =
            T.let(
              :bank_debit,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          REWARD =
            T.let(
              :reward,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          REAL_TIME_PAYMENT =
            T.let(
              :real_time_payment,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          UPI =
            T.let(
              :upi,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          VOUCHER =
            T.let(
              :voucher,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          GIFT_CARD =
            T.let(
              :gift_card,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          OPEN_BANKING =
            T.let(
              :open_banking,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )
          MOBILE_PAYMENT =
            T.let(
              :mobile_payment,
              Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::PaymentMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Card < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::Models::CustomerRetrievePaymentMethodsResponse::Item::Card,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :card_holder_name

          # ISO country code alpha2 variant
          sig { returns(T.nilable(Dodopayments::CountryCode::TaggedSymbol)) }
          attr_accessor :card_issuing_country

          sig { returns(T.nilable(String)) }
          attr_accessor :card_network

          sig { returns(T.nilable(String)) }
          attr_accessor :card_type

          sig { returns(T.nilable(String)) }
          attr_accessor :expiry_month

          sig { returns(T.nilable(String)) }
          attr_accessor :expiry_year

          sig { returns(T.nilable(String)) }
          attr_accessor :last4_digits

          sig do
            params(
              card_holder_name: T.nilable(String),
              card_issuing_country:
                T.nilable(Dodopayments::CountryCode::OrSymbol),
              card_network: T.nilable(String),
              card_type: T.nilable(String),
              expiry_month: T.nilable(String),
              expiry_year: T.nilable(String),
              last4_digits: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            card_holder_name: nil,
            # ISO country code alpha2 variant
            card_issuing_country: nil,
            card_network: nil,
            card_type: nil,
            expiry_month: nil,
            expiry_year: nil,
            last4_digits: nil
          )
          end

          sig do
            override.returns(
              {
                card_holder_name: T.nilable(String),
                card_issuing_country:
                  T.nilable(Dodopayments::CountryCode::TaggedSymbol),
                card_network: T.nilable(String),
                card_type: T.nilable(String),
                expiry_month: T.nilable(String),
                expiry_year: T.nilable(String),
                last4_digits: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
