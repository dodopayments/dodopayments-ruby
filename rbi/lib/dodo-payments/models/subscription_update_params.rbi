# typed: strong

module DodoPayments
  module Models
    class SubscriptionUpdateParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

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
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
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
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Status < DodoPayments::Enum
        abstract!

        PENDING = T.let(:pending, T.nilable(Symbol))
        ACTIVE = T.let(:active, T.nilable(Symbol))
        ON_HOLD = T.let(:on_hold, T.nilable(Symbol))
        PAUSED = T.let(:paused, T.nilable(Symbol))
        CANCELLED = T.let(:cancelled, T.nilable(Symbol))
        FAILED = T.let(:failed, T.nilable(Symbol))
        EXPIRED = T.let(:expired, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
