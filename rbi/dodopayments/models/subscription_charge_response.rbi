# typed: strong

module Dodopayments
  module Models
    class SubscriptionChargeResponse < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

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
