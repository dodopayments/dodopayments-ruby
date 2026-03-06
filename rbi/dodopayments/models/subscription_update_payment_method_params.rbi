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
            Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New,
            Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing
          )
        )
      end
      attr_accessor :body

      sig do
        params(
          subscription_id: String,
          body:
            T.any(
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::OrHash,
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::OrHash
            ),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(subscription_id:, body:, request_options: {})
      end

      sig do
        override.returns(
          {
            subscription_id: String,
            body:
              T.any(
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New,
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing
              ),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Body
        extend Dodopayments::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New,
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing
            )
          end

        class New < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New,
                Dodopayments::Internal::AnyHash
              )
            end

          sig do
            returns(
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig { returns(T.nilable(String)) }
          attr_accessor :return_url

          sig do
            params(
              type:
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type::OrSymbol,
              return_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(type:, return_url: nil)
          end

          sig do
            override.returns(
              {
                type:
                  Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type::OrSymbol,
                return_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          module Type
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NEW =
              T.let(
                :new,
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::New::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Existing < Dodopayments::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing,
                Dodopayments::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :payment_method_id

          sig do
            returns(
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type::OrSymbol
            )
          end
          attr_accessor :type

          sig do
            params(
              payment_method_id: String,
              type:
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(payment_method_id:, type:)
          end

          sig do
            override.returns(
              {
                payment_method_id: String,
                type:
                  Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Type
            extend Dodopayments::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EXISTING =
              T.let(
                :existing,
                Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Existing::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Body::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
