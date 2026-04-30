# frozen_string_literal: true

module Dodopayments
  module Models
    class AttachProductEntitlement < Dodopayments::Internal::Type::BaseModel
      # @!attribute entitlement_id
      #   ID of the entitlement to attach to the product
      #
      #   @return [String]
      required :entitlement_id, String

      # @!method initialize(entitlement_id:)
      #   Request struct for attaching an entitlement to a product.
      #
      #   Mirrors the `credit_entitlements` attach shape — every "attach something to a
      #   product" array takes objects, not bare IDs. Uniform shape leaves room for
      #   per-attachment settings later without another API break.
      #
      #   @param entitlement_id [String] ID of the entitlement to attach to the product
    end
  end
end
