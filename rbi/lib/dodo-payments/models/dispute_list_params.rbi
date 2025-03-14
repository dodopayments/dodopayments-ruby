# typed: strong

module DodoPayments
  module Models
    class DisputeListParams < DodoPayments::BaseModel
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

      # Filter by customer_id
      sig { returns(T.nilable(String)) }
      def customer_id
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def customer_id=(_)
      end

      # Filter by dispute stage
      sig { returns(T.nilable(Symbol)) }
      def dispute_stage
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def dispute_stage=(_)
      end

      # Filter by dispute status
      sig { returns(T.nilable(Symbol)) }
      def dispute_status
      end

      sig { params(_: T.nilable(Symbol)).returns(T.nilable(Symbol)) }
      def dispute_status=(_)
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

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          customer_id: T.nilable(String),
          dispute_stage: T.nilable(Symbol),
          dispute_status: T.nilable(Symbol),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at_gte: nil,
        created_at_lte: nil,
        customer_id: nil,
        dispute_stage: nil,
        dispute_status: nil,
        page_number: nil,
        page_size: nil,
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
              dispute_stage: T.nilable(Symbol),
              dispute_status: T.nilable(Symbol),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end

      # Filter by dispute stage
      class DisputeStage < DodoPayments::Enum
        abstract!

        PRE_DISPUTE = T.let(:pre_dispute, T.nilable(Symbol))
        DISPUTE = T.let(:dispute, T.nilable(Symbol))
        PRE_ARBITRATION = T.let(:pre_arbitration, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      # Filter by dispute status
      class DisputeStatus < DodoPayments::Enum
        abstract!

        DISPUTE_OPENED = T.let(:dispute_opened, T.nilable(Symbol))
        DISPUTE_EXPIRED = T.let(:dispute_expired, T.nilable(Symbol))
        DISPUTE_ACCEPTED = T.let(:dispute_accepted, T.nilable(Symbol))
        DISPUTE_CANCELLED = T.let(:dispute_cancelled, T.nilable(Symbol))
        DISPUTE_CHALLENGED = T.let(:dispute_challenged, T.nilable(Symbol))
        DISPUTE_WON = T.let(:dispute_won, T.nilable(Symbol))
        DISPUTE_LOST = T.let(:dispute_lost, T.nilable(Symbol))

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end
    end
  end
end
