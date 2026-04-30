# typed: strong

module Dodopayments
  module Models
    class AttachProductEntitlement < Dodopayments::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Dodopayments::AttachProductEntitlement,
            Dodopayments::Internal::AnyHash
          )
        end

      # ID of the entitlement to attach to the product
      sig { returns(String) }
      attr_accessor :entitlement_id

      # Request struct for attaching an entitlement to a product.
      #
      # Mirrors the `credit_entitlements` attach shape — every "attach something to a
      # product" array takes objects, not bare IDs. Uniform shape leaves room for
      # per-attachment settings later without another API break.
      sig { params(entitlement_id: String).returns(T.attached_class) }
      def self.new(
        # ID of the entitlement to attach to the product
        entitlement_id:
      )
      end

      sig { override.returns({ entitlement_id: String }) }
      def to_hash
      end
    end
  end
end
