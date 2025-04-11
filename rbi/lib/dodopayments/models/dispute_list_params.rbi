# typed: strong

module Dodopayments
  module Models
    class DisputeListParams < Dodopayments::BaseModel
      extend Dodopayments::Type::RequestParameters::Converter
      include Dodopayments::RequestParameters

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
      sig { returns(T.nilable(Dodopayments::Models::DisputeStage::OrSymbol)) }
      def dispute_stage
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::DisputeStage::OrSymbol))
          .returns(T.nilable(Dodopayments::Models::DisputeStage::OrSymbol))
      end
      def dispute_stage=(_)
      end

      # Filter by dispute status
      sig { returns(T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol)) }
      def dispute_status
      end

      sig do
        params(_: T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol))
          .returns(T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol))
      end
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
          dispute_stage: T.nilable(Dodopayments::Models::DisputeStage::OrSymbol),
          dispute_status: T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Util::AnyHash)
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
              dispute_stage: T.nilable(Dodopayments::Models::DisputeStage::OrSymbol),
              dispute_status: T.nilable(Dodopayments::Models::DisputeStatus::OrSymbol),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
