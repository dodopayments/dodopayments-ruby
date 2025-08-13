# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::Models::SubscriptionChargeResponse,
            Dodopayments::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :payment_id

      sig { params(payment_id: String).returns(T.attached_class) }
      def self.new(payment_id:)
      end

      sig { override.returns({ payment_id: String }) }
      def to_hash
      end
    end
  end
end
