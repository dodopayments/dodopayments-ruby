# typed: strong

module Dodopayments
  module Models
    class LicenseKeyListResponseItem < Dodopayments::BaseModel
      sig { returns(T::Array[Dodopayments::Models::LicenseKey]) }
      def items
      end

      sig { params(_: T::Array[Dodopayments::Models::LicenseKey]).returns(T::Array[Dodopayments::Models::LicenseKey]) }
      def items=(_)
      end

      sig { params(items: T::Array[Dodopayments::Models::LicenseKey]).returns(T.attached_class) }
      def self.new(items:)
      end

      sig { override.returns({items: T::Array[Dodopayments::Models::LicenseKey]}) }
      def to_hash
      end
    end

    LicenseKeyListResponse = T.type_alias { T::Array[Dodopayments::Models::LicenseKeyListResponseItem] }
  end
end
