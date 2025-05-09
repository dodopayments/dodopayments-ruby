# typed: strong

module Dodopayments
  module Models
    class AddonCartResponseItem < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, Dodopayments::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :addon_id

      sig { returns(Integer) }
      attr_accessor :quantity

      # Response struct representing subscription details
      sig do
        params(addon_id: String, quantity: Integer).returns(T.attached_class)
      end
      def self.new(addon_id:, quantity:)
      end

      sig { override.returns({ addon_id: String, quantity: Integer }) }
      def to_hash
      end
    end
  end
end
