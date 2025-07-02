# typed: strong

module Dodopayments
  module Models
    class WebhookEventListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::WebhookEventListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Get events after this created time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_gte

      sig { params(created_at_gte: Time).void }
      attr_writer :created_at_gte

      # Get events created before this time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at_lte

      sig { params(created_at_lte: Time).void }
      attr_writer :created_at_lte

      # Min : 1, Max : 100, default 10
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Get events history of a specific object like payment/subscription/refund/dispute
      sig { returns(T.nilable(String)) }
      attr_reader :object_id_

      sig { params(object_id_: String).void }
      attr_writer :object_id_

      # Page number default is 0
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size default is 10 max is 100
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Filter by webhook event id
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_id

      sig { params(webhook_event_id: String).void }
      attr_writer :webhook_event_id

      # Filter by webhook destination
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_id

      sig { params(webhook_id: String).void }
      attr_writer :webhook_id

      sig do
        params(
          created_at_gte: Time,
          created_at_lte: Time,
          limit: Integer,
          object_id_: String,
          page_number: Integer,
          page_size: Integer,
          webhook_event_id: String,
          webhook_id: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Get events after this created time
        created_at_gte: nil,
        # Get events created before this time
        created_at_lte: nil,
        # Min : 1, Max : 100, default 10
        limit: nil,
        # Get events history of a specific object like payment/subscription/refund/dispute
        object_id_: nil,
        # Page number default is 0
        page_number: nil,
        # Page size default is 10 max is 100
        page_size: nil,
        # Filter by webhook event id
        webhook_event_id: nil,
        # Filter by webhook destination
        webhook_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_at_gte: Time,
            created_at_lte: Time,
            limit: Integer,
            object_id_: String,
            page_number: Integer,
            page_size: Integer,
            webhook_event_id: String,
            webhook_id: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
