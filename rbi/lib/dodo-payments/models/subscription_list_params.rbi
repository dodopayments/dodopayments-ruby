# typed: strong

module DodoPayments
  module Models
    class SubscriptionListParams < DodoPayments::BaseModel
      extend DodoPayments::RequestParameters::Converter
      include DodoPayments::RequestParameters

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      def created_at_gte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at_gte=(_)
      end

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      def created_at_lte
      end

      sig { params(_: T.nilable(Time)).returns(T.nilable(Time)) }
      def created_at_lte=(_)
      end

      # Filter by customer id
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      def page_number
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def page_number=(_)
      end

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      def page_size
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def page_size=(_)
      end

      # Filter by status
      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def status=(_)
      end

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Symbol),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at_gte: nil,
        created_at_lte: nil,
        customer_id: nil,
        page_number: nil,
        page_size: nil,
        status: nil,
        request_options: {}
      )
      end

      sig do
        override
          .returns(
            {
              created_at_gte: T.nilable(Time),
              created_at_lte: T.nilable(Time),
              customer_id: T.nilable(String),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              status: T.nilable(Symbol),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filter by status
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
