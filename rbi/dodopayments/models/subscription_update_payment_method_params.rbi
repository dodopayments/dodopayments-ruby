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

      sig do
        returns(
          Dodopayments::SubscriptionUpdatePaymentMethodParams::Type::OrSymbol
        )
      end
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_accessor :return_url

      sig { returns(String) }
      attr_accessor :payment_method_id

      sig do
        params(
          type:
            Dodopayments::SubscriptionUpdatePaymentMethodParams::Type::OrSymbol,
          payment_method_id: String,
          return_url: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        type:,
        payment_method_id:,
        return_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type:
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Type::OrSymbol,
            return_url: T.nilable(String),
            payment_method_id: String,
            request_options: Dodopayments::RequestOptions
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
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXISTING =
          T.let(
            :existing,
            Dodopayments::SubscriptionUpdatePaymentMethodParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Dodopayments::SubscriptionUpdatePaymentMethodParams::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
