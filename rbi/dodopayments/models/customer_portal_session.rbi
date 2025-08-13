# typed: strong

module Dodopayments
  module Models
    class CustomerPortalSession < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::CustomerPortalSession,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :link

      sig { params(link: String).returns(T.attached_class) }
      def self.new(link:)
      end

      sig { override.returns({ link: String }) }
      def to_hash
      end
    end
  end
end
