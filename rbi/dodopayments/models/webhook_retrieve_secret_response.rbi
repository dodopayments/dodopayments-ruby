# typed: strong

module Dodopayments
  module Models
    class WebhookRetrieveSecretResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::WebhookRetrieveSecretResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :secret

      sig { params(secret: String).returns(T.attached_class) }
      def self.new(secret:)
      end

      sig { override.returns({ secret: String }) }
      def to_hash
      end
    end
  end
end
