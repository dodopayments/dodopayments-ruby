# typed: strong

module Dodopayments
  module Models
    class SubscriptionUpdateParams < Dodopayments::BaseModel
      extend Dodopayments::RequestParameters::Converter
      include Dodopayments::RequestParameters

      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata
      end

      sig { params(_: T.nilable(T::Hash[Symbol, String])).returns(T.nilable(T::Hash[Symbol, String])) }
      def metadata=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status=(_)
      end

      sig do
        params(
          metadata: T.nilable(T::Hash[Symbol, String]),
          status: T.nilable(Symbol),
          request_options: T.any(Dodopayments::RequestOptions, T::Hash[Symbol, T.anything])
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
              status: T.nilable(Symbol),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
