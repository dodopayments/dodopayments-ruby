# typed: strong

module Dodopayments
  module Models
    class WebhookDetails < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::WebhookDetails, Dodopayments::Internal::AnyHash)
        end

      # The webhook's ID.
      sig { returns(String) }
      attr_accessor :id

      # Created at timestamp
      sig { returns(String) }
      attr_accessor :created_at

      # An example webhook name.
      sig { returns(String) }
      attr_accessor :description

      # Metadata of the webhook
      sig { returns(T::Hash[Symbol, String]) }
      attr_accessor :metadata

      # Updated at timestamp
      sig { returns(String) }
      attr_accessor :updated_at

      # Url endpoint of the webhook
      sig { returns(String) }
      attr_accessor :url

      # Status of the webhook.
      #
      # If true, events are not sent
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :disabled

      # Filter events to the webhook.
      #
      # Webhook event will only be sent for events in the list.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :filter_types

      # Configured rate limit
      sig { returns(T.nilable(Integer)) }
      attr_accessor :rate_limit

      sig do
        params(
          id: String,
          created_at: String,
          description: String,
          metadata: T::Hash[Symbol, String],
          updated_at: String,
          url: String,
          disabled: T.nilable(T::Boolean),
          filter_types: T.nilable(T::Array[String]),
          rate_limit: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # The webhook's ID.
        id:,
        # Created at timestamp
        created_at:,
        # An example webhook name.
        description:,
        # Metadata of the webhook
        metadata:,
        # Updated at timestamp
        updated_at:,
        # Url endpoint of the webhook
        url:,
        # Status of the webhook.
        #
        # If true, events are not sent
        disabled: nil,
        # Filter events to the webhook.
        #
        # Webhook event will only be sent for events in the list.
        filter_types: nil,
        # Configured rate limit
        rate_limit: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            description: String,
            metadata: T::Hash[Symbol, String],
            updated_at: String,
            url: String,
            disabled: T.nilable(T::Boolean),
            filter_types: T.nilable(T::Array[String]),
            rate_limit: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
