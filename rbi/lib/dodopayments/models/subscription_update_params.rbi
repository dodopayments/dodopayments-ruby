# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

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

      sig do
        params(
          metadata: T.nilable(T::Hash[Symbol, String]),
          status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(metadata: nil, status: nil, request_options: {})
      end

      sig do
        override
          .returns(
            {
              metadata: T.nilable(T::Hash[Symbol, String]),
              status: T.nilable(Dodopayments::Models::SubscriptionStatus::OrSymbol),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
