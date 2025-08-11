# typed: strong

module Dodopayments
  module Models
    class WebhookListParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::WebhookListParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # The iterator returned from a prior invocation
      sig { returns(T.nilable(String)) }
      attr_accessor :iterator

      # Limit the number of returned items
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit

      sig do
        params(
          iterator: T.nilable(String),
          limit: T.nilable(Integer),
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The iterator returned from a prior invocation
        iterator: nil,
        # Limit the number of returned items
        limit: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            iterator: T.nilable(String),
            limit: T.nilable(Integer),
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
