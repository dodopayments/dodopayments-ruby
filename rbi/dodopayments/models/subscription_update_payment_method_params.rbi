# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdatePaymentMethodParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::SubscriptionUpdatePaymentMethodParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :subscription_id

      sig do
        returns(
          T.any(
            Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New,
            Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing
          )
        )
      end
      attr_accessor :payment_method

      sig do
        params(
          subscription_id: String,
          payment_method:
            T.any(
              Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New::OrHash,
              Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing::OrHash
            ),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(subscription_id:, payment_method:, request_options: {})
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            payment_method:
              T.any(
                Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New,
                Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing
              ),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      module PaymentMethod
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New,
              Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing
            )
          end

        class New < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::New,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(Symbol) }
          attr_accessor :type

          # List of payment methods allowed during checkout.
          #
          # Customers will **never** see payment methods that are **not** in this list.
          # However, adding a method here **does not guarantee** customers will see it.
          # Availability still depends on other factors (e.g., customer location, merchant
          # settings).
          sig do
            returns(
              T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol])
            )
          end
          attr_accessor :allowed_payment_method_types

          sig { returns(T.nilable(String)) }
          attr_accessor :return_url

          sig do
            params(
              allowed_payment_method_types:
                T.nilable(T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]),
              return_url: T.nilable(String),
              type: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # List of payment methods allowed during checkout.
            #
            # Customers will **never** see payment methods that are **not** in this list.
            # However, adding a method here **does not guarantee** customers will see it.
            # Availability still depends on other factors (e.g., customer location, merchant
            # settings).
            allowed_payment_method_types: nil,
            return_url: nil,
            type: :new
          )
          end

          sig do
            override.returns(
              {
                type: Symbol,
                allowed_payment_method_types:
                  T.nilable(
                    T::Array[Dodopayments::PaymentMethodTypes::OrSymbol]
                  ),
                return_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Existing < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Existing,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :payment_method_id

          sig { returns(Symbol) }
          attr_accessor :type

          sig do
            params(payment_method_id: String, type: Symbol).returns(
              T.attached_class
            )
          end
          def self.new(payment_method_id:, type: :existing)
          end

          sig { override.returns({ payment_method_id: String, type: Symbol }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionUpdatePaymentMethodParams::PaymentMethod::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
