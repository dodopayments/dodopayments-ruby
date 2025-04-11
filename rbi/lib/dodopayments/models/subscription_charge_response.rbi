# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeResponse < Dodopayments::Internal::Type::BaseModel
      sig { returns(String) }
      def payment_id
      end

      sig { params(_: String).returns(String) }
      def payment_id=(_)
      end

      sig { params(payment_id: String).returns(T.attached_class) }
      def self.new(payment_id:); end

      sig { override.returns({payment_id: String}) }
      def to_hash; end
    end
  end
end
