# typed: strong

module Dodopayments
  module Models
    class CustomerRetrievePaymentMethodsParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerRetrievePaymentMethodsParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :customer_id

      # ISO country code alpha2 variant
      sig { returns(T.nilable(Dodopayments::CountryCode::OrSymbol)) }
      attr_reader :billing_country

      sig { params(billing_country: Dodopayments::CountryCode::OrSymbol).void }
      attr_writer :billing_country

      sig { returns(T.nilable(Dodopayments::Currency::OrSymbol)) }
      attr_reader :currency

      sig { params(currency: Dodopayments::Currency::OrSymbol).void }
      attr_writer :currency

      sig do
        params(
          customer_id: String,
          billing_country: Dodopayments::CountryCode::OrSymbol,
          currency: Dodopayments::Currency::OrSymbol,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        customer_id:,
        # ISO country code alpha2 variant
        billing_country: nil,
        currency: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_id: String,
            billing_country: Dodopayments::CountryCode::OrSymbol,
            currency: Dodopayments::Currency::OrSymbol,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
