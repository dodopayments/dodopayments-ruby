# typed: strong

module Dodopayments
  module Models
    class AttachAddon < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dodopayments::AttachAddon, Dodopayments::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :addon_id

      sig { returns(Integer) }
      attr_accessor :quantity

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
