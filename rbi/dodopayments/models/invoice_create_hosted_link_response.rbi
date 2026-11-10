# typed: strong

module Dodopayments
  module Models
    class InvoiceCreateHostedLinkResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::InvoiceCreateHostedLinkResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(Time) }
      attr_accessor :expires_at

      sig { returns(String) }
      attr_accessor :hosted_url

      sig do
        params(expires_at: Time, hosted_url: String).returns(T.attached_class)
      end
      def self.new(expires_at:, hosted_url:)
      end

      sig { override.returns({ expires_at: Time, hosted_url: String }) }
      def to_hash
      end
    end
  end
end
