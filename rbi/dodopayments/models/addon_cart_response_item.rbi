# typed: strong

module Dodopayments
  module Models
    class AddonCartResponseItem < Dodopayments::Internal::Type::BaseModel
      sig { returns(String) }
      attr_accessor :addon_id

      sig { returns(Integer) }
      attr_accessor :quantity

      # Response struct representing subscription details
      sig { params(addon_id: String, quantity: Integer).returns(T.attached_class) }
      def self.new(addon_id:, quantity:); end

      sig { override.returns({addon_id: String, quantity: Integer}) }
      def to_hash; end
    end
  end
end
