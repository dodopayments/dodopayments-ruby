# typed: strong

module Dodopayments
  module Models
    class WebhookUpdateParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::WebhookUpdateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # Description of the webhook
      sig { returns(T.nilable(String)) }
      attr_accessor :description

      # To Disable the endpoint, set it to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disabled

      # Filter events to the endpoint.
      #
      # Webhook event will only be sent for events in the list.
      sig do
        returns(T.nilable(T::Array[Dodopayments::WebhookEventType::OrSymbol]))
      end
      attr_accessor :filter_types

      # Metadata
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_accessor :metadata

      # Rate limit
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rate_limit

      # Url endpoint
      sig { returns(T.nilable(String)) }
      attr_accessor :url

      sig do
        params(
          description: T.nilable(String),
          disabled: T.nilable(T::Boolean),
          filter_types:
            T.nilable(T::Array[Dodopayments::WebhookEventType::OrSymbol]),
          metadata: T.nilable(T::Hash[Symbol, String]),
          rate_limit: T.nilable(Integer),
          url: T.nilable(String),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Description of the webhook
        description: nil,
        # To Disable the endpoint, set it to true.
        disabled: nil,
        # Filter events to the endpoint.
        #
        # Webhook event will only be sent for events in the list.
        filter_types: nil,
        # Metadata
        metadata: nil,
        # Rate limit
        rate_limit: nil,
        # Url endpoint
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            description: T.nilable(String),
            disabled: T.nilable(T::Boolean),
            filter_types:
              T.nilable(T::Array[Dodopayments::WebhookEventType::OrSymbol]),
            metadata: T.nilable(T::Hash[Symbol, String]),
            rate_limit: T.nilable(Integer),
            url: T.nilable(String),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
