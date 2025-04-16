# typed: strong

module Dodopayments
  module Models
    class WebhookEventListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_gte

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      attr_accessor :created_at_lte

      # Min : 1, Max : 100, default 10
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      # Get events history of a specific object like payment/subscription/refund/dispute
      sig { returns(T.nilable(String)) }
      attr_accessor :object_id_

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_accessor :page_size

      sig do
        params(
          created_at_gte: T.nilable(Time),
          created_at_lte: T.nilable(Time),
          limit: T.nilable(Integer),
          object_id_: T.nilable(String),
          page_number: T.nilable(Integer),
          page_size: T.nilable(Integer),
          request_options: T.any(Dodopayments::RequestOptions, Dodopayments::Internal::AnyHash)
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
      ); end
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
              request_options: Dodopayments::RequestOptions
            }
          )
      end
      def to_hash; end
    end
  end
end
