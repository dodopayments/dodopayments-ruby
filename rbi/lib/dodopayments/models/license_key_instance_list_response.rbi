# typed: strong

module Dodopayments
  module Models
    class LicenseKeyInstanceListResponseItem < Dodopayments::BaseModel
      sig { returns(T::Array[Dodopayments::Models::LicenseKeyInstance]) }
      def items
      end

      sig do
        params(_: T::Array[Dodopayments::Models::LicenseKeyInstance])
          .returns(T::Array[Dodopayments::Models::LicenseKeyInstance])
      end
      def items=(_)
      end

      sig { params(items: T::Array[Dodopayments::Models::LicenseKeyInstance]).returns(T.attached_class) }
      def self.new(items:)
      end

      sig { override.returns({items: T::Array[Dodopayments::Models::LicenseKeyInstance]}) }
      def to_hash
      end
    end

    LicenseKeyInstanceListResponse = T.type_alias { T::Array[Dodopayments::Models::LicenseKeyInstanceListResponseItem] }
  end
end
