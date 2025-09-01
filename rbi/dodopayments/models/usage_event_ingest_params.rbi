# typed: strong

module Dodopayments
  module Models
    class UsageEventIngestParams < Dodopayments::Internal::Type::BaseModel
      extend Dodopayments::Internal::Type::RequestParameters::Converter
      include Dodopayments::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::UsageEventIngestParams,
            Dodopayments::Internal::AnyHash
          )
        end

      # List of events to be pushed
      sig { returns(T::Array[Dodopayments::EventInput]) }
      attr_accessor :events

      sig do
        params(
          events: T::Array[Dodopayments::EventInput::OrHash],
          request_options: Dodopayments::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # List of events to be pushed
        events:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            events: T::Array[Dodopayments::EventInput],
            request_options: Dodopayments::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
