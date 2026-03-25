# typed: strong

module Dodopayments
  module Models
    class YourWebhookURLCreateParams < Dodopayments::Models::WebhookPayload
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::YourWebhookURLCreateParams,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :webhook_id

      sig { returns(String) }
      attr_accessor :webhook_signature

      sig { returns(String) }
      attr_accessor :webhook_timestamp

      sig do
        params(
          webhook_id: String,
          webhook_signature: String,
          webhook_timestamp: String,
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        webhook_id:,
        webhook_signature:,
        webhook_timestamp:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            webhook_id: String,
            webhook_signature: String,
            webhook_timestamp: String,
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
