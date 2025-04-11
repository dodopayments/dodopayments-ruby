# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      sig { returns(T.nilable(Dodopayments::Models::BillingAddress)) }
      attr_reader :billing

      sig do
        params(billing: T.nilable(T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)))
          .void
      end
      attr_writer :billing

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol)) }
      def status
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol))
          .returns(T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol))
      end
      def status=(_)
      end

      sig { returns(T.nilable(String)) }
      attr_accessor :tax_id

      sig do
        params(
          billing: T.nilable(T.any(Dodopayments::Models::BillingAddress, Dodopayments::Internal::AnyHash)),
          metadata: T.nilable(T::Hash[Symbol, String]),
          status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
          tax_id: T.nilable(String),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(billing: nil, metadata: nil, status: nil, tax_id: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              billing: T.nilable(Dodopayments::Models::BillingAddress),
              metadata: T.nilable(T::Hash[Symbol, String]),
              status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
              tax_id: T.nilable(String),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
