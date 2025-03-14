# typed: strong

module DodoPayments
  module Models
    class WebhookEventListParams < DodoPayments::BaseModel
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

      # Min : 1, Max : 100, default 10
      sig { returns(T.nilable(Integer)) }
      def limit
      end

      sig { params(_: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_)
      end

      # Get events history of a specific object like payment/subscription/refund/dispute
      sig { returns(T.nilable(String)) }
      def object_id_
      end

      sig { params(_: T.nilable(String)).returns(T.nilable(String)) }
      def object_id_=(_)
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
          limit: T.nilable(Integer),
          object_id_: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(DodoPayments::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(
        created_at_gte: nil,
        created_at_lte: nil,
        limit: nil,
        object_id_: nil,
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
              limit: T.nilable(Integer),
              object_id_: T.nilable(String),
              page_number: T.nilable(Integer),
              page_size: T.nilable(Integer),
              request_options: DodoPayments::RequestOptions
            }
          )
      end
      def to_hash
      end
    end
  end
end
