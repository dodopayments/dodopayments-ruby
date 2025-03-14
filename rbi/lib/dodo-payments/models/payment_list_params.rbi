# typed: strong

module DodoPayments
  module Models
    class PaymentListParams < DodoPayments::BaseModel
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

      # Filter by subscription id
      sig { returns(T.nilable(String)) }
      def subscription_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def subscription_id=(_)
      end

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          status: T.nilable(Symbol),
          subscription_id: T.nilable(String),
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
        subscription_id: nil,
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
              subscription_id: T.nilable(String),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filter by status
      class Status < DodoPayments::Enum
        abstract!

        SUCCEEDED = T.let(:succeeded, T.nilable(Symbol))
        FAILED = T.let(:failed, T.nilable(Symbol))
        CANCELLED = T.let(:cancelled, T.nilable(Symbol))
        PROCESSING = T.let(:processing, T.nilable(Symbol))
        REQUIRES_CUSTOMER_ACTION = T.let(:requires_customer_action, T.nilable(Symbol))
        REQUIRES_MERCHANT_ACTION = T.let(:requires_merchant_action, T.nilable(Symbol))
        REQUIRES_PAYMENT_METHOD = T.let(:requires_payment_method, T.nilable(Symbol))
        REQUIRES_CONFIRMATION = T.let(:requires_confirmation, T.nilable(Symbol))
        REQUIRES_CAPTURE = T.let(:requires_capture, T.nilable(Symbol))
        PARTIALLY_CAPTURED = T.let(:partially_captured, T.nilable(Symbol))
        PARTIALLY_CAPTURED_AND_CAPTURABLE = T.let(:partially_captured_and_capturable, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
