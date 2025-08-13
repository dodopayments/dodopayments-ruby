# typed: strong

module Dodopayments
  module Models
    class WebhookCreateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::WebhookCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Url of the webhook
      sig { returns(String) }
      attr_accessor :url

      # Filter events to the webhook.
      #
      # Webhook event will only be sent for events in the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # Create the webhook in a disabled state.
      #
      # Default is false
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disabled

      sig do
        returns(T.nilable(T::Array[Dodopayments::WebhookEventType::OrSymbol]))
      end
      attr_reader :filter_types

      sig do
        params(
          filter_types: T::Array[Dodopayments::WebhookEventType::OrSymbol]
        ).void
      end
      attr_writer :filter_types

      # Custom headers to be passed
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :headers

      # The request's idempotency key
      sig { returns(T.nilable(String)) }
      attr_accessor :idempotency_key

      # Metadata to be passed to the webhook Defaut is {}
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      sig { returns(T.nilable(Integer)) }
      attr_accessor :rate_limit

      sig do
        params(
          url: String,
          description: T.nilable(String),
          disabled: T.nilable(T::Boolean),
          filter_types: T::Array[Dodopayments::WebhookEventType::OrSymbol],
          headers: T.nilable(T::Hash[Symbol, String]),
          idempotency_key: T.nilable(String),
          metadata: T.nilable(T::Hash[Symbol, String]),
          rate_limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Url of the webhook
        url:,
        # Filter events to the webhook.
        #
        # Webhook event will only be sent for events in the list.
        description: nil,
        # Create the webhook in a disabled state.
        #
        # Default is false
        disabled: nil,
        filter_types: nil,
        # Custom headers to be passed
        headers: nil,
        # The request's idempotency key
        idempotency_key: nil,
        # Metadata to be passed to the webhook Defaut is {}
        metadata: nil,
        rate_limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            url: String,
            description: T.nilable(String),
            disabled: T.nilable(T::Boolean),
            filter_types: T::Array[Dodopayments::WebhookEventType::OrSymbol],
            headers: T.nilable(T::Hash[Symbol, String]),
            idempotency_key: T.nilable(String),
            metadata: T.nilable(T::Hash[Symbol, String]),
            rate_limit: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
